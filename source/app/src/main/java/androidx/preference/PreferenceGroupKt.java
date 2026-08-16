package androidx.preference;

import Mf.l;
import Mf.p;
import Xf.InterfaceC3312m;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import nf.P0;

public final class PreferenceGroupKt {
    public static final boolean contains(PreferenceGroup contains, Preference preference) {
        M.q(contains, "$this$contains");
        M.q(preference, "preference");
        int preferenceCount = contains.getPreferenceCount();
        for (int i10 = 0; i10 < preferenceCount; i10++) {
            if (M.g(contains.getPreference(i10), preference)) {
                return true;
            }
        }
        return false;
    }

    public static final void forEach(PreferenceGroup forEach, l<? super Preference, P0> action) {
        M.q(forEach, "$this$forEach");
        M.q(action, "action");
        int preferenceCount = forEach.getPreferenceCount();
        for (int i10 = 0; i10 < preferenceCount; i10++) {
            action.invoke(get(forEach, i10));
        }
    }

    public static final void forEachIndexed(PreferenceGroup forEachIndexed, p<? super Integer, ? super Preference, P0> action) {
        M.q(forEachIndexed, "$this$forEachIndexed");
        M.q(action, "action");
        int preferenceCount = forEachIndexed.getPreferenceCount();
        for (int i10 = 0; i10 < preferenceCount; i10++) {
            action.invoke(Integer.valueOf(i10), get(forEachIndexed, i10));
        }
    }

    public static final <T extends Preference> T get(PreferenceGroup get, CharSequence key) {
        M.q(get, "$this$get");
        M.q(key, "key");
        return (T) get.findPreference(key);
    }

    public static final InterfaceC3312m<Preference> getChildren(final PreferenceGroup children) {
        M.q(children, "$this$children");
        return new InterfaceC3312m<Preference>() {
            @Override
            public Iterator<Preference> iterator() {
                return PreferenceGroupKt.iterator(PreferenceGroup.this);
            }
        };
    }

    public static final int getSize(PreferenceGroup size) {
        M.q(size, "$this$size");
        return size.getPreferenceCount();
    }

    public static final boolean isEmpty(PreferenceGroup isEmpty) {
        M.q(isEmpty, "$this$isEmpty");
        return isEmpty.getPreferenceCount() == 0;
    }

    public static final boolean isNotEmpty(PreferenceGroup isNotEmpty) {
        M.q(isNotEmpty, "$this$isNotEmpty");
        return isNotEmpty.getPreferenceCount() != 0;
    }

    public static final Iterator<Preference> iterator(PreferenceGroup iterator) {
        M.q(iterator, "$this$iterator");
        return new PreferenceGroupKt$iterator$1(iterator);
    }

    public static final void minusAssign(PreferenceGroup minusAssign, Preference preference) {
        M.q(minusAssign, "$this$minusAssign");
        M.q(preference, "preference");
        minusAssign.removePreference(preference);
    }

    public static final void plusAssign(PreferenceGroup plusAssign, Preference preference) {
        M.q(plusAssign, "$this$plusAssign");
        M.q(preference, "preference");
        plusAssign.addPreference(preference);
    }

    public static final Preference get(PreferenceGroup get, int i10) {
        M.q(get, "$this$get");
        Preference preference = get.getPreference(i10);
        if (preference != null) {
            return preference;
        }
        throw new IndexOutOfBoundsException("Index: " + i10 + ", Size: " + get.getPreferenceCount());
    }
}
