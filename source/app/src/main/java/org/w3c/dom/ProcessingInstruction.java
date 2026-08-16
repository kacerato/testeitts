package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/ProcessingInstruction.class
 */
public interface ProcessingInstruction extends Node {
    String getTarget();

    String getData();

    void setData(String str) throws DOMException;
}
