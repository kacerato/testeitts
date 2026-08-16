package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/DocumentType.class
 */
public interface DocumentType extends Node {
    String getName();

    NamedNodeMap getEntities();

    NamedNodeMap getNotations();

    String getPublicId();

    String getSystemId();

    String getInternalSubset();
}
