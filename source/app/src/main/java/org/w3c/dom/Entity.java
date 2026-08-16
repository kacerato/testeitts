package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/Entity.class
 */
public interface Entity extends Node {
    String getPublicId();

    String getSystemId();

    String getNotationName();

    String getInputEncoding();

    String getXmlEncoding();

    String getXmlVersion();
}
