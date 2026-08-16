package com.ardor3d.input;

public class KeyNotFoundException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public KeyNotFoundException(int i10) {
        super("No Key enum value found for code: " + i10);
    }
}
