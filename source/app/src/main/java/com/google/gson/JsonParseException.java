package com.google.gson;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public class JsonParseException extends RuntimeException {
    static final long serialVersionUID = -4086729973971783390L;

    public JsonParseException(String msg) {
        super(msg);
    }

    public JsonParseException(String msg, Throwable cause) {
        super(msg, cause);
    }

    public JsonParseException(Throwable cause) {
        super(cause);
    }
}
