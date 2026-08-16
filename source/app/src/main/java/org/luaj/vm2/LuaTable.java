package org.luaj.vm2;

import B0.C2324i;
import java.lang.ref.WeakReference;
import java.util.Vector;
import org.apache.commons.math3.geometry.VectorFormat;

public class LuaTable extends LuaValue implements Metatable {
    private static final int MIN_HASH_CAPACITY = 2;

    private static final LuaString f102763N = LuaValue.valueOf(C2324i.f1246e);
    private static final Slot[] NOBUCKETS = new Slot[0];
    protected LuaValue[] array;
    protected Slot[] hash;
    protected int hashEntries;
    protected Metatable m_metatable;

    public static class DeadSlot implements Slot {
        private final Object key;
        private Slot next;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.ref.WeakReference] */
        private DeadSlot(LuaValue luaValue, Slot slot) {
            this.key = LuaTable.isLargeKey(luaValue) ? new WeakReference(luaValue) : luaValue;
            this.next = slot;
        }

        private LuaValue key() {
            Object obj = this.key;
            if (obj instanceof WeakReference) {
                obj = ((WeakReference) obj).get();
            }
            return (LuaValue) obj;
        }

        @Override
        public Slot add(Slot slot) {
            Slot slot2 = this.next;
            return slot2 != null ? slot2.add(slot) : slot;
        }

        @Override
        public int arraykey(int i10) {
            return -1;
        }

        @Override
        public StrongSlot find(LuaValue luaValue) {
            return null;
        }

        @Override
        public StrongSlot first() {
            return null;
        }

        @Override
        public boolean keyeq(LuaValue luaValue) {
            LuaValue key = key();
            return key != null && luaValue.raweq(key);
        }

        @Override
        public int keyindex(int i10) {
            return 0;
        }

        @Override
        public Slot relink(Slot slot) {
            return slot;
        }

        @Override
        public Slot remove(StrongSlot strongSlot) {
            if (key() == null) {
                return this.next;
            }
            this.next = this.next.remove(strongSlot);
            return this;
        }

        @Override
        public Slot rest() {
            return this.next;
        }

