package org.w3c.dom.ls;

import java.io.OutputStream;
import java.io.Writer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/w3c/dom/ls/LSOutput.class
 */
public interface LSOutput {
    Writer getCharacterStream();

    void setCharacterStream(Writer writer);

    OutputStream getByteStream();

    void setByteStream(OutputStream outputStream);

    String getSystemId();

    void setSystemId(String str);

    String getEncoding();

    void setEncoding(String str);
}
