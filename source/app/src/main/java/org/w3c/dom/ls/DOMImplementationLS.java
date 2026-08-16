package org.w3c.dom.ls;

import org.w3c.dom.DOMException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/ls/DOMImplementationLS.class
 */
public interface DOMImplementationLS {
    public static final short MODE_ASYNCHRONOUS = 2;
    public static final short MODE_SYNCHRONOUS = 1;

    LSParser createLSParser(short s10, String str) throws DOMException;

    LSSerializer createLSSerializer();

    LSInput createLSInput();

    LSOutput createLSOutput();
}
