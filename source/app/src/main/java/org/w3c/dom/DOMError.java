package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/DOMError.class
 */
public interface DOMError {
    public static final short SEVERITY_ERROR = 2;
    public static final short SEVERITY_FATAL_ERROR = 3;
    public static final short SEVERITY_WARNING = 1;

    short getSeverity();

    String getMessage();

    String getType();

    Object getRelatedException();

    Object getRelatedData();

    DOMLocator getLocation();
}
