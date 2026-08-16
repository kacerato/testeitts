package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

public final class ClassDefsSection extends UniformItemSection {
    private final TreeMap<Type, ClassDefItem> classDefs;
    private ArrayList<ClassDefItem> orderedDefs;

    public ClassDefsSection(DexFile dexFile) {
        super("class_defs", dexFile, 4);
        this.classDefs = new TreeMap<>();
        this.orderedDefs = null;
    }

    private int orderItems0(Type type, int i10, int i11) {
        ClassDefItem classDefItem = this.classDefs.get(type);
        if (classDefItem == null || classDefItem.hasIndex()) {
            return i10;
        }
        if (i11 < 0) {
            throw new RuntimeException("class circularity with " + ((Object) type));
        }
        int i12 = i11 - 1;
        CstType superclass = classDefItem.getSuperclass();
        if (superclass != null) {
            i10 = orderItems0(superclass.getClassType(), i10, i12);
        }
        TypeList interfaces = classDefItem.getInterfaces();
        int size = interfaces.size();
        for (int i13 = 0; i13 < size; i13++) {
            i10 = orderItems0(interfaces.getType(i13), i10, i12);
        }
        classDefItem.setIndex(i10);
        this.orderedDefs.add(classDefItem);
        return i10 + 1;
    }

    public void add(ClassDefItem classDefItem) {
        try {
            Type classType = classDefItem.getThisClass().getClassType();
            throwIfPrepared();
            if (this.classDefs.get(classType) == null) {
                this.classDefs.put(classType, classDefItem);
                return;
            }
            throw new IllegalArgumentException("already added: " + ((Object) classType));
        } catch (NullPointerException unused) {
            throw new NullPointerException("clazz == null");
        }
    }

    @Override
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        throwIfNotPrepared();
        ClassDefItem classDefItem = this.classDefs.get(((CstType) constant).getClassType());
        if (classDefItem != null) {
            return classDefItem;
        }
        throw new IllegalArgumentException("not found");
    }

    @Override
    public Collection<? extends Item> items() {
        ArrayList<ClassDefItem> arrayList = this.orderedDefs;
        return arrayList != null ? arrayList : this.classDefs.values();
    }

    @Override
    public void orderItems() {
        int size = this.classDefs.size();
        this.orderedDefs = new ArrayList<>(size);
        Iterator<Type> it = this.classDefs.o().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 = orderItems0(it.next(), i10, size - i10);
        }
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int size = this.classDefs.size();
        int fileOffset = size == 0 ? 0 : getFileOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, "class_defs_size: " + Hex.u4(size));
            annotatedOutput.annotate(4, "class_defs_off:  " + Hex.u4(fileOffset));
        }
        annotatedOutput.writeInt(size);
        annotatedOutput.writeInt(fileOffset);
    }
}
