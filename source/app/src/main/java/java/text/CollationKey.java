package java.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/text/CollationKey.class
 */
public abstract class CollationKey implements Comparable<CollationKey> {
    @Override
    public abstract int compareTo(CollationKey collationKey);

    public abstract byte[] toByteArray();

    protected CollationKey(String source) {
        throw new RuntimeException("Stub!");
    }

    public String getSourceString() {
        throw new RuntimeException("Stub!");
    }
}
