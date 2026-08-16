package org.xml.sax.ext;

import org.xml.sax.Attributes;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/xml/sax/ext/Attributes2.class
 */
public interface Attributes2 extends Attributes {
    boolean isDeclared(int i10);

    boolean isDeclared(String str);

    boolean isDeclared(String str, String str2);

    boolean isSpecified(int i10);

    boolean isSpecified(String str, String str2);

    boolean isSpecified(String str);
}
