package org.w3c.dom.ls;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/ls/LSException.class
 */
public class LSException extends RuntimeException {
    public static final short PARSE_ERR = 81;
    public static final short SERIALIZE_ERR = 82;
    public short code;

    public LSException(short code, String message) {
        throw new RuntimeException("Stub!");
    }
}
