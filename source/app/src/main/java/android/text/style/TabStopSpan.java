package android.text.style;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TabStopSpan.class
 */
public interface TabStopSpan extends ParagraphStyle {
    int getTabStop();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/TabStopSpan$Standard.class
 */
    public static class Standard implements TabStopSpan {
        public Standard(int where) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int getTabStop() {
            throw new RuntimeException("Stub!");
        }
    }
}
