package com.android.dx.rop.type;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class Prototype implements Comparable<Prototype> {
    private static final ConcurrentMap<String, Prototype> internTable = new ConcurrentHashMap(10000, 0.75f, 4);
    private final String descriptor;
    private StdTypeList parameterFrameTypes;
    private final StdTypeList parameterTypes;
    private final Type returnType;

    private Prototype(String str, Type type, StdTypeList stdTypeList) {
        if (str == null) {
            throw new NullPointerException("descriptor == null");
        }
        if (type == null) {
            throw new NullPointerException("returnType == null");
        }
        if (stdTypeList == null) {
            throw new NullPointerException("parameterTypes == null");
        }
        this.descriptor = str;
        this.returnType = type;
        this.parameterTypes = stdTypeList;
        this.parameterFrameTypes = null;
    }

    public static void clearInternTable() {
        internTable.clear();
    }

    public static Prototype fromDescriptor(String str) {
        int i10;
        Prototype prototype = internTable.get(str);
        if (prototype != null) {
            return prototype;
        }
        Type[] makeParameterArray = makeParameterArray(str);
        int i11 = 0;
        int i12 = 1;
        while (true) {
            char charAt = str.charAt(i12);
            if (charAt == ')') {
                Type internReturnType = Type.internReturnType(str.substring(i12 + 1));
                StdTypeList stdTypeList = new StdTypeList(i11);
                for (int i13 = 0; i13 < i11; i13++) {
                    stdTypeList.set(i13, makeParameterArray[i13]);
                }
                return new Prototype(str, internReturnType, stdTypeList);
            }
            int i14 = i12;
            while (charAt == '[') {
                i14++;
                charAt = str.charAt(i14);
            }
            if (charAt == 'L') {
                int indexOf = str.indexOf(59, i14);
                if (indexOf == -1) {
                    throw new IllegalArgumentException("bad descriptor");
                }
                i10 = indexOf + 1;
            } else {
                i10 = i14 + 1;
            }
            makeParameterArray[i11] = Type.intern(str.substring(i12, i10));
            i11++;
            i12 = i10;
        }
    }

    public static Prototype intern(String str) {
        if (str != null) {
            Prototype prototype = internTable.get(str);
            return prototype != null ? prototype : putIntern(fromDescriptor(str));
        }
        throw new NullPointerException("descriptor == null");
    }

    public static Prototype internInts(Type type, int i10) {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append('(');
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append('I');
        }
        stringBuffer.append(')');
        stringBuffer.append(type.getDescriptor());
        return intern(stringBuffer.toString());
    }

    private static Type[] makeParameterArray(String str) {
        int length = str.length();
        int i10 = 0;
        if (str.charAt(0) != '(') {
            throw new IllegalArgumentException("bad descriptor");
        }
        int i11 = 0;
        int i12 = 1;
        while (true) {
            if (i12 >= length) {
                break;
            }
            char charAt = str.charAt(i12);
            if (charAt == ')') {
                i10 = i12;
                break;
            }
            if (charAt >= 'A' && charAt <= 'Z') {
                i11++;
            }
            i12++;
        }
        if (i10 == 0 || i10 == length - 1) {
            throw new IllegalArgumentException("bad descriptor");
        }
        if (str.indexOf(41, i10 + 1) == -1) {
            return new Type[i11];
        }
        throw new IllegalArgumentException("bad descriptor");
    }

    private static Prototype putIntern(Prototype prototype) {
        Prototype putIfAbsent = internTable.putIfAbsent(prototype.getDescriptor(), prototype);
        return putIfAbsent != null ? putIfAbsent : prototype;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Prototype) {
            return this.descriptor.equals(((Prototype) obj).descriptor);
        }
        return false;
    }

    public String getDescriptor() {
        return this.descriptor;
    }

    public StdTypeList getParameterFrameTypes() {
        if (this.parameterFrameTypes == null) {
            int size = this.parameterTypes.size();
            StdTypeList stdTypeList = new StdTypeList(size);
            boolean z10 = false;
            for (int i10 = 0; i10 < size; i10++) {
                Type type = this.parameterTypes.get(i10);
                if (type.isIntlike()) {
                    type = Type.INT;
                    z10 = true;
                }
                stdTypeList.set(i10, type);
            }
            if (!z10) {
                stdTypeList = this.parameterTypes;
            }
            this.parameterFrameTypes = stdTypeList;
        }
        return this.parameterFrameTypes;
    }

    public StdTypeList getParameterTypes() {
        return this.parameterTypes;
    }

    public Type getReturnType() {
        return this.returnType;
    }

    public int hashCode() {
        return this.descriptor.hashCode();
    }

    public String toString() {
        return this.descriptor;
    }

    public Prototype withFirstParameter(Type type) {
        String str = "(" + type.getDescriptor() + this.descriptor.substring(1);
        StdTypeList withFirst = this.parameterTypes.withFirst(type);
        withFirst.setImmutable();
        return putIntern(new Prototype(str, this.returnType, withFirst));
    }

    @Override
    public int compareTo(Prototype prototype) {
        if (this == prototype) {
            return 0;
        }
        int compareTo = this.returnType.compareTo(prototype.returnType);
        if (compareTo != 0) {
            return compareTo;
        }
        int size = this.parameterTypes.size();
        int size2 = prototype.parameterTypes.size();
        int min = Math.min(size, size2);
        for (int i10 = 0; i10 < min; i10++) {
            int compareTo2 = this.parameterTypes.get(i10).compareTo(prototype.parameterTypes.get(i10));
            if (compareTo2 != 0) {
                return compareTo2;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }

    public static Prototype intern(String str, Type type, boolean z10, boolean z11) {
        Prototype intern = intern(str);
        if (z10) {
            return intern;
        }
        if (z11) {
            type = type.asUninitialized(Integer.MAX_VALUE);
        }
        return intern.withFirstParameter(type);
    }
}
