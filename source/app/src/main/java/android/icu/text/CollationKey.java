package android.icu.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/CollationKey.class
 */
public final class CollationKey implements Comparable<CollationKey> {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/icu/text/CollationKey$BoundMode.class
 */
    public static final class BoundMode {
        public static final int LOWER = 0;
        public static final int UPPER = 1;
        public static final int UPPER_LONG = 2;

        BoundMode() {
            throw new RuntimeException("Stub!");
        }
    }

    public CollationKey(String source, byte[] key) {
        throw new RuntimeException("Stub!");
    }

    public String getSourceString() {
        throw new RuntimeException("Stub!");
    }

    public byte[] toByteArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(CollationKey target) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object target) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(CollationKey target) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public CollationKey getBound(int boundType, int noOfLevels) {
        throw new RuntimeException("Stub!");
    }

    public CollationKey merge(CollationKey source) {
        throw new RuntimeException("Stub!");
    }
}
