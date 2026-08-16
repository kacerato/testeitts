package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

final class LocaleListPlatformWrapper implements LocaleListInterface {
    private final LocaleList mLocaleList;

    public LocaleListPlatformWrapper(Object obj) {
        this.mLocaleList = (LocaleList) obj;
    }

    public boolean equals(Object obj) {
        return this.mLocaleList.equals(((LocaleListInterface) obj).getLocaleList());
    }

    @Override
    public Locale get(int i10) {
        return this.mLocaleList.get(i10);
    }

    @Override
    public Locale getFirstMatch(String[] strArr) {
        return this.mLocaleList.getFirstMatch(strArr);
    }

    @Override
    public Object getLocaleList() {
        return this.mLocaleList;
    }

    public int hashCode() {
        return this.mLocaleList.hashCode();
    }

    @Override
    public int indexOf(Locale locale) {
        return this.mLocaleList.indexOf(locale);
    }

    @Override
    public boolean isEmpty() {
        return this.mLocaleList.isEmpty();
    }

    @Override
    public int size() {
        return this.mLocaleList.size();
    }

    @Override
    public String toLanguageTags() {
        return this.mLocaleList.toLanguageTags();
    }

    public String toString() {
        return this.mLocaleList.toString();
    }
}