        @Override
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            Slot slot = this.next;
            Slot slot2 = slot != null ? slot.set(strongSlot, luaValue) : null;
            if (key() == null) {
                return slot2;
            }
            this.next = slot2;
            return this;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<dead");
            LuaValue key = key();
            if (key != null) {
                stringBuffer.append(": ");
                stringBuffer.append(key.toString());
            }
            stringBuffer.append('>');
            if (this.next != null) {
                stringBuffer.append(VectorFormat.DEFAULT_SEPARATOR);
                stringBuffer.append(this.next.toString());
            }
            return stringBuffer.toString();
        }
    }

    public static abstract class Entry extends Varargs implements StrongSlot {
        @Override
        public Slot add(Slot slot) {
            return new LinkSlot(this, slot);
        }

        @Override
        public LuaValue arg(int i10) {
            return i10 != 1 ? i10 != 2 ? LuaValue.NIL : value() : key();
        }

        @Override
        public LuaValue arg1() {
            return key();
        }

        @Override
        public int arraykey(int i10) {
            return 0;
        }

        @Override
        public StrongSlot find(LuaValue luaValue) {
            if (keyeq(luaValue)) {
                return this;
            }
            return null;
        }

        @Override
        public StrongSlot first() {
            return this;
        }

        @Override
        public abstract LuaValue key();

        @Override
        public abstract boolean keyeq(LuaValue luaValue);

        @Override
        public abstract int keyindex(int i10);

        @Override
        public int narg() {
            return 2;
        }

        @Override
        public Slot relink(Slot slot) {
            return slot != null ? new LinkSlot(this, slot) : this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Slot remove(StrongSlot strongSlot) {
            return new DeadSlot(key(), null);
        }

        @Override
        public Slot rest() {
            return null;
        }

        public abstract Entry set(LuaValue luaValue);

        @Override
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            return set(luaValue);
        }

        @Override
        public Varargs subargs(int i10) {
            return i10 != 1 ? i10 != 2 ? LuaValue.NONE : value() : this;
        }

        @Override
        public Varargs toVarargs() {
            return LuaValue.varargsOf(key(), value());
        }

        @Override
        public abstract LuaValue value();
    }

    public static class IntKeyEntry extends Entry {
        private final int key;
        private LuaValue value;

        public IntKeyEntry(int i10, LuaValue luaValue) {
            this.key = i10;
            this.value = luaValue;
        }

        @Override
        public int arraykey(int i10) {
            int i11 = this.key;
            if (i11 < 1 || i11 > i10) {
                return 0;
            }
            return i11;
        }

        @Override
        public LuaValue key() {
            return LuaValue.valueOf(this.key);
        }

        @Override
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.key);
        }

        @Override
        public int keyindex(int i10) {
            return LuaTable.hashmod(LuaInteger.hashCode(this.key), i10);
        }

        @Override
        public Entry set(LuaValue luaValue) {
            this.value = luaValue;
            return this;
        }

        @Override
        public LuaValue value() {
            return this.value;
        }
    }

    public static class LinkSlot implements StrongSlot {
        private Entry entry;
        private Slot next;

        public LinkSlot(Entry entry, Slot slot) {
            this.entry = entry;
            this.next = slot;
        }

        private Slot setnext(Slot slot) {
            if (slot == null) {
                return this.entry;
            }
            this.next = slot;
            return this;
        }

        @Override
        public Slot add(Slot slot) {
            return setnext(this.next.add(slot));
        }

        @Override
        public int arraykey(int i10) {
            return this.entry.arraykey(i10);
        }

        @Override
        public StrongSlot find(LuaValue luaValue) {
            if (this.entry.keyeq(luaValue)) {
                return this;
            }
            return null;
        }

        @Override
        public StrongSlot first() {
            return this.entry;
        }

        @Override
        public LuaValue key() {
            return this.entry.key();
        }

        @Override
        public boolean keyeq(LuaValue luaValue) {
            return this.entry.keyeq(luaValue);
        }

        @Override
        public int keyindex(int i10) {
            return this.entry.keyindex(i10);
        }

        @Override
        public Slot relink(Slot slot) {
            return slot != null ? new LinkSlot(this.entry, slot) : this.entry;
        }

        @Override
        public Slot remove(StrongSlot strongSlot) {
            if (this == strongSlot) {
                return new DeadSlot(key(), this.next);
            }
            this.next = this.next.remove(strongSlot);
            return this;
        }

        @Override
        public Slot rest() {
            return this.next;
        }

        @Override
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            if (strongSlot != this) {
                return setnext(this.next.set(strongSlot, luaValue));
            }
            this.entry = this.entry.set(luaValue);
            return this;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append((Object) this.entry);
            stringBuffer.append(VectorFormat.DEFAULT_SEPARATOR);
            stringBuffer.append((Object) this.next);
            return stringBuffer.toString();
        }

        @Override
        public Varargs toVarargs() {
            return this.entry.toVarargs();
        }

        @Override
        public LuaValue value() {
            return this.entry.value();
        }
    }

    public static class NormalEntry extends Entry {
        private final LuaValue key;
        private LuaValue value;

        public NormalEntry(LuaValue luaValue, LuaValue luaValue2) {
            this.key = luaValue;
            this.value = luaValue2;
        }

        @Override
        public LuaValue key() {
            return this.key;
        }

        @Override
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.key);
        }

        @Override
        public int keyindex(int i10) {
            return LuaTable.hashSlot(this.key, i10);
        }

        @Override
        public Entry set(LuaValue luaValue) {
            this.value = luaValue;
            return this;
        }

        @Override
        public Varargs toVarargs() {
            return this;
        }

        @Override
        public LuaValue value() {
            return this.value;
        }
    }

    public static class NumberValueEntry extends Entry {
        private final LuaValue key;
        private double value;

        public NumberValueEntry(LuaValue luaValue, double d10) {
            this.key = luaValue;
            this.value = d10;
        }

        @Override
        public LuaValue key() {
            return this.key;
        }

        @Override
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.key);
        }

        @Override
        public int keyindex(int i10) {
            return LuaTable.hashSlot(this.key, i10);
        }

        @Override
        public Entry set(LuaValue luaValue) {
            LuaValue luaValue2 = luaValue.tonumber();
            if (luaValue2.isnil()) {
                return new NormalEntry(this.key, luaValue);
            }
            this.value = luaValue2.todouble();
            return this;
        }

        @Override
        public LuaValue value() {
            return LuaValue.valueOf(this.value);
        }
    }

    public interface Slot {
        Slot add(Slot slot);

        int arraykey(int i10);

        StrongSlot find(LuaValue luaValue);

        StrongSlot first();

        boolean keyeq(LuaValue luaValue);

        int keyindex(int i10);

        Slot relink(Slot slot);

        Slot remove(StrongSlot strongSlot);

        Slot rest();

        Slot set(StrongSlot strongSlot, LuaValue luaValue);
    }

    public interface StrongSlot extends Slot {
        LuaValue key();

        Varargs toVarargs();

        LuaValue value();
    }

    public LuaTable() {
        this.array = LuaValue.NOVALS;
        this.hash = NOBUCKETS;
    }

    private boolean arrayset(int i10, LuaValue luaValue) {
        if (i10 <= 0) {
            return false;
        }
        LuaValue[] luaValueArr = this.array;
        if (i10 > luaValueArr.length) {
            return false;
        }
        int i11 = i10 - 1;
        if (luaValue.isnil()) {
            luaValue = null;
        } else {
            Metatable metatable = this.m_metatable;
            if (metatable != null) {
                luaValue = metatable.wrap(luaValue);
            }
        }
        luaValueArr[i11] = luaValue;
        return true;
    }

    private boolean checkLoadFactor() {
        return this.hashEntries >= this.hash.length;
    }

    private boolean compare(int i10, int i11, LuaValue luaValue) {
        LuaValue arrayget;
        LuaValue arrayget2;
        Metatable metatable = this.m_metatable;
        if (metatable == null) {
            LuaValue[] luaValueArr = this.array;
            arrayget = luaValueArr[i10];
            arrayget2 = luaValueArr[i11];
        } else {
            arrayget = metatable.arrayget(this.array, i10);
            arrayget2 = this.m_metatable.arrayget(this.array, i11);
        }
        if (arrayget == null || arrayget2 == null) {
            return false;
        }
        return !luaValue.isnil() ? luaValue.call(arrayget, arrayget2).toboolean() : arrayget.lt_b(arrayget2);
    }

    private int countHashKeys() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            Slot[] slotArr = this.hash;
            if (i10 >= slotArr.length) {
                return i11;
            }
            for (Slot slot = slotArr[i10]; slot != null; slot = slot.rest()) {
                if (slot.first() != null) {
                    i11++;
                }
            }
            i10++;
        }
    }

    private int countIntKeys(int[] iArr) {
        int i10 = 0;
        int i11 = 0;
        int i12 = 1;
        for (int i13 = 0; i13 < 31; i13++) {
            LuaValue[] luaValueArr = this.array;
            if (i12 > luaValueArr.length) {
                break;
            }
            int min = Math.min(luaValueArr.length, 1 << i13);
            int i14 = 0;
            while (i12 <= min) {
                int i15 = i12 + 1;
                if (this.array[i12 - 1] != null) {
                    i14++;
                }
                i12 = i15;
            }
            iArr[i13] = i14;
            i11 += i14;
        }
        while (true) {
            Slot[] slotArr = this.hash;
            if (i10 >= slotArr.length) {
                return i11;
            }
            for (Slot slot = slotArr[i10]; slot != null; slot = slot.rest()) {
                int arraykey = slot.arraykey(Integer.MAX_VALUE);
                if (arraykey > 0) {
                    int log2 = log2(arraykey);
                    iArr[log2] = iArr[log2] + 1;
                    i11++;
                }
            }
            i10++;
        }
    }

    public static Entry defaultEntry(LuaValue luaValue, LuaValue luaValue2) {
        return luaValue.isinttype() ? new IntKeyEntry(luaValue.toint(), luaValue2) : luaValue2.type() == 3 ? new NumberValueEntry(luaValue, luaValue2.todouble()) : new NormalEntry(luaValue, luaValue2);
    }

    private void dropWeakArrayValues() {
        int i10 = 0;
        while (true) {
            LuaValue[] luaValueArr = this.array;
            if (i10 >= luaValueArr.length) {
                return;
            }
            this.m_metatable.arrayget(luaValueArr, i10);
            i10++;
        }
    }

    private void hashRemove(LuaValue luaValue) {
        if (this.hash.length > 0) {
            int hashSlot = hashSlot(luaValue);
            for (Slot slot = this.hash[hashSlot]; slot != null; slot = slot.rest()) {
                StrongSlot find = slot.find(luaValue);
                if (find != null) {
                    Slot[] slotArr = this.hash;
                    slotArr[hashSlot] = slotArr[hashSlot].remove(find);
                    this.hashEntries--;
                    return;
                }
            }
        }
    }

    private int hashSlot(LuaValue luaValue) {
        return hashSlot(luaValue, this.hash.length - 1);
    }

    public static int hashmod(int i10, int i11) {
        return (i10 & Integer.MAX_VALUE) % i11;
    }

    public static int hashpow2(int i10, int i11) {
        return i10 & i11;
    }

    private void heapSort(int i10, LuaValue luaValue) {
        heapify(i10, luaValue);
        int i11 = i10 - 1;
        while (i11 > 0) {
            swap(i11, 0);
            i11--;
            siftDown(0, i11, luaValue);
        }
    }

    private void heapify(int i10, LuaValue luaValue) {
        for (int i11 = (i10 / 2) - 1; i11 >= 0; i11--) {
            siftDown(i11, i10 - 1, luaValue);
        }
    }

    public static boolean isLargeKey(LuaValue luaValue) {
        int type = luaValue.type();
        if (type == 1 || type == 3) {
            return false;
        }
        return type != 4 || luaValue.rawlen() > 32;
    }

    public static int log2(int i10) {
        int i11;
        int i12 = i10 - 1;
        if (i12 < 0) {
            return Integer.MIN_VALUE;
        }
        if (((-65536) & i12) != 0) {
            i12 >>>= 16;
            i11 = 16;
        } else {
            i11 = 0;
        }
        if ((65280 & i12) != 0) {
            i11 += 8;
            i12 >>>= 8;
        }
        if ((i12 & 240) != 0) {
            i11 += 4;
            i12 >>>= 4;
        }
        switch (i12) {
            case 0:
                return 0;
            case 1:
                return i11 + 1;
            case 2:
            case 3:
                return i11 + 2;
            case 4:
            case 5:
            case 6:
            case 7:
                return i11 + 3;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return i11 + 4;
            default:
                return i11;
        }
    }

    private void rehash(int i10) {
        LuaValue[] luaValueArr;
        Slot[] slotArr;
        int i11;
        Slot defaultEntry;
        Metatable metatable = this.m_metatable;
        if (metatable != null && (metatable.useWeakKeys() || this.m_metatable.useWeakValues())) {
            this.hashEntries = countHashKeys();
            if (this.m_metatable.useWeakValues()) {
                dropWeakArrayValues();
            }
        }
        int[] iArr = new int[32];
        int countIntKeys = countIntKeys(iArr);
        if (i10 > 0) {
            countIntKeys++;
            int log2 = log2(i10);
            iArr[log2] = iArr[log2] + 1;
        }
        int i12 = iArr[0];
        int i13 = 1;
        int i14 = 0;
        while (true) {
            if (i13 >= 32) {
                break;
            }
            i12 += iArr[i13];
            int i15 = 1 << i13;
            if (countIntKeys * 2 < i15) {
                break;
            }
            if (i12 >= (1 << (i13 - 1))) {
                i14 = i15;
            }
            i13++;
        }
        LuaValue[] luaValueArr2 = this.array;
        Slot[] slotArr2 = this.hash;
        int i16 = (i10 <= 0 || i10 > i14) ? 0 : -1;
        if (i14 != luaValueArr2.length) {
            luaValueArr = new LuaValue[i14];
            if (i14 > luaValueArr2.length) {
                int log22 = log2(i14) + 1;
                for (int log23 = log2(luaValueArr2.length + 1); log23 < log22; log23++) {
                    i16 += iArr[log23];
                }
            } else if (luaValueArr2.length > i14) {
                int log24 = log2(luaValueArr2.length) + 1;
                for (int log25 = log2(i14 + 1); log25 < log24; log25++) {
                    i16 -= iArr[log25];
                }
            }
            System.arraycopy(luaValueArr2, 0, luaValueArr, 0, Math.min(luaValueArr2.length, i14));
        } else {
            luaValueArr = luaValueArr2;
        }
        int i17 = (this.hashEntries - i16) + ((i10 < 0 || i10 > i14) ? 1 : 0);
        if (i17 > 0) {
            int log26 = i17 >= 2 ? 1 << log2(i17) : 2;
            i11 = log26 - 1;
            slotArr = new Slot[log26];
        } else {
            slotArr = NOBUCKETS;
            i11 = 0;
        }
        for (Slot slot : slotArr2) {
            for (; slot != null; slot = slot.rest()) {
                int arraykey = slot.arraykey(i14);
                if (arraykey > 0) {
                    StrongSlot first = slot.first();
                    if (first != null) {
                        luaValueArr[arraykey - 1] = first.value();
                    }
                } else {
                    int keyindex = slot.keyindex(i11);
                    slotArr[keyindex] = slot.relink(slotArr[keyindex]);
                }
            }
        }
        while (i14 < luaValueArr2.length) {
            int i18 = i14 + 1;
            LuaValue luaValue = luaValueArr2[i14];
            if (luaValue != null) {
                int hashmod = hashmod(LuaInteger.hashCode(i18), i11);
                Metatable metatable2 = this.m_metatable;
                if (metatable2 != null) {
                    defaultEntry = metatable2.entry(LuaValue.valueOf(i18), luaValue);
                    if (defaultEntry == null) {
                    }
                } else {
                    defaultEntry = defaultEntry(LuaValue.valueOf(i18), luaValue);
                }
                Slot slot2 = slotArr[hashmod];
                if (slot2 != null) {
                    defaultEntry = slot2.add(defaultEntry);
                }
                slotArr[hashmod] = defaultEntry;
            }
            i14 = i18;
        }
        this.hash = slotArr;
        this.array = luaValueArr;
        this.hashEntries -= i16;
    }

    private static LuaValue[] resize(LuaValue[] luaValueArr, int i10) {
        LuaValue[] luaValueArr2 = new LuaValue[i10];
        System.arraycopy(luaValueArr, 0, luaValueArr2, 0, luaValueArr.length);
        return luaValueArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
    
        if (compare(r1, r0, r6) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void siftDown(int i10, int i11, LuaValue luaValue) {
        int i12;
        while (true) {
            int i13 = i10 * 2;
            int i14 = i13 + 1;
            if (i14 > i11) {
                return;
            }
            if (i14 < i11) {
                i12 = i13 + 2;
            }
            i12 = i14;
            if (!compare(i10, i12, luaValue)) {
                return;
            }
            swap(i10, i12);
            i10 = i12;
        }
    }

    private void swap(int i10, int i11) {
        LuaValue[] luaValueArr = this.array;
        LuaValue luaValue = luaValueArr[i10];
        luaValueArr[i10] = luaValueArr[i11];
        luaValueArr[i11] = luaValue;
    }

    @Override
    public LuaValue arrayget(LuaValue[] luaValueArr, int i10) {
        return luaValueArr[i10];
    }

    @Override
    public LuaTable checktable() {
        return this;
    }

    public LuaValue concat(LuaString luaString, int i10, int i11) {
        Buffer buffer = new Buffer();
        if (i10 <= i11) {
            while (true) {
                buffer.append(get(i10).checkstring());
                i10++;
                if (i10 > i11) {
                    break;
                }
                buffer.append(luaString);
            }
        }
        return buffer.tostring();
    }

    @Override
    public Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        return defaultEntry(luaValue, luaValue2);
    }

    @Override
    public LuaValue eq(LuaValue luaValue) {
        return eq_b(luaValue) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override
    public boolean eq_b(LuaValue luaValue) {
        if (this == luaValue) {
            return true;
        }
        if (this.m_metatable == null || !luaValue.istable()) {
            return false;
        }
        LuaValue luaValue2 = luaValue.getmetatable();
        return luaValue2 != null && LuaValue.eqmtcall(this, this.m_metatable.toLuaValue(), luaValue, luaValue2);
    }

    @Override
    public LuaValue get(int i10) {
        LuaValue rawget = rawget(i10);
        return (!rawget.isnil() || this.m_metatable == null) ? rawget : LuaValue.gettable(this, LuaValue.valueOf(i10));
    }

    public int getArrayLength() {
        return this.array.length;
    }

    public int getHashLength() {
        return this.hash.length;
    }

    @Override
    public LuaValue getmetatable() {
        Metatable metatable = this.m_metatable;
        if (metatable != null) {
            return metatable.toLuaValue();
        }
        return null;
    }

    public LuaValue hashget(LuaValue luaValue) {
        if (this.hashEntries > 0) {
            for (Slot slot = this.hash[hashSlot(luaValue)]; slot != null; slot = slot.rest()) {
                StrongSlot find = slot.find(luaValue);
                if (find != null) {
                    return find.value();
                }
            }
        }
        return LuaValue.NIL;
    }

    public void hashset(LuaValue luaValue, LuaValue luaValue2) {
        int i10;
        if (luaValue2.isnil()) {
            hashRemove(luaValue);
            return;
        }
        if (this.hash.length > 0) {
            i10 = hashSlot(luaValue);
            for (Slot slot = this.hash[i10]; slot != null; slot = slot.rest()) {
                StrongSlot find = slot.find(luaValue);
                if (find != null) {
                    Slot[] slotArr = this.hash;
                    slotArr[i10] = slotArr[i10].set(find, luaValue2);
                    return;
                }
            }
        } else {
            i10 = 0;
        }
        if (checkLoadFactor()) {
            if (!luaValue.isinttype() || luaValue.toint() <= 0) {
                rehash(-1);
            } else {
                rehash(luaValue.toint());
                if (arrayset(luaValue.toint(), luaValue2)) {
                    return;
                }
            }
            i10 = hashSlot(luaValue);
        }
        Metatable metatable = this.m_metatable;
        Slot entry = metatable != null ? metatable.entry(luaValue, luaValue2) : defaultEntry(luaValue, luaValue2);
        Slot[] slotArr2 = this.hash;
        Slot slot2 = slotArr2[i10];
        if (slot2 != null) {
            entry = slot2.add(entry);
        }
        slotArr2[i10] = entry;
        this.hashEntries++;
    }

    @Override
    public Varargs inext(LuaValue luaValue) {
        int checkint = luaValue.checkint() + 1;
        LuaValue rawget = rawget(checkint);
        return rawget.isnil() ? LuaValue.NONE : LuaValue.varargsOf(LuaInteger.valueOf(checkint), rawget);
    }

    public void insert(int i10, LuaValue luaValue) {
        if (i10 == 0) {
            i10 = rawlen() + 1;
        }
        while (!luaValue.isnil()) {
            LuaValue rawget = rawget(i10);
            rawset(i10, luaValue);
            luaValue = rawget;
            i10++;
        }
    }

    @Override
    public boolean istable() {
        return true;
    }

    public int keyCount() {
        LuaValue luaValue = LuaValue.NIL;
        int i10 = 0;
        while (true) {
            luaValue = next(luaValue).arg1();
            if (luaValue.isnil()) {
                return i10;
            }
            i10++;
        }
    }

    public LuaValue[] keys() {
        Vector vector = new Vector();
        LuaValue luaValue = LuaValue.NIL;
        while (true) {
            luaValue = next(luaValue).arg1();
            if (luaValue.isnil()) {
                LuaValue[] luaValueArr = new LuaValue[vector.size()];
                vector.copyInto(luaValueArr);
                return luaValueArr;
            }
            vector.addElement(luaValue);
        }
    }

    @Override
    public LuaValue len() {
        LuaValue metatag = metatag(LuaValue.LEN);
        return metatag.toboolean() ? metatag.call(this) : LuaInteger.valueOf(rawlen());
    }

    @Override
    public int length() {
        return this.m_metatable != null ? len().toint() : rawlen();
    }

    @Override
    public Varargs next(LuaValue luaValue) {
        int i10;
        int i11 = 0;
        if (!luaValue.isnil()) {
            if (!luaValue.isinttype() || (i10 = luaValue.toint()) <= 0 || i10 > this.array.length) {
                if (this.hash.length == 0) {
                    LuaValue.error("invalid key to 'next'");
                }
                int hashSlot = hashSlot(luaValue);
                for (Slot slot = this.hash[hashSlot]; slot != null; slot = slot.rest()) {
                    if (i11 != 0) {
                        StrongSlot first = slot.first();
                        if (first != null) {
                            return first.toVarargs();
                        }
                    } else if (slot.keyeq(luaValue)) {
                        i11 = 1;
                    }
                }
                if (i11 == 0) {
                    LuaValue.error("invalid key to 'next'");
                }
                i11 = hashSlot + this.array.length + 1;
            } else {
                i11 = i10;
            }
        }
        while (true) {
            LuaValue[] luaValueArr = this.array;
            if (i11 < luaValueArr.length) {
                LuaValue luaValue2 = luaValueArr[i11];
                if (luaValue2 != null) {
                    Metatable metatable = this.m_metatable;
                    if (metatable != null) {
                        luaValue2 = metatable.arrayget(luaValueArr, i11);
                    }
                    if (luaValue2 != null) {
                        return LuaValue.varargsOf(LuaInteger.valueOf(i11 + 1), luaValue2);
                    }
                }
                i11++;
            } else {
                int length = i11 - luaValueArr.length;
                while (true) {
                    Slot[] slotArr = this.hash;
                    if (length >= slotArr.length) {
                        return LuaValue.NIL;
                    }
                    for (Slot slot2 = slotArr[length]; slot2 != null; slot2 = slot2.rest()) {
                        StrongSlot first2 = slot2.first();
                        if (first2 != null) {
                            return first2.toVarargs();
                        }
                    }
                    length++;
                }
            }
        }
    }

    @Override
    public LuaTable opttable(LuaTable luaTable) {
        return this;
    }

    @Override
    public void presize(int i10) {
        LuaValue[] luaValueArr = this.array;
        if (i10 > luaValueArr.length) {
            this.array = resize(luaValueArr, 1 << log2(i10));
        }
    }

    @Override
    public LuaValue rawget(int i10) {
        if (i10 > 0) {
            LuaValue[] luaValueArr = this.array;
            if (i10 <= luaValueArr.length) {
                Metatable metatable = this.m_metatable;
                int i11 = i10 - 1;
                LuaValue arrayget = metatable == null ? luaValueArr[i11] : metatable.arrayget(luaValueArr, i11);
                return arrayget != null ? arrayget : LuaValue.NIL;
            }
        }
        return hashget(LuaInteger.valueOf(i10));
    }

    @Override
    public int rawlen() {
        int arrayLength = getArrayLength();
        int i10 = arrayLength + 1;
        int i11 = 0;
        while (!rawget(i10).isnil()) {
            i11 = i10;
            i10 = getHashLength() + arrayLength + 1 + i10;
        }
        while (i10 > i11 + 1) {
            int i12 = (i10 + i11) / 2;
            if (rawget(i12).isnil()) {
                i10 = i12;
            } else {
                i11 = i12;
            }
        }
        return i11;
    }

    @Override
    public void rawset(int i10, LuaValue luaValue) {
        if (arrayset(i10, luaValue)) {
            return;
        }
        hashset(LuaInteger.valueOf(i10), luaValue);
    }

    public LuaValue remove(int i10) {
        int rawlen = rawlen();
        if (i10 == 0) {
            i10 = rawlen;
        } else if (i10 > rawlen) {
            return LuaValue.NONE;
        }
        LuaValue rawget = rawget(i10);
        LuaValue luaValue = rawget;
        while (!luaValue.isnil()) {
            int i11 = i10 + 1;
            LuaValue rawget2 = rawget(i11);
            rawset(i10, rawget2);
            i10 = i11;
            luaValue = rawget2;
        }
        return rawget.isnil() ? LuaValue.NONE : rawget;
    }

    @Override
    public void set(int i10, LuaValue luaValue) {
        if (this.m_metatable != null && rawget(i10).isnil() && LuaValue.settable(this, LuaInteger.valueOf(i10), luaValue)) {
            return;
        }
        rawset(i10, luaValue);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        if (r3 != (r5 != null && r5.useWeakValues())) goto L28;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public LuaValue setmetatable(LuaValue luaValue) {
        Metatable metatable = this.m_metatable;
        boolean z10 = metatable != null && metatable.useWeakKeys();
        Metatable metatable2 = this.m_metatable;
        boolean z11 = metatable2 != null && metatable2.useWeakValues();
        Metatable metatableOf = LuaValue.metatableOf(luaValue);
        this.m_metatable = metatableOf;
        if (z10 == (metatableOf != null && metatableOf.useWeakKeys())) {
            Metatable metatable3 = this.m_metatable;
        }
        rehash(0);
        return this;
    }

    public void sort(LuaValue luaValue) {
        Metatable metatable = this.m_metatable;
        if (metatable != null && metatable.useWeakValues()) {
            dropWeakArrayValues();
        }
        int length = this.array.length;
        while (length > 0 && this.array[length - 1] == null) {
            length--;
        }
        if (length > 1) {
            heapSort(length, luaValue);
        }
    }

    @Override
    public LuaValue toLuaValue() {
        return this;
    }

    @Override
    public int type() {
        return 5;
    }

    @Override
    public String typename() {
        return "table";
    }

    public Varargs unpack() {
        return unpack(1, rawlen());
    }

    @Override
    public boolean useWeakKeys() {
        return false;
    }

    @Override
    public boolean useWeakValues() {
        return false;
    }

    @Override
    public LuaValue wrap(LuaValue luaValue) {
        return luaValue;
    }

    public LuaTable(int i10, int i11) {
        presize(i10, i11);
    }

    public static int hashSlot(LuaValue luaValue, int i10) {
        int type = luaValue.type();
        return (type == 2 || type == 3 || type == 5 || type == 7 || type == 8) ? hashmod(luaValue.hashCode(), i10) : hashpow2(luaValue.hashCode(), i10);
    }

    @Override
    public LuaValue get(LuaValue luaValue) {
        LuaValue rawget = rawget(luaValue);
        return (!rawget.isnil() || this.m_metatable == null) ? rawget : LuaValue.gettable(this, luaValue);
    }

    public void presize(int i10, int i11) {
        if (i11 > 0 && i11 < 2) {
            i11 = 2;
        }
        this.array = i10 > 0 ? new LuaValue[1 << log2(i10)] : LuaValue.NOVALS;
        this.hash = i11 > 0 ? new Slot[1 << log2(i11)] : NOBUCKETS;
        this.hashEntries = 0;
    }

    @Override
    public LuaValue rawget(LuaValue luaValue) {
        int i10;
        if (luaValue.isinttype() && (i10 = luaValue.toint()) > 0) {
            LuaValue[] luaValueArr = this.array;
            if (i10 <= luaValueArr.length) {
                Metatable metatable = this.m_metatable;
                int i11 = i10 - 1;
                LuaValue arrayget = metatable == null ? luaValueArr[i11] : metatable.arrayget(luaValueArr, i11);
                return arrayget != null ? arrayget : LuaValue.NIL;
            }
        }
        return hashget(luaValue);
    }

    @Override
    public void rawset(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue.isinttype() && arrayset(luaValue.toint(), luaValue2)) {
            return;
        }
        hashset(luaValue, luaValue2);
    }

    @Override
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (!luaValue.isvalidkey() && !metatag(LuaValue.NEWINDEX).isfunction()) {
            typerror("table index");
        }
        if (this.m_metatable != null && rawget(luaValue).isnil() && LuaValue.settable(this, luaValue, luaValue2)) {
            return;
        }
        rawset(luaValue, luaValue2);
    }

    public Varargs unpack(int i10) {
        return unpack(i10, rawlen());
    }

    public LuaTable(Varargs varargs) {
        this(varargs, 1);
    }

    public Varargs unpack(int i10, int i11) {
        int i12 = (i11 + 1) - i10;
        if (i12 == 0) {
            return LuaValue.NONE;
        }
        if (i12 == 1) {
            return get(i10);
        }
        if (i12 == 2) {
            return LuaValue.varargsOf(get(i10), get(i10 + 1));
        }
        if (i12 < 0) {
            return LuaValue.NONE;
        }
        LuaValue[] luaValueArr = new LuaValue[i12];
        while (true) {
            i12--;
            if (i12 < 0) {
                return LuaValue.varargsOf(luaValueArr);
            }
            luaValueArr[i12] = get(i10 + i12);
        }
    }

    public LuaTable(Varargs varargs, int i10) {
        int i11 = i10 - 1;
        int max = Math.max(varargs.narg() - i11, 0);
        presize(max, 1);
        set(f102763N, LuaValue.valueOf(max));
        for (int i12 = 1; i12 <= max; i12++) {
            set(i12, varargs.arg(i12 + i11));
        }
    }

    public LuaTable(LuaValue[] luaValueArr, LuaValue[] luaValueArr2, Varargs varargs) {
        int length = luaValueArr != null ? luaValueArr.length : 0;
        int length2 = luaValueArr2 != null ? luaValueArr2.length : 0;
        presize((varargs != null ? varargs.narg() : 0) + length2, length >> 1);
        int i10 = 0;
        while (i10 < length2) {
            int i11 = i10 + 1;
            rawset(i11, luaValueArr2[i10]);
            i10 = i11;
        }
        if (varargs != null) {
            int narg = varargs.narg();
            for (int i12 = 1; i12 <= narg; i12++) {
                rawset(length2 + i12, varargs.arg(i12));
            }
        }
        for (int i13 = 0; i13 < length; i13 += 2) {
            int i14 = i13 + 1;
            if (!luaValueArr[i14].isnil()) {
                rawset(luaValueArr[i13], luaValueArr[i14]);
            }
        }
    }
}
