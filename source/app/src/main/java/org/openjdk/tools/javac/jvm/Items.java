package org.openjdk.tools.javac.jvm;

import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.jvm.Code;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;

public class Items {
    Code code;
    Pool pool;
    Symtab syms;
    Types types;
    private final Item[] stackItem = new Item[9];
    private final Item voidItem = new Item(8) {
        @Override
        public String toString() {
            return "void";
        }
    };
    private final Item thisItem = new SelfItem(false);
    private final Item superItem = new SelfItem(true);

    public class AssignItem extends Item {
        Item lhs;

        public AssignItem(Item item) {
            super(item.typecode);
            this.lhs = item;
        }

        @Override
        public void drop() {
            this.lhs.store();
        }

        @Override
        public void duplicate() {
            load().duplicate();
        }

        @Override
        public Item load() {
            this.lhs.stash(this.typecode);
            this.lhs.store();
            return Items.this.stackItem[this.typecode];
        }

        @Override
        public void stash(int i10) {
            Assert.error();
        }

        @Override
        public String toString() {
            return "assign(lhs = " + ((Object) this.lhs) + ")";
        }

        @Override
        public int width() {
            return this.lhs.width() + Code.width(this.typecode);
        }
    }

    public class CondItem extends Item {
        Code.Chain falseJumps;
        int opcode;
        JCTree tree;
        Code.Chain trueJumps;

        public CondItem(int i10, Code.Chain chain, Code.Chain chain2) {
            super(5);
            this.opcode = i10;
            this.trueJumps = chain;
            this.falseJumps = chain2;
        }

        @Override
        public void drop() {
            load().drop();
        }

        @Override
        public void duplicate() {
            load().duplicate();
        }

        public boolean isFalse() {
            return this.trueJumps == null && this.opcode == 168;
        }

        public boolean isTrue() {
            return this.falseJumps == null && this.opcode == 167;
        }

        public Code.Chain jumpFalse() {
            if (this.tree == null) {
                return Code.mergeChains(this.falseJumps, Items.this.code.branch(Code.negate(this.opcode)));
            }
            int curCP = Items.this.code.curCP();
            Code.Chain mergeChains = Code.mergeChains(this.falseJumps, Items.this.code.branch(Code.negate(this.opcode)));
            Code code = Items.this.code;
            code.crt.put(this.tree, 256, curCP, code.curCP());
            return mergeChains;
        }

        public Code.Chain jumpTrue() {
            if (this.tree == null) {
                return Code.mergeChains(this.trueJumps, Items.this.code.branch(this.opcode));
            }
            int curCP = Items.this.code.curCP();
            Code.Chain mergeChains = Code.mergeChains(this.trueJumps, Items.this.code.branch(this.opcode));
            Code code = Items.this.code;
            code.crt.put(this.tree, 128, curCP, code.curCP());
            return mergeChains;
        }

        @Override
        public Item load() {
            Code.Chain chain;
            Code.Chain jumpFalse = jumpFalse();
            if (isFalse()) {
                chain = null;
            } else {
                Items.this.code.resolve(this.trueJumps);
                Items.this.code.emitop0(4);
                chain = Items.this.code.branch(167);
            }
            if (jumpFalse != null) {
                Items.this.code.resolve(jumpFalse);
                Items.this.code.emitop0(3);
            }
            Items.this.code.resolve(chain);
            return Items.this.stackItem[this.typecode];
        }

        @Override
        public CondItem mkCond() {
            return this;
        }

        public CondItem negate() {
            CondItem condItem = new CondItem(Code.negate(this.opcode), this.falseJumps, this.trueJumps);
            condItem.tree = this.tree;
            return condItem;
        }

        @Override
        public void stash(int i10) {
            Assert.error();
        }

        @Override
        public String toString() {
            return "cond(" + Code.mnem(this.opcode) + ")";
        }

        @Override
        public int width() {
            throw new AssertionError();
        }
    }

    public class DynamicItem extends StaticItem {
        static final boolean $assertionsDisabled = false;

        public DynamicItem(Symbol symbol) {
            super(symbol);
        }

        @Override
        public Item invoke() {
            Type.MethodType methodType = (Type.MethodType) this.member.erasure(Items.this.types);
            int typecode = Code.typecode(methodType.restype);
            Items items = Items.this;
            items.code.emitInvokedynamic(items.pool.put(this.member), methodType);
            return Items.this.stackItem[typecode];
        }

        @Override
        public Item load() {
            return null;
        }

        @Override
        public void store() {
        }

        @Override
        public String toString() {
            return "dynamic(" + ((Object) this.member) + ")";
        }
    }

