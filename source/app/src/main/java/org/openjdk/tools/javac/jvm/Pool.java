package org.openjdk.tools.javac.jvm;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.jvm.Pool;
import org.openjdk.tools.javac.util.ArrayUtils;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class Pool {
    public static final int MAX_ENTRIES = 65535;
    public static final int MAX_STRING_LENGTH = 65535;
    Map<Object, Integer> indices;
    Object[] pool;
    int pp;
    Types types;

    public static class DynamicMethod extends Method {
        public Object[] uniqueStaticArgs;

        public static class BootstrapMethodsKey extends DynamicMethod {
            public BootstrapMethodsKey(Symbol.DynamicMethodSymbol dynamicMethodSymbol, Types types) {
                super(dynamicMethodSymbol, types);
            }

            @Override
            public boolean equals(Object obj) {
                return equalsImpl(obj, false);
            }

            public Object[] getUniqueArgs() {
                return this.uniqueStaticArgs;
            }

            @Override
            public int hashCode() {
                return hashCodeImpl(false);
            }
        }

        public static class BootstrapMethodsValue {
            final int index;

            final MethodHandle f103249mh;

            public BootstrapMethodsValue(MethodHandle methodHandle, int i10) {
                this.f103249mh = methodHandle;
                this.index = i10;
            }
        }

        public DynamicMethod(Symbol.DynamicMethodSymbol dynamicMethodSymbol, Types types) {
            super(dynamicMethodSymbol, types);
            this.uniqueStaticArgs = getUniqueTypeArray(dynamicMethodSymbol.staticArgs, types);
        }

        private Object[] getUniqueTypeArray(Object[] objArr, Types types) {
            Object[] objArr2 = new Object[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj instanceof Type) {
                    objArr2[i10] = new Types.UniqueType((Type) obj, types);
                } else {
                    objArr2[i10] = obj;
                }
            }
            return objArr2;
        }

        @Override
        public boolean equals(Object obj) {
            return equalsImpl(obj, true);
        }

        public boolean equalsImpl(Object obj, boolean z10) {
            if ((z10 && !super.equals(obj)) || !(obj instanceof DynamicMethod)) {
                return false;
            }
            Symbol.DynamicMethodSymbol dynamicMethodSymbol = (Symbol.DynamicMethodSymbol) this.other;
            DynamicMethod dynamicMethod = (DynamicMethod) obj;
            Symbol.DynamicMethodSymbol dynamicMethodSymbol2 = (Symbol.DynamicMethodSymbol) dynamicMethod.other;
            return dynamicMethodSymbol.bsm == dynamicMethodSymbol2.bsm && dynamicMethodSymbol.bsmKind == dynamicMethodSymbol2.bsmKind && Arrays.equals(this.uniqueStaticArgs, dynamicMethod.uniqueStaticArgs);
        }

        @Override
        public int hashCode() {
            return hashCodeImpl(true);
        }

        public int hashCodeImpl(boolean z10) {
            int hashCode = z10 ? super.hashCode() : 0;
            Symbol.DynamicMethodSymbol dynamicMethodSymbol = (Symbol.DynamicMethodSymbol) this.other;
            int hashCode2 = hashCode + (dynamicMethodSymbol.bsmKind * 7) + (dynamicMethodSymbol.bsm.hashCode() * 11);
            for (int i10 = 0; i10 < dynamicMethodSymbol.staticArgs.length; i10++) {
                hashCode2 += this.uniqueStaticArgs[i10].hashCode() * 23;
            }
            return hashCode2;
        }
    }

    public static class Method extends Symbol.DelegatedSymbol<Symbol.MethodSymbol> {
        Types.UniqueType uniqueType;

        public Method(Symbol.MethodSymbol methodSymbol, Types types) {
            super(methodSymbol);
            this.uniqueType = new Types.UniqueType(methodSymbol.type, types);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Method)) {
                return false;
            }
            Method method = (Method) obj;
            Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) method.other;
            Symbol.MethodSymbol methodSymbol2 = (Symbol.MethodSymbol) this.other;
            return methodSymbol.name == methodSymbol2.name && methodSymbol.owner == methodSymbol2.owner && method.uniqueType.equals(this.uniqueType);
        }

        public int hashCode() {
            Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) this.other;
            return (methodSymbol.name.hashCode() * 33) + (methodSymbol.owner.hashCode() * 9) + this.uniqueType.hashCode();
        }
    }

    public static class MethodHandle {
        int refKind;
        Symbol refSym;
        Types.UniqueType uniqueType;
        Filter<Name> nonInitFilter = new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$new$0;
                lambda$new$0 = Pool.MethodHandle.lambda$new$0((Name) obj);
                return lambda$new$0;
            }
        };
        Filter<Name> initFilter = new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$new$1;
                lambda$new$1 = Pool.MethodHandle.lambda$new$1((Name) obj);
                return lambda$new$1;
            }
        };

        public MethodHandle(int i10, Symbol symbol, Types types) {
            this.refKind = i10;
            this.refSym = symbol;
            this.uniqueType = new Types.UniqueType(symbol.type, types);
            checkConsistent();
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
        private void checkConsistent() {
            boolean z10;
            Kinds.Kind kind;
            boolean z11;
            Kinds.Kind kind2;
            Kinds.Kind kind3;
            Filter<Name> filter = this.nonInitFilter;
            boolean z12 = true;
            switch (this.refKind) {
                case 1:
                case 3:
                    z10 = false;
                    kind = Kinds.Kind.VAR;
                    z11 = false;
                    break;
                case 2:
                case 4:
                    z10 = true;
                    kind = Kinds.Kind.VAR;
                    z11 = false;
                    break;
                case 5:
                    z10 = false;
                    z11 = z10;
                    kind = Kinds.Kind.MTH;
                    break;
                case 6:
                    z10 = true;
                    z11 = z10;
                    kind = Kinds.Kind.MTH;
                    break;
                case 7:
                    kind2 = Kinds.Kind.MTH;
                    kind = kind2;
                    z11 = true;
                    z10 = false;
                    break;
                case 8:
                    filter = this.initFilter;
                    kind3 = Kinds.Kind.MTH;
                    kind = kind3;
                    z10 = false;
                    z11 = false;
                    break;
                case 9:
                    kind2 = Kinds.Kind.MTH;
                    kind = kind2;
                    z11 = true;
                    z10 = false;
                    break;
                default:
                    kind3 = null;
                    kind = kind3;
                    z10 = false;
                    z11 = false;
                    break;
            }
            Assert.check(!this.refSym.isStatic() || z10);
            Assert.check(this.refSym.kind == kind);
            Assert.check(filter.accepts(this.refSym.name));
            if (this.refSym.owner.isInterface() && !z11) {
                z12 = false;
            }
            Assert.check(z12);
        }

        public static boolean lambda$new$0(Name name) {
            Names names = name.table.names;
            return (name == names.init || name == names.clinit) ? false : true;
        }

        public static boolean lambda$new$1(Name name) {
            return name == name.table.names.init;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof MethodHandle)) {
                return false;
            }
            MethodHandle methodHandle = (MethodHandle) obj;
            if (methodHandle.refKind != this.refKind) {
                return false;
            }
            Symbol symbol = methodHandle.refSym;
            Name name = symbol.name;
            Symbol symbol2 = this.refSym;
            return name == symbol2.name && symbol.owner == symbol2.owner && methodHandle.uniqueType.equals(this.uniqueType);
        }

        public int hashCode() {
            return (this.refKind * 65) + (this.refSym.name.hashCode() * 33) + (this.refSym.owner.hashCode() * 9) + this.uniqueType.hashCode();
        }
    }

    public static class Variable extends Symbol.DelegatedSymbol<Symbol.VarSymbol> {
        Types.UniqueType uniqueType;

        public Variable(Symbol.VarSymbol varSymbol, Types types) {
            super(varSymbol);
            this.uniqueType = new Types.UniqueType(varSymbol.type, types);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof Variable)) {
                return false;
            }
            Variable variable = (Variable) obj;
            Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) variable.other;
            Symbol.VarSymbol varSymbol2 = (Symbol.VarSymbol) this.other;
            return varSymbol.name == varSymbol2.name && varSymbol.owner == varSymbol2.owner && variable.uniqueType.equals(this.uniqueType);
        }

        @Override
        public int hashCode() {
            Symbol.VarSymbol varSymbol = (Symbol.VarSymbol) this.other;
            return (varSymbol.name.hashCode() * 33) + (varSymbol.owner.hashCode() * 9) + this.uniqueType.hashCode();
        }
    }

    public Pool(int i10, Object[] objArr, Types types) {
        this.pp = i10;
        this.pool = objArr;
        this.types = types;
        this.indices = new HashMap(objArr.length);
        for (int i11 = 1; i11 < i10; i11++) {
            Object obj = objArr[i11];
            if (obj != null) {
                this.indices.put(obj, Integer.valueOf(i11));
            }
        }
    }

    public int get(Object obj) {
        Integer num = this.indices.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public Object makePoolValue(Object obj) {
        if (obj instanceof Symbol.DynamicMethodSymbol) {
            return new DynamicMethod((Symbol.DynamicMethodSymbol) obj, this.types);
        }
        if (obj instanceof Symbol.MethodSymbol) {
            return new Method((Symbol.MethodSymbol) obj, this.types);
        }
        if (obj instanceof Symbol.VarSymbol) {
            return new Variable((Symbol.VarSymbol) obj, this.types);
        }
        if (!(obj instanceof Type)) {
            return obj;
        }
        Type type = (Type) obj;
        return type.hasTag(TypeTag.CLASS) ? type.tsym : new Types.UniqueType(type, this.types);
    }

    public int numEntries() {
        return this.pp;
    }

    public int put(Object obj) {
        Object makePoolValue = makePoolValue(obj);
        boolean z10 = true;
        Assert.check(!(makePoolValue instanceof Type.TypeVar));
        if ((makePoolValue instanceof Types.UniqueType) && (((Types.UniqueType) makePoolValue).type instanceof Type.TypeVar)) {
            z10 = false;
        }
        Assert.check(z10);
        Integer num = this.indices.get(makePoolValue);
        if (num == null) {
            num = Integer.valueOf(this.pp);
            this.indices.put(makePoolValue, num);
            Object[] ensureCapacity = ArrayUtils.ensureCapacity(this.pool, this.pp);
            this.pool = ensureCapacity;
            int i10 = this.pp;
            int i11 = i10 + 1;
            this.pp = i11;
            ensureCapacity[i10] = makePoolValue;
            if ((makePoolValue instanceof Long) || (makePoolValue instanceof Double)) {
                Object[] ensureCapacity2 = ArrayUtils.ensureCapacity(ensureCapacity, i11);
                this.pool = ensureCapacity2;
                int i12 = this.pp;
                this.pp = i12 + 1;
                ensureCapacity2[i12] = null;
            }
        }
        return num.intValue();
    }

    public void reset() {
        this.pp = 1;
        this.indices.clear();
    }

    public Pool(Types types) {
        this(1, new Object[64], types);
    }
}
