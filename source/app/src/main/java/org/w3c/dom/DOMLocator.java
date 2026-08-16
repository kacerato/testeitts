package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/DOMLocator.class
 */
public interface DOMLocator {
    int getLineNumber();

    int getColumnNumber();

    int getByteOffset();

    int getUtf16Offset();

    Node getRelatedNode();

    String getUri();
}
