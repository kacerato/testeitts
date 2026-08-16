package com.android.tools.r8;

@FunctionalInterface
public interface MapIdProvider {
    String get(MapIdEnvironment mapIdEnvironment);
}
