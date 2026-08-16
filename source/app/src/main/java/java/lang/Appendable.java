package java.lang;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Appendable.class
 */
public interface Appendable {
    Appendable append(CharSequence charSequence) throws IOException;

    Appendable append(CharSequence charSequence, int i10, int i11) throws IOException;

    Appendable append(char c10) throws IOException;
}
