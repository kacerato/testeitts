package android.text;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Printer;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/TextUtils.class
 */
public class TextUtils {
    public static final int CAP_MODE_CHARACTERS = 4096;
    public static final int CAP_MODE_SENTENCES = 16384;
    public static final int CAP_MODE_WORDS = 8192;
    public static final Parcelable.Creator<CharSequence> CHAR_SEQUENCE_CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/TextUtils$EllipsizeCallback.class
 */
    public interface EllipsizeCallback {
        void ellipsized(int i10, int i11);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/TextUtils$StringSplitter.class
 */
    public interface StringSplitter extends Iterable<String> {
        void setString(String str);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/TextUtils$TruncateAt.class
 */
    public enum TruncateAt {
        END,
        MARQUEE,
        MIDDLE,
        START
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/TextUtils$SimpleStringSplitter.class
 */
    public static class SimpleStringSplitter implements StringSplitter, Iterator<String> {
        public SimpleStringSplitter(char delimiter) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void setString(String string) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public Iterator<String> iterator() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean hasNext() {
            throw new RuntimeException("Stub!");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public String next() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void remove() {
            throw new RuntimeException("Stub!");
        }
    }

    TextUtils() {
        throw new RuntimeException("Stub!");
    }

    public static void getChars(CharSequence s10, int start, int end, char[] dest, int destoff) {
        throw new RuntimeException("Stub!");
    }

    public static int indexOf(CharSequence s10, char ch2) {
        throw new RuntimeException("Stub!");
    }

    public static int indexOf(CharSequence s10, char ch2, int start) {
        throw new RuntimeException("Stub!");
    }

    public static int indexOf(CharSequence s10, char ch2, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public static int lastIndexOf(CharSequence s10, char ch2) {
        throw new RuntimeException("Stub!");
    }

    public static int lastIndexOf(CharSequence s10, char ch2, int last) {
        throw new RuntimeException("Stub!");
    }

    public static int lastIndexOf(CharSequence s10, char ch2, int start, int last) {
        throw new RuntimeException("Stub!");
    }

    public static int indexOf(CharSequence s10, CharSequence needle) {
        throw new RuntimeException("Stub!");
    }

    public static int indexOf(CharSequence s10, CharSequence needle, int start) {
        throw new RuntimeException("Stub!");
    }

    public static int indexOf(CharSequence s10, CharSequence needle, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public static boolean regionMatches(CharSequence one, int toffset, CharSequence two, int ooffset, int len) {
        throw new RuntimeException("Stub!");
    }

    public static String substring(CharSequence source, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public static String join(CharSequence delimiter, Object[] tokens) {
        throw new RuntimeException("Stub!");
    }

    public static String join(CharSequence delimiter, Iterable tokens) {
        throw new RuntimeException("Stub!");
    }

    public static String[] split(String text, String expression) {
        throw new RuntimeException("Stub!");
    }

    public static String[] split(String text, Pattern pattern) {
        throw new RuntimeException("Stub!");
    }

    public static CharSequence stringOrSpannedString(CharSequence source) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isEmpty(CharSequence str) {
        throw new RuntimeException("Stub!");
    }

    public static int getTrimmedLength(CharSequence s10) {
        throw new RuntimeException("Stub!");
    }

    public static boolean equals(CharSequence a10, CharSequence b10) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static CharSequence getReverse(CharSequence source, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public static void writeToParcel(CharSequence cs, Parcel p10, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }

    public static void dumpSpans(CharSequence cs, Printer printer, String prefix) {
        throw new RuntimeException("Stub!");
    }

    public static CharSequence replace(CharSequence template, String[] sources, CharSequence[] destinations) {
        throw new RuntimeException("Stub!");
    }

    public static CharSequence expandTemplate(CharSequence template, CharSequence... values) {
        throw new RuntimeException("Stub!");
    }

    public static int getOffsetBefore(CharSequence text, int offset) {
        throw new RuntimeException("Stub!");
    }

    public static int getOffsetAfter(CharSequence text, int offset) {
        throw new RuntimeException("Stub!");
    }

    public static void copySpansFrom(Spanned source, int start, int end, Class kind, Spannable dest, int destoff) {
        throw new RuntimeException("Stub!");
    }

    public static CharSequence ellipsize(CharSequence text, TextPaint p10, float avail, TruncateAt where) {
        throw new RuntimeException("Stub!");
    }

    public static CharSequence ellipsize(CharSequence text, TextPaint paint, float avail, TruncateAt where, boolean preserveLength, EllipsizeCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public static CharSequence listEllipsize(Context context, List<CharSequence> elements, String separator, TextPaint paint, float avail, int moreId) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static CharSequence commaEllipsize(CharSequence text, TextPaint p10, float avail, String oneMore, String more) {
        throw new RuntimeException("Stub!");
    }

    public static String htmlEncode(String s10) {
        throw new RuntimeException("Stub!");
    }

    public static CharSequence concat(CharSequence... text) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isGraphic(CharSequence str) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static boolean isGraphic(char c10) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isDigitsOnly(CharSequence str) {
        throw new RuntimeException("Stub!");
    }

    public static int getCapsMode(CharSequence cs, int off, int reqModes) {
        throw new RuntimeException("Stub!");
    }

    public static int getLayoutDirectionFromLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }
}
