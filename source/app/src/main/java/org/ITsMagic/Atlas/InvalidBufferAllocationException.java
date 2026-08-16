package org.ITsMagic.Atlas;

public class InvalidBufferAllocationException extends RuntimeException {
    public InvalidBufferAllocationException() {
    }

    public InvalidBufferAllocationException(String message) {
        super(message);
    }

    public InvalidBufferAllocationException(String message, Throwable cause) {
        super(message, cause);
    }

    public InvalidBufferAllocationException(Throwable cause) {
        super(cause);
    }

    public InvalidBufferAllocationException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
