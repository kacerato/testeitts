package okhttp3;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

public final class x {

    public static final String f99476e = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";

    public static final String f99477f = "\"([^\"]*)\"";

    public static final Pattern f99478g = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    public static final Pattern f99479h = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public final String f99480a;

    public final String f99481b;

    public final String f99482c;

    @Nullable
    public final String f99483d;

    public x(String str, String str2, String str3, @Nullable String str4) {
        this.f99480a = str;
        this.f99481b = str2;
        this.f99482c = str3;
        this.f99483d = str4;
    }

    public static x c(String str) {
        Matcher matcher = f99478g.matcher(str);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
        }
        String group = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = group.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = f99479h.matcher(str);
        String str2 = null;
        for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                throw new IllegalArgumentException("Parameter is not formatted correctly: \"" + str.substring(end) + "\" for: \"" + str + '\"');
            }
            String group2 = matcher2.group(1);
            if (group2 != null && group2.equalsIgnoreCase("charset")) {
                String group3 = matcher2.group(2);
                if (group3 == null) {
                    group3 = matcher2.group(3);
                } else if (group3.startsWith("'") && group3.endsWith("'") && group3.length() > 2) {
                    group3 = group3.substring(1, group3.length() - 1);
                }
                if (str2 != null && !group3.equalsIgnoreCase(str2)) {
                    throw new IllegalArgumentException("Multiple charsets defined: \"" + str2 + "\" and: \"" + group3 + "\" for: \"" + str + '\"');
                }
                str2 = group3;
            }
        }
        return new x(str, lowerCase, lowerCase2, str2);
    }

    @Nullable
    public static x d(String str) {
        try {
            return c(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Nullable
    public Charset a() {
        return b(null);
    }

    @Nullable
    public Charset b(@Nullable Charset charset) {
        try {
            String str = this.f99483d;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public String e() {
        return this.f99482c;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof x) && ((x) obj).f99480a.equals(this.f99480a);
    }

    public String f() {
        return this.f99481b;
    }

    public int hashCode() {
        return this.f99480a.hashCode();
    }

    public String toString() {
        return this.f99480a;
    }
}
