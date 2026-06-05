package com.packt.ahmeric.bookstore.config;

import java.util.Collections;
import java.util.Map;
import org.springframework.core.convert.converter.Converter;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.server.resource.authentication.JwtGrantedAuthoritiesConverter;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.lang.NonNull;
import org.springframework.lang.Nullable;

public class KeycloakRoleConverter implements Converter<Jwt, AbstractAuthenticationToken> {

    @Override
    public AbstractAuthenticationToken convert(@NonNull Jwt jwt) {
        // Default converter for scopes/authorities
        JwtGrantedAuthoritiesConverter defaultAuthoritiesConverter = new JwtGrantedAuthoritiesConverter();
        Collection<GrantedAuthority> defaultAuthorities = defaultAuthoritiesConverter.convert(jwt);

        // Extract realm_access roles and map them to GrantedAuthority objects
        Collection<GrantedAuthority> realmAccessRoles = extractRealmAccessRoles(jwt);

        // Combine authorities
        Set<GrantedAuthority> combinedAuthorities = new HashSet<>();
        combinedAuthorities.addAll(defaultAuthorities);
        combinedAuthorities.addAll(realmAccessRoles);

        return new AbstractAuthenticationToken(combinedAuthorities) {
            @Override
            @Nullable
            public Object getCredentials() {
                return null;
            }

            @Override
            public Object getPrincipal() {
                return jwt.getSubject();
            }
        };
    }

    public static List<GrantedAuthority> extractRealmAccessRoles(Jwt jwt) {
        Map<String, Object> realmAccess = jwt.getClaimAsMap("realm_access");
        if (realmAccess == null) {
            return Collections.emptyList();
        }

        Object rolesObject = realmAccess.get("roles");
        if (!(rolesObject instanceof List<?>)) {
            return Collections.emptyList();
        }

        List<?> roles = (List<?>) rolesObject;
        return roles.stream()
                .filter(String.class::isInstance)
                .map(String.class::cast)
                .map(roleName -> new SimpleGrantedAuthority("ROLE_" + roleName.toUpperCase()))
                .collect(Collectors.toList());
    }
}

