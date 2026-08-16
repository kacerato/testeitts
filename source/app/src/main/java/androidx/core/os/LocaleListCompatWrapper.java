package androidx.core.os;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

final class LocaleListCompatWrapper implements LocaleListInterface {
    private final Locale[] mList;
    private final String mStringRepresentation;
    private static final Locale[] sEmptyList = new Locale[0];
    private static final Locale LOCALE_EN_XA = new Locale("en", "XA");
    private static final Locale LOCALE_AR_XB = new Locale("ar", "XB");
    private static final Locale EN_LATN = LocaleListCompat.forLanguageTagCompat("en-Latn");

    public static class Api21Impl {
        private Api21Impl() {
        }

        public static String getScript(Locale locale) {
            return locale.getScript();
        }
    }

    public LocaleListCompatWrapper(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.mList = sEmptyList;
            this.mStringRepresentation = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < localeArr.length; i10++) {
            Locale locale = localeArr[i10];
            if (locale == null) {
                throw new NullPointerException("list[" + i10 + "] is null");
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                toLanguageTag(sb2, locale2);
                if (i10 < localeArr.length - 1) {
                    sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                hashSet.add(locale2);
            }
        }
        this.mList = (Locale[]) arrayList.toArray(new Locale[0]);
        this.mStringRepresentation = sb2.toString();
    }

    private Locale computeFirstMatch(Collection<String> collection, boolean z10) {
        int computeFirstMatchIndex = computeFirstMatchIndex(collection, z10);
        if (computeFirstMatchIndex == -1) {
            return null;
        }
        return this.mList[computeFirstMatchIndex];
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
    
        if (r6 < Integer.MAX_VALUE) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int computeFirstMatchIndex(Collection<String> collection, boolean z10) {
        int i10;
        Locale[] localeArr = this.mList;
        if (localeArr.length == 1) {
            return 0;
        }
        if (localeArr.length == 0) {
            return -1;
        }
        if (z10) {
            i10 = findFirstMatchIndex(EN_LATN);
            if (i10 == 0) {
                return 0;
            }
        }
        i10 = Integer.MAX_VALUE;
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            int findFirstMatchIndex = findFirstMatchIndex(LocaleListCompat.forLanguageTagCompat(it.next()));
            if (findFirstMatchIndex == 0) {
                return 0;
            }
            if (findFirstMatchIndex < i10) {
                i10 = findFirstMatchIndex;
            }
        }
        if (i10 == Integer.MAX_VALUE) {
            return 0;
        }
        return i10;
    }

    private int findFirstMatchIndex(Locale locale) {
        int i10 = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i10 >= localeArr.length) {
                return Integer.MAX_VALUE;
            }
            if (matchScore(locale, localeArr[i10]) > 0) {
                return i10;
            }
            i10++;
        }
    }

    private static String getLikelyScript(Locale locale) {
        String script = Api21Impl.getScript(locale);
        return !script.isEmpty() ? script : "";
    }

    private static boolean isPseudoLocale(Locale locale) {
        return LOCALE_EN_XA.equals(locale) || LOCALE_AR_XB.equals(locale);
    }

    private static int matchScore(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return 1;
        }
        if (!locale.getLanguage().equals(locale2.getLanguage()) || isPseudoLocale(locale) || isPseudoLocale(locale2)) {
            return 0;
        }
        String likelyScript = getLikelyScript(locale);
        if (!likelyScript.isEmpty()) {
            return likelyScript.equals(getLikelyScript(locale2)) ? 1 : 0;
        }
        String country = locale.getCountry();
        return (country.isEmpty() || country.equals(locale2.getCountry())) ? 1 : 0;
    }

    public static void toLanguageTag(StringBuilder sb2, Locale locale) {
        sb2.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country == null || country.isEmpty()) {
            return;
        }
        sb2.append('-');
        sb2.append(locale.getCountry());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocaleListCompatWrapper)) {
            return false;
        }
        Locale[] localeArr = ((LocaleListCompatWrapper) obj).mList;
        if (this.mList.length != localeArr.length) {
            return false;
        }
        int i10 = 0;
        while (true) {
            Locale[] localeArr2 = this.mList;
            if (i10 >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i10].equals(localeArr[i10])) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public Locale get(int i10) {
        if (i10 >= 0) {
            Locale[] localeArr = this.mList;
            if (i10 < localeArr.length) {
                return localeArr[i10];
            }
        }
        return null;
    }

    @Override
    public Locale getFirstMatch(String[] strArr) {
        return computeFirstMatch(Arrays.asList(strArr), false);
    }

    @Override
    public Object getLocaleList() {
        return null;
    }

    public int hashCode() {
        int i10 = 1;
        for (Locale locale : this.mList) {
            i10 = (i10 * 31) + locale.hashCode();
        }
        return i10;
    }

    @Override
    public int indexOf(Locale locale) {
        int i10 = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i10 >= localeArr.length) {
                return -1;
            }
            if (localeArr[i10].equals(locale)) {
                return i10;
            }
            i10++;
        }
    }

    @Override
    public boolean isEmpty() {
        return this.mList.length == 0;
    }

    @Override
    public int size() {
        return this.mList.length;
    }

    @Override
    public String toLanguageTags() {
        return this.mStringRepresentation;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        int i10 = 0;
        while (true) {
            Locale[] localeArr = this.mList;
            if (i10 >= localeArr.length) {
                sb2.append("]");
                return sb2.toString();
            }
            sb2.append((Object) localeArr[i10]);
            if (i10 < this.mList.length - 1) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            i10++;
        }
    }
}
