package android.text.util;

import android.text.Spannable;
import android.widget.TextView;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/util/Linkify.class
 */
public class Linkify {
    public static final int ALL = 15;
    public static final int EMAIL_ADDRESSES = 2;
    public static final int MAP_ADDRESSES = 8;
    public static final int PHONE_NUMBERS = 4;
    public static final int WEB_URLS = 1;
    public static final MatchFilter sPhoneNumberMatchFilter = null;
    public static final TransformFilter sPhoneNumberTransformFilter = null;
    public static final MatchFilter sUrlMatchFilter = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/util/Linkify$MatchFilter.class
 */
    public interface MatchFilter {
        boolean acceptMatch(CharSequence charSequence, int i10, int i11);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/util/Linkify$TransformFilter.class
 */
    public interface TransformFilter {
        String transformUrl(Matcher matcher, String str);
    }

    public Linkify() {
        throw new RuntimeException("Stub!");
    }

    public static final boolean addLinks(Spannable text, int mask) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean addLinks(TextView text, int mask) {
        throw new RuntimeException("Stub!");
    }

    public static final void addLinks(TextView text, Pattern pattern, String scheme) {
        throw new RuntimeException("Stub!");
    }

    public static final void addLinks(TextView text, Pattern pattern, String scheme, MatchFilter matchFilter, TransformFilter transformFilter) {
        throw new RuntimeException("Stub!");
    }

    public static final void addLinks(TextView text, Pattern pattern, String defaultScheme, String[] schemes, MatchFilter matchFilter, TransformFilter transformFilter) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean addLinks(Spannable text, Pattern pattern, String scheme) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean addLinks(Spannable spannable, Pattern pattern, String scheme, MatchFilter matchFilter, TransformFilter transformFilter) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean addLinks(Spannable spannable, Pattern pattern, String defaultScheme, String[] schemes, MatchFilter matchFilter, TransformFilter transformFilter) {
        throw new RuntimeException("Stub!");
    }
}
