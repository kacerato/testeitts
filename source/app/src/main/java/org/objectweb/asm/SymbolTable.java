package org.objectweb.asm;

import java.lang.classfile.Attributes;

public final class SymbolTable {
    private int bootstrapMethodCount;
    private ByteVector bootstrapMethods;
    private String className;
    final ClassWriter classWriter;
    private ByteVector constantPool;
    private int constantPoolCount;
    private Entry[] entries;
    private int entryCount;
    private int majorVersion;
    private final ClassReader sourceClassReader;
    private int typeCount;
    private Entry[] typeTable;

    public SymbolTable(ClassWriter classWriter) {
        this.classWriter = classWriter;
        this.sourceClassReader = null;
        this.entries = new Entry[256];
        this.constantPoolCount = 1;
        this.constantPool = new ByteVector();
    }

    private void add(Entry entry) {
        this.entryCount++;
        int i10 = entry.hashCode;
        Entry[] entryArr = this.entries;
        int length = i10 % entryArr.length;
        entry.next = entryArr[length];
        entryArr[length] = entry;
    }

    private Symbol addConstantDynamicOrInvokeDynamicReference(int i10, String str, String str2, int i11) {
        int hash = hash(i10, str, str2, i11);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == i10 && entry.hashCode == hash && entry.data == i11 && entry.name.equals(str) && entry.value.equals(str2)) {
                return entry;
            }
        }
        this.constantPool.put122(i10, i11, addConstantNameAndType(str, str2));
        int i12 = this.constantPoolCount;
        this.constantPoolCount = i12 + 1;
        return put(new Entry(i12, i10, null, str, str2, i11, hash));
    }

    private Symbol addConstantIntegerOrFloat(int i10, int i11) {
        int hash = hash(i10, i11);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == i10 && entry.hashCode == hash && entry.data == i11) {
                return entry;
            }
        }
        this.constantPool.putByte(i10).putInt(i11);
        int i12 = this.constantPoolCount;
        this.constantPoolCount = i12 + 1;
        return put(new Entry(i12, i10, i11, hash));
    }

    private Symbol addConstantLongOrDouble(int i10, long j10) {
        int hash = hash(i10, j10);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == i10 && entry.hashCode == hash && entry.data == j10) {
                return entry;
            }
        }
        int i11 = this.constantPoolCount;
        this.constantPool.putByte(i10).putLong(j10);
        this.constantPoolCount += 2;
        return put(new Entry(i11, i10, j10, hash));
    }

    private Entry addConstantMemberReference(int i10, String str, String str2, String str3) {
        int hash = hash(i10, str, str2, str3);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == i10 && entry.hashCode == hash && entry.owner.equals(str) && entry.name.equals(str2) && entry.value.equals(str3)) {
                return entry;
            }
        }
        this.constantPool.put122(i10, addConstantClass(str).index, addConstantNameAndType(str2, str3));
        int i11 = this.constantPoolCount;
        this.constantPoolCount = i11 + 1;
        return put(new Entry(i11, i10, str, str2, str3, 0L, hash));
    }

    private Symbol addConstantUtf8Reference(int i10, String str) {
        int hash = hash(i10, str);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == i10 && entry.hashCode == hash && entry.value.equals(str)) {
                return entry;
            }
        }
        this.constantPool.put12(i10, addConstantUtf8(str));
        int i11 = this.constantPoolCount;
        this.constantPoolCount = i11 + 1;
        return put(new Entry(i11, i10, str, hash));
    }

    private int addTypeInternal(Entry entry) {
        if (this.typeTable == null) {
            this.typeTable = new Entry[16];
        }
        int i10 = this.typeCount;
        Entry[] entryArr = this.typeTable;
        if (i10 == entryArr.length) {
            Entry[] entryArr2 = new Entry[entryArr.length * 2];
            System.arraycopy(entryArr, 0, entryArr2, 0, entryArr.length);
            this.typeTable = entryArr2;
        }
        Entry[] entryArr3 = this.typeTable;
        int i11 = this.typeCount;
        this.typeCount = i11 + 1;
        entryArr3[i11] = entry;
        return put(entry).index;
    }

    private void copyBootstrapMethods(ClassReader classReader, char[] cArr) {
        byte[] bArr = classReader.classFileBuffer;
        int firstAttributeOffset = classReader.getFirstAttributeOffset();
        int readUnsignedShort = classReader.readUnsignedShort(firstAttributeOffset - 2);
        while (true) {
            if (readUnsignedShort <= 0) {
                break;
            }
            if (Attributes.NAME_BOOTSTRAP_METHODS.equals(classReader.readUTF8(firstAttributeOffset, cArr))) {
                this.bootstrapMethodCount = classReader.readUnsignedShort(firstAttributeOffset + 6);
                break;
            } else {
                firstAttributeOffset += classReader.readInt(firstAttributeOffset + 2) + 6;
                readUnsignedShort--;
            }
        }
        if (this.bootstrapMethodCount > 0) {
            int i10 = firstAttributeOffset + 8;
            int readInt = classReader.readInt(firstAttributeOffset + 2) - 2;
            ByteVector byteVector = new ByteVector(readInt);
            this.bootstrapMethods = byteVector;
            byteVector.putByteArray(bArr, i10, readInt);
            int i11 = i10;
            for (int i12 = 0; i12 < this.bootstrapMethodCount; i12++) {
                int i13 = i11 - i10;
                int readUnsignedShort2 = classReader.readUnsignedShort(i11);
                int readUnsignedShort3 = classReader.readUnsignedShort(i11 + 2);
                i11 += 4;
                int hashCode = classReader.readConst(readUnsignedShort2, cArr).hashCode();
                while (true) {
                    int i14 = readUnsignedShort3 - 1;
                    if (readUnsignedShort3 > 0) {
                        int readUnsignedShort4 = classReader.readUnsignedShort(i11);
                        i11 += 2;
                        hashCode ^= classReader.readConst(readUnsignedShort4, cArr).hashCode();
                        readUnsignedShort3 = i14;
                    }
                }
                add(new Entry(i12, 64, i13, hashCode & Integer.MAX_VALUE));
            }
        }
    }

    private Entry get(int i10) {
        Entry[] entryArr = this.entries;
        return entryArr[i10 % entryArr.length];
    }

    private static int hash(int i10, int i11) {
        return (i10 + i11) & Integer.MAX_VALUE;
    }

    private Entry put(Entry entry) {
        int i10 = this.entryCount;
        Entry[] entryArr = this.entries;
        if (i10 > (entryArr.length * 3) / 4) {
            int length = entryArr.length;
            int i11 = (length * 2) + 1;
            Entry[] entryArr2 = new Entry[i11];
            for (int i12 = length - 1; i12 >= 0; i12--) {
                Entry entry2 = this.entries[i12];
                while (entry2 != null) {
                    int i13 = entry2.hashCode % i11;
                    Entry entry3 = entry2.next;
                    entry2.next = entryArr2[i13];
                    entryArr2[i13] = entry2;
                    entry2 = entry3;
                }
            }
            this.entries = entryArr2;
        }
        this.entryCount++;
        int i14 = entry.hashCode;
        Entry[] entryArr3 = this.entries;
        int length2 = i14 % entryArr3.length;
        entry.next = entryArr3[length2];
        entryArr3[length2] = entry;
        return entry;
    }

    public Symbol addBootstrapMethod(Handle handle, Object... objArr) {
        ByteVector byteVector = this.bootstrapMethods;
        if (byteVector == null) {
            byteVector = new ByteVector();
            this.bootstrapMethods = byteVector;
        }
        int length = objArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = addConstant(objArr[i10]).index;
        }
        int i11 = byteVector.length;
        byteVector.putShort(addConstantMethodHandle(handle.getTag(), handle.getOwner(), handle.getName(), handle.getDesc(), handle.isInterface()).index);
        byteVector.putShort(length);
        for (int i12 = 0; i12 < length; i12++) {
            byteVector.putShort(iArr[i12]);
        }
        int i13 = byteVector.length - i11;
        int hashCode = handle.hashCode();
        for (Object obj : objArr) {
            hashCode ^= obj.hashCode();
        }
        return addBootstrapMethod(i11, i13, hashCode & Integer.MAX_VALUE);
    }

    public Symbol addConstant(Object obj) {
        if (obj instanceof Integer) {
            return addConstantInteger(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return addConstantInteger(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return addConstantInteger(((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return addConstantInteger(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return addConstantInteger(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return addConstantFloat(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return addConstantLong(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return addConstantDouble(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return addConstantString((String) obj);
        }
        if (obj instanceof Type) {
            Type type = (Type) obj;
            int sort = type.getSort();
            return sort == 10 ? addConstantClass(type.getInternalName()) : sort == 11 ? addConstantMethodType(type.getDescriptor()) : addConstantClass(type.getDescriptor());
        }
        if (obj instanceof Handle) {
            Handle handle = (Handle) obj;
            return addConstantMethodHandle(handle.getTag(), handle.getOwner(), handle.getName(), handle.getDesc(), handle.isInterface());
        }
        if (obj instanceof ConstantDynamic) {
            ConstantDynamic constantDynamic = (ConstantDynamic) obj;
            return addConstantDynamic(constantDynamic.getName(), constantDynamic.getDescriptor(), constantDynamic.getBootstrapMethod(), constantDynamic.getBootstrapMethodArgumentsUnsafe());
        }
        throw new IllegalArgumentException("value " + obj);
    }

    public Symbol addConstantClass(String str) {
        return addConstantUtf8Reference(7, str);
    }

    public Symbol addConstantDouble(double d10) {
        return addConstantLongOrDouble(6, Double.doubleToRawLongBits(d10));
    }

    public Symbol addConstantDynamic(String str, String str2, Handle handle, Object... objArr) {
        return addConstantDynamicOrInvokeDynamicReference(17, str, str2, addBootstrapMethod(handle, objArr).index);
    }

    public Symbol addConstantFieldref(String str, String str2, String str3) {
        return addConstantMemberReference(9, str, str2, str3);
    }

    public Symbol addConstantFloat(float f10) {
        return addConstantIntegerOrFloat(4, Float.floatToRawIntBits(f10));
    }

    public Symbol addConstantInteger(int i10) {
        return addConstantIntegerOrFloat(3, i10);
    }

    public Symbol addConstantInvokeDynamic(String str, String str2, Handle handle, Object... objArr) {
        return addConstantDynamicOrInvokeDynamicReference(18, str, str2, addBootstrapMethod(handle, objArr).index);
    }

    public Symbol addConstantLong(long j10) {
        return addConstantLongOrDouble(5, j10);
    }

    public Symbol addConstantMethodHandle(int i10, String str, String str2, String str3, boolean z10) {
        int hash = hash(15, str, str2, str3, i10);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == 15 && entry.hashCode == hash && entry.data == i10 && entry.owner.equals(str) && entry.name.equals(str2) && entry.value.equals(str3)) {
                return entry;
            }
        }
        if (i10 <= 4) {
            this.constantPool.put112(15, i10, addConstantFieldref(str, str2, str3).index);
        } else {
            this.constantPool.put112(15, i10, addConstantMethodref(str, str2, str3, z10).index);
        }
        int i11 = this.constantPoolCount;
        this.constantPoolCount = i11 + 1;
        return put(new Entry(i11, 15, str, str2, str3, i10, hash));
    }

    public Symbol addConstantMethodType(String str) {
        return addConstantUtf8Reference(16, str);
    }

    public Symbol addConstantMethodref(String str, String str2, String str3, boolean z10) {
        return addConstantMemberReference(z10 ? 11 : 10, str, str2, str3);
    }

    public Symbol addConstantModule(String str) {
        return addConstantUtf8Reference(19, str);
    }

    public int addConstantNameAndType(String str, String str2) {
        int hash = hash(12, str, str2);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == 12 && entry.hashCode == hash && entry.name.equals(str) && entry.value.equals(str2)) {
                return entry.index;
            }
        }
        this.constantPool.put122(12, addConstantUtf8(str), addConstantUtf8(str2));
        int i10 = this.constantPoolCount;
        this.constantPoolCount = i10 + 1;
        return put(new Entry(i10, 12, str, str2, hash)).index;
    }

    public Symbol addConstantPackage(String str) {
        return addConstantUtf8Reference(20, str);
    }

    public Symbol addConstantString(String str) {
        return addConstantUtf8Reference(8, str);
    }

    public int addConstantUtf8(String str) {
        int hash = hash(1, str);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == 1 && entry.hashCode == hash && entry.value.equals(str)) {
                return entry.index;
            }
        }
        this.constantPool.putByte(1).putUTF8(str);
        int i10 = this.constantPoolCount;
        this.constantPoolCount = i10 + 1;
        return put(new Entry(i10, 1, str, hash)).index;
    }

    public int addMergedType(int i10, int i11) {
        long j10;
        long j11;
        if (i10 < i11) {
            j10 = i10;
            j11 = i11;
        } else {
            j10 = i11;
            j11 = i10;
        }
        long j12 = j10 | (j11 << 32);
        int hash = hash(130, i10 + i11);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == 130 && entry.hashCode == hash && entry.data == j12) {
                return entry.info;
            }
        }
        Entry[] entryArr = this.typeTable;
        int addType = addType(this.classWriter.getCommonSuperClass(entryArr[i10].value, entryArr[i11].value));
        put(new Entry(this.typeCount, 130, j12, hash)).info = addType;
        return addType;
    }

    public int addType(String str) {
        int hash = hash(128, str);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == 128 && entry.hashCode == hash && entry.value.equals(str)) {
                return entry.index;
            }
        }
        return addTypeInternal(new Entry(this.typeCount, 128, str, hash));
    }

    public int addUninitializedType(String str, int i10) {
        int hash = hash(129, str, i10);
        for (Entry entry = get(hash); entry != null; entry = entry.next) {
            if (entry.tag == 129 && entry.hashCode == hash && entry.data == i10 && entry.value.equals(str)) {
                return entry.index;
            }
        }
        return addTypeInternal(new Entry(this.typeCount, 129, str, i10, hash));
    }

    public int computeBootstrapMethodsSize() {
        if (this.bootstrapMethods == null) {
            return 0;
        }
        addConstantUtf8(Attributes.NAME_BOOTSTRAP_METHODS);
        return this.bootstrapMethods.length + 8;
    }

    public String getClassName() {
        return this.className;
    }

    public int getConstantPoolCount() {
        return this.constantPoolCount;
    }

    public int getConstantPoolLength() {
        return this.constantPool.length;
    }

    public int getMajorVersion() {
        return this.majorVersion;
    }

    public ClassReader getSource() {
        return this.sourceClassReader;
    }

    public Symbol getType(int i10) {
        return this.typeTable[i10];
    }

    public void putBootstrapMethods(ByteVector byteVector) {
        if (this.bootstrapMethods != null) {
            ByteVector putShort = byteVector.putShort(addConstantUtf8(Attributes.NAME_BOOTSTRAP_METHODS)).putInt(this.bootstrapMethods.length + 2).putShort(this.bootstrapMethodCount);
            ByteVector byteVector2 = this.bootstrapMethods;
            putShort.putByteArray(byteVector2.data, 0, byteVector2.length);
        }
    }

    public void putConstantPool(ByteVector byteVector) {
        ByteVector putShort = byteVector.putShort(this.constantPoolCount);
        ByteVector byteVector2 = this.constantPool;
        putShort.putByteArray(byteVector2.data, 0, byteVector2.length);
    }

    public int setMajorVersionAndClassName(int i10, String str) {
        this.majorVersion = i10;
        this.className = str;
        return addConstantClass(str).index;
    }

    public static class Entry extends Symbol {
        final int hashCode;
        Entry next;

        public Entry(int i10, int i11, String str, String str2, String str3, long j10, int i12) {
            super(i10, i11, str, str2, str3, j10);
            this.hashCode = i12;
        }

        public Entry(int i10, int i11, String str, int i12) {
            super(i10, i11, null, null, str, 0L);
            this.hashCode = i12;
        }

        public Entry(int i10, int i11, String str, long j10, int i12) {
            super(i10, i11, null, null, str, j10);
            this.hashCode = i12;
        }

        public Entry(int i10, int i11, String str, String str2, int i12) {
            super(i10, i11, null, str, str2, 0L);
            this.hashCode = i12;
        }

        public Entry(int i10, int i11, long j10, int i12) {
            super(i10, i11, null, null, null, j10);
            this.hashCode = i12;
        }
    }

    private static int hash(int i10, long j10) {
        return (i10 + ((int) j10) + ((int) (j10 >>> 32))) & Integer.MAX_VALUE;
    }

    private static int hash(int i10, String str) {
        return (i10 + str.hashCode()) & Integer.MAX_VALUE;
    }

    private static int hash(int i10, String str, int i11) {
        return (i10 + str.hashCode() + i11) & Integer.MAX_VALUE;
    }

    private static int hash(int i10, String str, String str2) {
        return (i10 + (str.hashCode() * str2.hashCode())) & Integer.MAX_VALUE;
    }

    private static int hash(int i10, String str, String str2, int i11) {
        return (i10 + (str.hashCode() * str2.hashCode() * (i11 + 1))) & Integer.MAX_VALUE;
    }

    public SymbolTable(ClassWriter classWriter, ClassReader classReader) {
        this.classWriter = classWriter;
        this.sourceClassReader = classReader;
        byte[] bArr = classReader.classFileBuffer;
        int item = classReader.getItem(1) - 1;
        int i10 = classReader.header - item;
        this.constantPoolCount = classReader.getItemCount();
        ByteVector byteVector = new ByteVector(i10);
        this.constantPool = byteVector;
        byteVector.putByteArray(bArr, item, i10);
        this.entries = new Entry[this.constantPoolCount * 2];
        char[] cArr = new char[classReader.getMaxStringLength()];
        boolean z10 = false;
        int i11 = 1;
        while (i11 < this.constantPoolCount) {
            int item2 = classReader.getItem(i11);
            byte b10 = bArr[item2 - 1];
            switch (b10) {
                case 1:
                    addConstantUtf8(i11, classReader.readUtf(i11, cArr));
                    break;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                    addConstantIntegerOrFloat(i11, b10, classReader.readInt(item2));
                    break;
                case 5:
                case 6:
                    addConstantLongOrDouble(i11, b10, classReader.readLong(item2));
                    break;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    addConstantUtf8Reference(i11, b10, classReader.readUTF8(item2, cArr));
                    break;
                case 9:
                case 10:
                case 11:
                    int item3 = classReader.getItem(classReader.readUnsignedShort(item2 + 2));
                    addConstantMemberReference(i11, b10, classReader.readClass(item2, cArr), classReader.readUTF8(item3, cArr), classReader.readUTF8(item3 + 2, cArr));
                    break;
                case 12:
                    addConstantNameAndType(i11, classReader.readUTF8(item2, cArr), classReader.readUTF8(item2 + 2, cArr));
                    break;
                case 15:
                    int item4 = classReader.getItem(classReader.readUnsignedShort(item2 + 1));
                    int item5 = classReader.getItem(classReader.readUnsignedShort(item4 + 2));
                    addConstantMethodHandle(i11, classReader.readByte(item2), classReader.readClass(item4, cArr), classReader.readUTF8(item5, cArr), classReader.readUTF8(item5 + 2, cArr));
                    break;
                case 17:
                case 18:
                    int item6 = classReader.getItem(classReader.readUnsignedShort(item2 + 2));
                    addConstantDynamicOrInvokeDynamicReference(b10, i11, classReader.readUTF8(item6, cArr), classReader.readUTF8(item6 + 2, cArr), classReader.readUnsignedShort(item2));
                    z10 = true;
                    break;
            }
            i11 += (b10 == 5 || b10 == 6) ? 2 : 1;
        }
        if (z10) {
            copyBootstrapMethods(classReader, cArr);
        }
    }

    private void addConstantIntegerOrFloat(int i10, int i11, int i12) {
        add(new Entry(i10, i11, i12, hash(i11, i12)));
    }

    private void addConstantUtf8Reference(int i10, int i11, String str) {
        add(new Entry(i10, i11, str, hash(i11, str)));
    }

    private static int hash(int i10, String str, String str2, String str3) {
        return (i10 + (str.hashCode() * str2.hashCode() * str3.hashCode())) & Integer.MAX_VALUE;
    }

    private static int hash(int i10, String str, String str2, String str3, int i11) {
        return (i10 + (str.hashCode() * str2.hashCode() * str3.hashCode() * i11)) & Integer.MAX_VALUE;
    }

    private void addConstantDynamicOrInvokeDynamicReference(int i10, int i11, String str, String str2, int i12) {
        add(new Entry(i11, i10, null, str, str2, i12, hash(i10, str, str2, i12)));
    }

    private void addConstantLongOrDouble(int i10, int i11, long j10) {
        add(new Entry(i10, i11, j10, hash(i11, j10)));
    }

    private void addConstantUtf8(int i10, String str) {
        add(new Entry(i10, 1, str, hash(1, str)));
    }

    private void addConstantNameAndType(int i10, String str, String str2) {
        add(new Entry(i10, 12, str, str2, hash(12, str, str2)));
    }

    private void addConstantMemberReference(int i10, int i11, String str, String str2, String str3) {
        add(new Entry(i10, i11, str, str2, str3, 0L, hash(i11, str, str2, str3)));
    }

    private void addConstantMethodHandle(int i10, int i11, String str, String str2, String str3) {
        add(new Entry(i10, 15, str, str2, str3, i11, hash(15, str, str2, str3, i11)));
    }

    private Symbol addBootstrapMethod(int i10, int i11, int i12) {
        byte[] bArr = this.bootstrapMethods.data;
        for (Entry entry = get(i12); entry != null; entry = entry.next) {
            if (entry.tag == 64 && entry.hashCode == i12) {
                int i13 = (int) entry.data;
                for (int i14 = 0; i14 < i11; i14++) {
                    if (bArr[i10 + i14] != bArr[i13 + i14]) {
                        break;
                    }
                }
                this.bootstrapMethods.length = i10;
                return entry;
            }
        }
        int i15 = this.bootstrapMethodCount;
        this.bootstrapMethodCount = i15 + 1;
        return put(new Entry(i15, 64, i10, i12));
    }
}
