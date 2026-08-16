package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/CharacterData.class
 */
public interface CharacterData extends Node {
    String getData() throws DOMException;

    void setData(String str) throws DOMException;

    int getLength();

    String substringData(int i10, int i11) throws DOMException;

    void appendData(String str) throws DOMException;

    void insertData(int i10, String str) throws DOMException;

    void deleteData(int i10, int i11) throws DOMException;

    void replaceData(int i10, int i11, String str) throws DOMException;
}
