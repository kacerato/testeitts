package android.text;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/SpanWatcher.class
 */
public interface SpanWatcher extends NoCopySpan {
    void onSpanAdded(Spannable spannable, Object obj, int i10, int i11);

    void onSpanRemoved(Spannable spannable, Object obj, int i10, int i11);

    void onSpanChanged(Spannable spannable, Object obj, int i10, int i11, int i12, int i13);
}