    public class ImmediateItem extends Item {
        Object value;

        public ImmediateItem(Type type, Object obj) {
            super(Code.typecode(type));
            this.value = obj;
        }

        private boolean isPosZero(double d10) {
            return d10 == 0.0d && 1.0d / d10 > 0.0d;
        }

        private void ldc() {
            int put = Items.this.pool.put(this.value);
            int i10 = this.typecode;
            if (i10 == 1 || i10 == 3) {
                Items.this.code.emitop2(20, put);
            } else {
                Items.this.code.emitLdc(put);
            }
        }

        @Override
        public Item coerce(int i10) {
            int i11 = this.typecode;
            if (i11 == i10) {
                return this;
            }
            if (i10 == 0) {
                if (Code.truncate(i11) == 0) {
                    return this;
                }
                Items items = Items.this;
                return new ImmediateItem(items.syms.intType, Integer.valueOf(((Number) this.value).intValue()));
            }
            if (i10 == 1) {
                Items items2 = Items.this;
                return new ImmediateItem(items2.syms.longType, Long.valueOf(((Number) this.value).longValue()));
            }
            if (i10 == 2) {
                Items items3 = Items.this;
                return new ImmediateItem(items3.syms.floatType, Float.valueOf(((Number) this.value).floatValue()));
            }
            if (i10 == 3) {
                Items items4 = Items.this;
                return new ImmediateItem(items4.syms.doubleType, Double.valueOf(((Number) this.value).doubleValue()));
            }
            if (i10 == 5) {
                Items items5 = Items.this;
                return new ImmediateItem(items5.syms.byteType, Integer.valueOf((byte) ((Number) this.value).intValue()));
            }
            if (i10 == 6) {
                Items items6 = Items.this;
                return new ImmediateItem(items6.syms.charType, Integer.valueOf((char) ((Number) this.value).intValue()));
            }
            if (i10 != 7) {
                return super.coerce(i10);
            }
            Items items7 = Items.this;
            return new ImmediateItem(items7.syms.shortType, Integer.valueOf((short) ((Number) this.value).intValue()));
        }

        @Override
        public Item load() {
            switch (this.typecode) {
                case 0:
                case 5:
                case 6:
                case 7:
                    int intValue = ((Number) this.value).intValue();
                    if (-1 <= intValue && intValue <= 5) {
                        Items.this.code.emitop0(intValue + 3);
                        break;
                    } else if (-128 <= intValue && intValue <= 127) {
                        Items.this.code.emitop1(16, intValue);
                        break;
                    } else if (-32768 <= intValue && intValue <= 32767) {
                        Items.this.code.emitop2(17, intValue);
                        break;
                    } else {
                        ldc();
                        break;
                    }
                    break;
                case 1:
                    long longValue = ((Number) this.value).longValue();
                    if (longValue != 0 && longValue != 1) {
                        ldc();
                        break;
                    } else {
                        Items.this.code.emitop0(((int) longValue) + 9);
                        break;
                    }
                case 2:
                    float floatValue = ((Number) this.value).floatValue();
                    if (!isPosZero(floatValue)) {
                        double d10 = floatValue;
                        if (d10 != 1.0d && d10 != 2.0d) {
                            ldc();
                            break;
                        }
                    }
                    Items.this.code.emitop0(((int) floatValue) + 11);
                    break;
                case 3:
                    double doubleValue = ((Number) this.value).doubleValue();
                    if (!isPosZero(doubleValue) && doubleValue != 1.0d) {
                        ldc();
                        break;
                    } else {
                        Items.this.code.emitop0(((int) doubleValue) + 14);
                        break;
                    }
                case 4:
                    ldc();
                    break;
                default:
                    Assert.error();
                    break;
            }
            return Items.this.stackItem[this.typecode];
        }

        @Override
        public CondItem mkCond() {
            return Items.this.makeCondItem(((Number) this.value).intValue() != 0 ? 167 : 168);
        }

        @Override
        public String toString() {
            return "immediate(" + this.value + ")";
        }

        private boolean isPosZero(float f10) {
            return f10 == 0.0f && 1.0f / f10 > 0.0f;
        }
    }

    public class IndexedItem extends Item {
        public IndexedItem(Type type) {
            super(Code.typecode(type));
        }

        @Override
        public void drop() {
            Items.this.code.emitop0(88);
        }

        @Override
        public void duplicate() {
            Items.this.code.emitop0(92);
        }

        @Override
        public Item load() {
            Items.this.code.emitop0(this.typecode + 46);
            return Items.this.stackItem[this.typecode];
        }

