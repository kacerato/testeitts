package com.android.tools.r8.retrace;

public final class InvalidMappingFileException extends RuntimeException {
    public InvalidMappingFileException(Throwable th2) {
        super(th2);
    }

    @Override
    public String getMessage() {
        return "Unable to parse mapping file";
    }
}
