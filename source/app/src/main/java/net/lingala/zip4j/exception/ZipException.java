package net.lingala.zip4j.exception;

import java.io.IOException;

public class ZipException extends IOException {
    private static final long serialVersionUID = 1;
    private a type;

    public enum a {
        WRONG_PASSWORD,
        TASK_CANCELLED_EXCEPTION,
        CHECKSUM_MISMATCH,
        UNKNOWN_COMPRESSION_METHOD,
        FILE_NOT_FOUND,
        UNSUPPORTED_ENCRYPTION,
        UNKNOWN
    }

    public ZipException(String str) {
        super(str);
        this.type = a.UNKNOWN;
    }

    public a getType() {
        return this.type;
    }

    public ZipException(Exception exc) {
        super(exc);
        this.type = a.UNKNOWN;
    }

    public ZipException(String str, Exception exc) {
        super(str, exc);
        this.type = a.UNKNOWN;
    }

    public ZipException(String str, a aVar) {
        super(str);
        a aVar2 = a.UNKNOWN;
        this.type = aVar;
    }

    public ZipException(String str, Throwable th2, a aVar) {
        super(str, th2);
        a aVar2 = a.UNKNOWN;
        this.type = aVar;
    }
}
