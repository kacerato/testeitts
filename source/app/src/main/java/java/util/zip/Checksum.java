package java.util.zip;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/zip/Checksum.class
 */
public interface Checksum {
    void update(int i10);

    void update(byte[] bArr, int i10, int i11);

    long getValue();

    void reset();
}
