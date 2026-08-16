package java.nio.file;

import java.io.Closeable;
import java.io.IOException;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/DirectoryStream.class
 */
public interface DirectoryStream<T> extends Closeable, Iterable<T> {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/file/DirectoryStream$Filter.class
 */
    @FunctionalInterface
    public interface Filter<T> {
        boolean accept(T t10) throws IOException;
    }

    @Override
    Iterator<T> iterator();
}
