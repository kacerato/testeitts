package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Iterator;

public class LocalsArraySet extends LocalsArray {
    private final OneLocalsArray primary;
    private final ArrayList<LocalsArray> secondaries;

    public LocalsArraySet(int i10) {
        super(i10 != 0);
        this.primary = new OneLocalsArray(i10);
        this.secondaries = new ArrayList<>();
    }

    private LocalsArray getSecondaryForLabel(int i10) {
        if (i10 >= this.secondaries.size()) {
            return null;
        }
        return this.secondaries.get(i10);
    }

    private LocalsArraySet mergeWithOne(OneLocalsArray oneLocalsArray) {
        LocalsArray merge;
        OneLocalsArray merge2 = this.primary.merge(oneLocalsArray.getPrimary());
        ArrayList arrayList = new ArrayList(this.secondaries.size());
        int size = this.secondaries.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            LocalsArray localsArray = this.secondaries.get(i10);
            if (localsArray != null) {
                try {
                    merge = localsArray.merge(oneLocalsArray);
                } catch (SimException e10) {
                    e10.addContext("Merging one locals against caller block " + Hex.u2(i10));
                }
                z10 = (z10 && localsArray == merge) ? false : true;
                arrayList.add(merge);
            }
            merge = null;
            if (z10) {
            }
            arrayList.add(merge);
        }
        return (this.primary != merge2 || z10) ? new LocalsArraySet(merge2, arrayList) : this;
    }

    private LocalsArraySet mergeWithSet(LocalsArraySet localsArraySet) {
        OneLocalsArray merge = this.primary.merge(localsArraySet.getPrimary());
        int size = this.secondaries.size();
        int size2 = localsArraySet.secondaries.size();
        int max = Math.max(size, size2);
        ArrayList arrayList = new ArrayList(max);
        int i10 = 0;
        boolean z10 = false;
        while (i10 < max) {
            LocalsArray localsArray = null;
            LocalsArray localsArray2 = i10 < size ? this.secondaries.get(i10) : null;
            LocalsArray localsArray3 = i10 < size2 ? localsArraySet.secondaries.get(i10) : null;
            if (localsArray2 != localsArray3) {
                if (localsArray2 == null) {
                    localsArray = localsArray3;
                } else if (localsArray3 != null) {
                    try {
                        localsArray = localsArray2.merge(localsArray3);
                    } catch (SimException e10) {
                        e10.addContext("Merging locals set for caller block " + Hex.u2(i10));
                    }
                }
                z10 = (z10 && localsArray2 == localsArray) ? false : true;
                arrayList.add(localsArray);
                i10++;
            }
            localsArray = localsArray2;
            if (z10) {
            }
            arrayList.add(localsArray);
            i10++;
        }
        return (this.primary != merge || z10) ? new LocalsArraySet(merge, arrayList) : this;
    }

    @Override
    public void annotate(ExceptionWithContext exceptionWithContext) {
        exceptionWithContext.addContext("(locals array set; primary)");
        this.primary.annotate(exceptionWithContext);
        int size = this.secondaries.size();
        for (int i10 = 0; i10 < size; i10++) {
            LocalsArray localsArray = this.secondaries.get(i10);
            if (localsArray != null) {
                exceptionWithContext.addContext("(locals array set: primary for caller " + Hex.u2(i10) + ')');
                localsArray.getPrimary().annotate(exceptionWithContext);
            }
        }
    }

    @Override
    public LocalsArray copy() {
        return new LocalsArraySet(this);
    }

    @Override
    public TypeBearer get(int i10) {
        return this.primary.get(i10);
    }

    @Override
    public TypeBearer getCategory1(int i10) {
        return this.primary.getCategory1(i10);
    }

    @Override
    public TypeBearer getCategory2(int i10) {
        return this.primary.getCategory2(i10);
    }

    @Override
    public int getMaxLocals() {
        return this.primary.getMaxLocals();
    }

    @Override
    public TypeBearer getOrNull(int i10) {
        return this.primary.getOrNull(i10);
    }

    @Override
    public OneLocalsArray getPrimary() {
        return this.primary;
    }

    @Override
    public void invalidate(int i10) {
        throwIfImmutable();
        this.primary.invalidate(i10);
        Iterator<LocalsArray> it = this.secondaries.iterator();
        while (it.hasNext()) {
            LocalsArray next = it.next();
            if (next != null) {
                next.invalidate(i10);
            }
        }
    }

    @Override
    public void makeInitialized(Type type) {
        if (this.primary.getMaxLocals() == 0) {
            return;
        }
        throwIfImmutable();
        this.primary.makeInitialized(type);
        Iterator<LocalsArray> it = this.secondaries.iterator();
        while (it.hasNext()) {
            LocalsArray next = it.next();
            if (next != null) {
                next.makeInitialized(type);
            }
        }
    }

    @Override
    public LocalsArraySet mergeWithSubroutineCaller(LocalsArray localsArray, int i10) {
        LocalsArray secondaryForLabel = getSecondaryForLabel(i10);
        OneLocalsArray merge = this.primary.merge(localsArray.getPrimary());
        if (secondaryForLabel == localsArray) {
            localsArray = secondaryForLabel;
        } else if (secondaryForLabel != null) {
            localsArray = secondaryForLabel.merge(localsArray);
        }
        if (localsArray == secondaryForLabel && merge == this.primary) {
            return this;
        }
        int size = this.secondaries.size();
        int max = Math.max(i10 + 1, size);
        ArrayList arrayList = new ArrayList(max);
        int i11 = 0;
        OneLocalsArray oneLocalsArray = null;
        while (i11 < max) {
            LocalsArray localsArray2 = i11 == i10 ? localsArray : i11 < size ? this.secondaries.get(i11) : null;
            if (localsArray2 != null) {
                oneLocalsArray = oneLocalsArray == null ? localsArray2.getPrimary() : oneLocalsArray.merge(localsArray2.getPrimary());
            }
            arrayList.add(localsArray2);
            i11++;
        }
        LocalsArraySet localsArraySet = new LocalsArraySet(oneLocalsArray, arrayList);
        localsArraySet.setImmutable();
        return localsArraySet;
    }

    @Override
    public void set(int i10, TypeBearer typeBearer) {
        throwIfImmutable();
        this.primary.set(i10, typeBearer);
        Iterator<LocalsArray> it = this.secondaries.iterator();
        while (it.hasNext()) {
            LocalsArray next = it.next();
            if (next != null) {
                next.set(i10, typeBearer);
            }
        }
    }

    @Override
    public void setImmutable() {
        this.primary.setImmutable();
        Iterator<LocalsArray> it = this.secondaries.iterator();
        while (it.hasNext()) {
            LocalsArray next = it.next();
            if (next != null) {
                next.setImmutable();
            }
        }
        super.setImmutable();
    }

    public LocalsArray subArrayForLabel(int i10) {
        return getSecondaryForLabel(i10);
    }

    @Override
    public String toHuman() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(locals array set; primary)\n");
        sb2.append(getPrimary().toHuman());
        sb2.append('\n');
        int size = this.secondaries.size();
        for (int i10 = 0; i10 < size; i10++) {
            LocalsArray localsArray = this.secondaries.get(i10);
            if (localsArray != null) {
                sb2.append("(locals array set: primary for caller " + Hex.u2(i10) + ")\n");
                sb2.append(localsArray.getPrimary().toHuman());
                sb2.append('\n');
            }
        }
        return sb2.toString();
    }

    @Override
    public LocalsArraySet merge(LocalsArray localsArray) {
        LocalsArraySet mergeWithOne;
        try {
            if (localsArray instanceof LocalsArraySet) {
                mergeWithOne = mergeWithSet((LocalsArraySet) localsArray);
            } else {
                mergeWithOne = mergeWithOne((OneLocalsArray) localsArray);
            }
            mergeWithOne.setImmutable();
            return mergeWithOne;
        } catch (SimException e10) {
            e10.addContext("underlay locals:");
            annotate(e10);
            e10.addContext("overlay locals:");
            localsArray.annotate(e10);
            throw e10;
        }
    }

    public LocalsArraySet(OneLocalsArray oneLocalsArray, ArrayList<LocalsArray> arrayList) {
        super(oneLocalsArray.getMaxLocals() > 0);
        this.primary = oneLocalsArray;
        this.secondaries = arrayList;
    }

    @Override
    public void set(RegisterSpec registerSpec) {
        set(registerSpec.getReg(), registerSpec);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private LocalsArraySet(LocalsArraySet localsArraySet) {
        super(localsArraySet.getMaxLocals() > 0);
        this.primary = localsArraySet.primary.copy();
        this.secondaries = new ArrayList<>(localsArraySet.secondaries.size());
        int size = localsArraySet.secondaries.size();
        for (int i10 = 0; i10 < size; i10++) {
            LocalsArray localsArray = localsArraySet.secondaries.get(i10);
            if (localsArray == null) {
                this.secondaries.add(null);
            } else {
                this.secondaries.add(localsArray.copy());
            }
        }
    }
}
