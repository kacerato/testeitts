package androidx.preference;

import Nf.d;
import java.util.Iterator;

public final class PreferenceGroupKt$iterator$1 implements Iterator<Preference>, d {
    final PreferenceGroup $this_iterator;
    private int index;

    public PreferenceGroupKt$iterator$1(PreferenceGroup preferenceGroup) {
        this.$this_iterator = preferenceGroup;
    }

    @Override
    public boolean hasNext() {
        return this.index < this.$this_iterator.getPreferenceCount();
    }

    @Override
    public void remove() {
        PreferenceGroup preferenceGroup = this.$this_iterator;
        int i10 = this.index - 1;
        this.index = i10;
        preferenceGroup.removePreference(preferenceGroup.getPreference(i10));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Preference next() {
        PreferenceGroup preferenceGroup = this.$this_iterator;
        int i10 = this.index;
        this.index = i10 + 1;
        Preference preference = preferenceGroup.getPreference(i10);
        if (preference != null) {
            return preference;
        }
        throw new IndexOutOfBoundsException();
    }
}
