package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/DOMConfiguration.class
 */
public interface DOMConfiguration {
    void setParameter(String str, Object obj) throws DOMException;

    Object getParameter(String str) throws DOMException;

    boolean canSetParameter(String str, Object obj);

    DOMStringList getParameterNames();
}