        @Override
        public void stash(int i10) {
            Items.this.code.emitop0(((Code.width(i10) - 1) * 3) + 91);
        }

        @Override
        public void store() {
            Items.this.code.emitop0(this.typecode + 79);
        }

        @Override
        public String toString() {
            return "indexed(" + ByteCodes.typecodeNames[this.typecode] + ")";
        }

        @Override
        public int width() {
            return 2;
        }
    }

    public class LocalItem extends Item {
        int reg;
        Type type;

        public LocalItem(Type type, int i10) {
            super(Code.typecode(type));
            Assert.check(i10 >= 0);
            this.type = type;
            this.reg = i10;
        }

        public void incr(int i10) {
            if (this.typecode == 0 && i10 >= -32768 && i10 <= 32767) {
                Items.this.code.emitop1w(132, this.reg, i10);
                return;
            }
            load();
            if (i10 >= 0) {
                Items items = Items.this;
                items.makeImmediateItem(items.syms.intType, Integer.valueOf(i10)).load();
                Items.this.code.emitop0(96);
            } else {
                Items items2 = Items.this;
                items2.makeImmediateItem(items2.syms.intType, Integer.valueOf(-i10)).load();
                Items.this.code.emitop0(100);
            }
            Items items3 = Items.this;
            items3.makeStackItem(items3.syms.intType).coerce(this.typecode);
            store();
        }

        @Override
        public Item load() {
            if (this.reg <= 3) {
                Items.this.code.emitop0((Code.truncate(this.typecode) * 4) + 26 + this.reg);
            } else {
                Items.this.code.emitop1w(Code.truncate(this.typecode) + 21, this.reg);
            }
            return Items.this.stackItem[this.typecode];
        }

        @Override
        public void store() {
            if (this.reg <= 3) {
                Items.this.code.emitop0((Code.truncate(this.typecode) * 4) + 59 + this.reg);
            } else {
                Items.this.code.emitop1w(Code.truncate(this.typecode) + 54, this.reg);
            }
            Items.this.code.setDefined(this.reg);
        }

        @Override
        public String toString() {
            return "localItem(type=" + ((Object) this.type) + "; reg=" + this.reg + ")";
        }
    }

    public class MemberItem extends Item {
        Symbol member;
        boolean nonvirtual;

        public MemberItem(Symbol symbol, boolean z10) {
            super(Code.typecode(symbol.erasure(Items.this.types)));
            this.member = symbol;
            this.nonvirtual = z10;
        }

        @Override
        public void drop() {
            Items.this.stackItem[4].drop();
        }

        @Override
        public void duplicate() {
            Items.this.stackItem[4].duplicate();
        }

        @Override
        public Item invoke() {
            Type.MethodType methodType = (Type.MethodType) this.member.externalType(Items.this.types);
            int typecode = Code.typecode(methodType.restype);
            if ((this.member.owner.flags() & 512) != 0 && !this.nonvirtual) {
                Items items = Items.this;
                items.code.emitInvokeinterface(items.pool.put(this.member), methodType);
            } else if (this.nonvirtual) {
                Items items2 = Items.this;
                items2.code.emitInvokespecial(items2.pool.put(this.member), methodType);
            } else {
                Items items3 = Items.this;
                items3.code.emitInvokevirtual(items3.pool.put(this.member), methodType);
            }
            return Items.this.stackItem[typecode];
        }

        @Override
        public Item load() {
            Items items = Items.this;
            items.code.emitop2(180, items.pool.put(this.member));
            return Items.this.stackItem[this.typecode];
        }

        @Override
        public void stash(int i10) {
            Items.this.stackItem[4].stash(i10);
        }

        @Override
        public void store() {
            Items items = Items.this;
            items.code.emitop2(181, items.pool.put(this.member));
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("member(");
            sb2.append((Object) this.member);
            sb2.append(this.nonvirtual ? " nonvirtual)" : ")");
            return sb2.toString();
        }

        @Override
        public int width() {
            return 1;
        }
    }

    public class SelfItem extends Item {
        boolean isSuper;

        public SelfItem(boolean z10) {
            super(4);
            this.isSuper = z10;
        }

        @Override
        public Item load() {
            Items.this.code.emitop0(42);
            return Items.this.stackItem[this.typecode];
        }

        @Override
        public String toString() {
            return this.isSuper ? "super" : "this";
        }
    }

    public class StackItem extends Item {
        public StackItem(int i10) {
            super(i10);
        }

        @Override
        public void drop() {
            Items.this.code.emitop0(width() == 2 ? 88 : 87);
        }

