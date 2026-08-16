package java.util.stream;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/stream/BaseStream.class
 */
public interface BaseStream<T, S extends BaseStream<T, S>> extends AutoCloseable {
    Iterator<T> iterator2();

    Spliterator<T> spliterator2();

    boolean isParallel();

    S sequential();

    S parallel();

    S unordered();

    S onClose(Runnable runnable);

    @Override
    void close();
}
