package java.net;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/SocketOption.class
 */
public interface SocketOption<T> {
    String name();

    Class<T> type();
}
