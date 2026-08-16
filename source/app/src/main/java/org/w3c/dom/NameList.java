package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/NameList.class
 */
public interface NameList {
    String getName(int i10);

    String getNamespaceURI(int i10);

    int getLength();

    boolean contains(String str);

    boolean containsNS(String str, String str2);
}
