package org.openjdk.javax.lang.model;

public class UnknownEntityException extends RuntimeException {
    private static final long serialVersionUID = 269;

    public UnknownEntityException(String str) {
        super(str);
    }
}