        @Override
        public void duplicate() {
            Items.this.code.emitop0(width() == 2 ? 92 : 89);
        }

        @Override
        public Item load() {
            return this;
        }

        @Override
        public void stash(int i10) {
            Items.this.code.emitop0((width() == 2 ? 91 : 90) + ((Code.width(i10) - 1) * 3));
        }

        @Override
        public String toString() {
            return "stack(" + ByteCodes.typecodeNames[this.typecode] + ")";
        }

        @Override
        public int width() {
            return Code.width(this.typecode);
        }
    }

    public class StaticItem extends Item {
        Symbol member;

        public StaticItem(Symbol symbol) {
            super(Code.typecode(symbol.erasure(Items.this.types)));
            this.member = symbol;
        }

        @Override
        public Item invoke() {
            Type.MethodType methodType = (Type.MethodType) this.member.erasure(Items.this.types);
            int typecode = Code.typecode(methodType.restype);
            Items items = Items.this;
            items.code.emitInvokestatic(items.pool.put(this.member), methodType);
            return Items.this.stackItem[typecode];
        }

        @Override
        public Item load() {
            Items items = Items.this;
            items.code.emitop2(178, items.pool.put(this.member));
            return Items.this.stackItem[this.typecode];
        }

        @Override
        public void store() {
            Items items = Items.this;
            items.code.emitop2(179, items.pool.put(this.member));
        }

        @Override
        public String toString() {
            return "static(" + ((Object) this.member) + ")";
        }
    }

    public Items(Pool pool, Code code, Symtab symtab, Types types) {
        this.code = code;
        this.pool = pool;
        this.types = types;
        for (int i10 = 0; i10 < 8; i10++) {
            this.stackItem[i10] = new StackItem(i10);
        }
        this.stackItem[8] = this.voidItem;
        this.syms = symtab;
    }

    public Item makeAssignItem(Item item) {
        return new AssignItem(item);
    }

    public CondItem makeCondItem(int i10, Code.Chain chain, Code.Chain chain2) {
        return new CondItem(i10, chain, chain2);
    }

    public Item makeDynamicItem(Symbol symbol) {
        return new DynamicItem(symbol);
    }

    public Item makeImmediateItem(Type type, Object obj) {
        return new ImmediateItem(type, obj);
    }

    public Item makeIndexedItem(Type type) {
        return new IndexedItem(type);
    }

    public LocalItem makeLocalItem(Symbol.VarSymbol varSymbol) {
        return new LocalItem(varSymbol.erasure(this.types), varSymbol.adr);
    }

    public Item makeMemberItem(Symbol symbol, boolean z10) {
        return new MemberItem(symbol, z10);
    }

    public Item makeStackItem(Type type) {
        return this.stackItem[Code.typecode(type)];
    }

    public Item makeStaticItem(Symbol symbol) {
        return new StaticItem(symbol);
    }

    public Item makeSuperItem() {
        return this.superItem;
    }

    public Item makeThisItem() {
        return this.thisItem;
    }

    public Item makeVoidItem() {
        return this.voidItem;
    }

    private LocalItem makeLocalItem(Type type, int i10) {
        return new LocalItem(type, i10);
    }

    public CondItem makeCondItem(int i10) {
        return makeCondItem(i10, null, null);
    }

    public abstract class Item {
        int typecode;

        public Item(int i10) {
            this.typecode = i10;
        }

        public Item coerce(int i10) {
            if (this.typecode == i10) {
                return this;
            }
            load();
            int truncate = Code.truncate(this.typecode);
            int truncate2 = Code.truncate(i10);
            if (truncate != truncate2) {
                Items.this.code.emitop0((truncate * 3) + 133 + (truncate2 > truncate ? truncate2 - 1 : truncate2));
            }
            if (i10 != truncate2) {
                Items.this.code.emitop0(i10 + 140);
            }
            return Items.this.stackItem[i10];
        }

        public void drop() {
        }

        public void duplicate() {
        }

        public Item invoke() {
            throw new AssertionError(this);
        }

        public Item load() {
            throw new AssertionError();
        }

        public CondItem mkCond() {
            load();
            return Items.this.makeCondItem(154);
        }

        public void stash(int i10) {
            Items.this.stackItem[i10].duplicate();
        }

        public void store() {
            throw new AssertionError((Object) ("store unsupported: " + ((Object) this)));
        }

        public abstract String toString();

        public int width() {
            return 0;
        }

        public Item coerce(Type type) {
            return coerce(Code.typecode(type));
        }
    }
}
