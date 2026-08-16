package org.w3c.dom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/DOMImplementation.class
 */
public interface DOMImplementation {
    boolean hasFeature(String str, String str2);

    DocumentType createDocumentType(String str, String str2, String str3) throws DOMException;

    Document createDocument(String str, String str2, DocumentType documentType) throws DOMException;

    Object getFeature(String str, String str2);
}
