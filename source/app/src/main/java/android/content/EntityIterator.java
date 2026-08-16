package android.content;

import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/EntityIterator.class
 */
public interface EntityIterator extends Iterator<Entity> {
    void reset();

    void close();
}
