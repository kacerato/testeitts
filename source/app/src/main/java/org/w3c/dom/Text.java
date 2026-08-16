package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/Text.class
 */
public interface Text extends CharacterData {
    Text splitText(int i10) throws DOMException;

    boolean isElementContentWhitespace();

    String getWholeText();

    Text replaceWholeText(String str) throws DOMException;
}
