package com.jme3.export;

public interface SavableClassFilter {
    public static final SavableClassFilter ACCEPT_ALL = new SavableClassFilter() {
        @Override
        public boolean isAllowed(String str) {
            return true;
        }
    };

    boolean isAllowed(String str);
}
