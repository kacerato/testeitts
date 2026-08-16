package org.luaj.vm2;

import java.lang.ref.WeakReference;
import org.luaj.vm2.LuaTable;

public class WeakTable implements Metatable {
    private LuaValue backing;
    private boolean weakkeys;
    private boolean weakvalues;

    public static class WeakKeyAndValueSlot extends WeakSlot {
        private final int keyhash;

        public WeakKeyAndValueSlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(WeakTable.weaken(luaValue), WeakTable.weaken(luaValue2), slot);
            this.keyhash = luaValue.hashCode();
        }

        @Override
        public WeakSlot copy(LuaTable.Slot slot) {
            return new WeakKeyAndValueSlot(this, slot);
        }

        @Override
        public int keyindex(int i10) {
            return LuaTable.hashmod(this.keyhash, i10);
        }

        @Override
        public LuaTable.Slot set(LuaValue luaValue) {
            this.value = WeakTable.weaken(luaValue);
            return this;
        }

        @Override
        public LuaValue strongkey() {
            return WeakTable.strengthen(this.key);
        }

        @Override
        public LuaValue strongvalue() {
            return WeakTable.strengthen(this.value);
        }

        public WeakKeyAndValueSlot(WeakKeyAndValueSlot weakKeyAndValueSlot, LuaTable.Slot slot) {
            super(weakKeyAndValueSlot.key, weakKeyAndValueSlot.value, slot);
            this.keyhash = weakKeyAndValueSlot.keyhash;
        }
    }

    public static class WeakKeySlot extends WeakSlot {
        private final int keyhash;

        public WeakKeySlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(WeakTable.weaken(luaValue), luaValue2, slot);
            this.keyhash = luaValue.hashCode();
        }

        @Override
        public WeakSlot copy(LuaTable.Slot slot) {
            return new WeakKeySlot(this, slot);
        }

        @Override
        public int keyindex(int i10) {
            return LuaTable.hashmod(this.keyhash, i10);
        }

        @Override
        public LuaTable.Slot set(LuaValue luaValue) {
            this.value = luaValue;
            return this;
        }

        @Override
        public LuaValue strongkey() {
            return WeakTable.strengthen(this.key);
        }

        public WeakKeySlot(WeakKeySlot weakKeySlot, LuaTable.Slot slot) {
            super(weakKeySlot.key, weakKeySlot.value, slot);
            this.keyhash = weakKeySlot.keyhash;
        }
    }

    public static abstract class WeakSlot implements LuaTable.Slot {
        protected Object key;
        protected LuaTable.Slot next;
        protected Object value;

        public WeakSlot(Object obj, Object obj2, LuaTable.Slot slot) {
            this.key = obj;
            this.value = obj2;
            this.next = slot;
        }

        @Override
        public LuaTable.Slot add(LuaTable.Slot slot) {
            LuaTable.Slot slot2 = this.next;
            if (slot2 != null) {
                slot = slot2.add(slot);
            }
            this.next = slot;
            return (strongkey() == null || strongvalue() == null) ? this.next : this;
        }

        @Override
        public int arraykey(int i10) {
            return 0;
        }

        public abstract WeakSlot copy(LuaTable.Slot slot);

        @Override
        public LuaTable.StrongSlot find(LuaValue luaValue) {
            LuaTable.StrongSlot first = first();
            if (first != null) {
                return first.find(luaValue);
            }
            return null;
        }

        @Override
        public LuaTable.StrongSlot first() {
            LuaValue strongkey = strongkey();
            LuaValue strongvalue = strongvalue();
            if (strongkey != null && strongvalue != null) {
                return new LuaTable.NormalEntry(strongkey, strongvalue);
            }
            this.key = null;
            this.value = null;
            return null;
        }

        @Override
        public boolean keyeq(LuaValue luaValue) {
            LuaTable.StrongSlot first = first();
            return first != null && first.keyeq(luaValue);
        }

        @Override
        public abstract int keyindex(int i10);

        @Override
        public LuaTable.Slot relink(LuaTable.Slot slot) {
            return (strongkey() == null || strongvalue() == null) ? slot : (slot == null && this.next == null) ? this : copy(slot);
        }

        @Override
        public LuaTable.Slot remove(LuaTable.StrongSlot strongSlot) {
            LuaValue strongkey = strongkey();
            if (strongkey == null) {
                return this.next.remove(strongSlot);
            }
            if (strongSlot.keyeq(strongkey)) {
                this.value = null;
                return this;
            }
            this.next = this.next.remove(strongSlot);
            return this;
        }

        @Override
        public LuaTable.Slot rest() {
            return this.next;
        }

        @Override
        public LuaTable.Slot set(LuaTable.StrongSlot strongSlot, LuaValue luaValue) {
            LuaValue strongkey = strongkey();
            if (strongkey != null && strongSlot.find(strongkey) != null) {
                return set(luaValue);
            }
            if (strongkey == null) {
                return this.next.set(strongSlot, luaValue);
            }
            this.next = this.next.set(strongSlot, luaValue);
            return this;
        }

        public abstract LuaTable.Slot set(LuaValue luaValue);

        public LuaValue strongkey() {
            return (LuaValue) this.key;
        }

        public LuaValue strongvalue() {
            return (LuaValue) this.value;
        }
    }

    public static final class WeakUserdata extends WeakValue {
        private final LuaValue mt;

        private final WeakReference f102772ob;

        private WeakUserdata(LuaValue luaValue) {
            super(luaValue);
            this.f102772ob = new WeakReference(luaValue.touserdata());
            this.mt = luaValue.getmetatable();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public LuaValue strongvalue() {
            T t10 = this.ref.get();
            if (t10 != 0) {
                return (LuaValue) t10;
            }
            T t11 = this.f102772ob.get();
            if (t11 == 0) {
                return null;
            }
            LuaUserdata userdataOf = LuaValue.userdataOf(t11, this.mt);
            this.ref = new WeakReference(userdataOf);
            return userdataOf;
        }
    }

    public static class WeakValue extends LuaValue {
        WeakReference ref;

        public WeakValue(LuaValue luaValue) {
            this.ref = new WeakReference(luaValue);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean raweq(LuaValue luaValue) {
            T t10 = this.ref.get();
            return t10 != 0 && luaValue.raweq((LuaValue) t10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public LuaValue strongvalue() {
            return (LuaValue) this.ref.get();
        }

        @Override
        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("weak<");
            stringBuffer.append(this.ref.get());
            stringBuffer.append(">");
            return stringBuffer.toString();
        }

        @Override
        public int type() {
            illegal("type", "weak value");
            return 0;
        }

        @Override
        public String typename() {
            illegal("typename", "weak value");
            return null;
        }
    }

    public static class WeakValueSlot extends WeakSlot {
        public WeakValueSlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(luaValue, WeakTable.weaken(luaValue2), slot);
        }

        @Override
        public WeakSlot copy(LuaTable.Slot slot) {
            return new WeakValueSlot(this, slot);
        }

        @Override
        public int keyindex(int i10) {
            return LuaTable.hashSlot(strongkey(), i10);
        }

        @Override
        public LuaTable.Slot set(LuaValue luaValue) {
            this.value = WeakTable.weaken(luaValue);
            return this;
        }

        @Override
        public LuaValue strongvalue() {
            return WeakTable.strengthen(this.value);
        }

        public WeakValueSlot(WeakValueSlot weakValueSlot, LuaTable.Slot slot) {
            super(weakValueSlot.key, weakValueSlot.value, slot);
        }
    }

    public WeakTable(boolean z10, boolean z11, LuaValue luaValue) {
        this.weakkeys = z10;
        this.weakvalues = z11;
        this.backing = luaValue;
    }

    public static LuaTable make(boolean z10, boolean z11) {
        String str;
        if (z10 && z11) {
            str = "kv";
        } else if (z10) {
            str = "k";
        } else {
            if (!z11) {
                return LuaValue.tableOf();
            }
            str = "v";
        }
        LuaString valueOf = LuaString.valueOf(str);
        LuaTable tableOf = LuaValue.tableOf();
        tableOf.setmetatable(LuaValue.tableOf(new LuaValue[]{LuaValue.MODE, valueOf}));
        return tableOf;
    }

    public static LuaValue strengthen(Object obj) {
        if (obj instanceof WeakReference) {
            obj = ((WeakReference) obj).get();
        }
        return obj instanceof WeakValue ? ((WeakValue) obj).strongvalue() : (LuaValue) obj;
    }

    public static LuaValue weaken(LuaValue luaValue) {
        int type = luaValue.type();
        if (type != 5 && type != 6) {
            if (type == 7) {
                return new WeakUserdata(luaValue);
            }
            if (type != 8) {
                return luaValue;
            }
        }
        return new WeakValue(luaValue);
    }

    @Override
    public LuaValue arrayget(LuaValue[] luaValueArr, int i10) {
        LuaValue luaValue = luaValueArr[i10];
        if (luaValue != null && (luaValue = strengthen(luaValue)) == null) {
            luaValueArr[i10] = null;
        }
        return luaValue;
    }

    @Override
    public LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue strongvalue = luaValue2.strongvalue();
        if (strongvalue == null) {
            return null;
        }
        return (!this.weakkeys || luaValue.isnumber() || luaValue.isstring() || luaValue.isboolean()) ? (!this.weakvalues || strongvalue.isnumber() || strongvalue.isstring() || strongvalue.isboolean()) ? LuaTable.defaultEntry(luaValue, strongvalue) : new WeakValueSlot(luaValue, strongvalue, null) : (!this.weakvalues || strongvalue.isnumber() || strongvalue.isstring() || strongvalue.isboolean()) ? new WeakKeySlot(luaValue, strongvalue, null) : new WeakKeyAndValueSlot(luaValue, strongvalue, null);
    }

    @Override
    public LuaValue toLuaValue() {
        return this.backing;
    }

    @Override
    public boolean useWeakKeys() {
        return this.weakkeys;
    }

    @Override
    public boolean useWeakValues() {
        return this.weakvalues;
    }

    @Override
    public LuaValue wrap(LuaValue luaValue) {
        return this.weakvalues ? weaken(luaValue) : luaValue;
    }
}
