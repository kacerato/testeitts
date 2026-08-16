package com.android.dx.dex.file;

import b3.s;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstArray;
import com.android.dx.rop.cst.CstLiteralBits;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.Zeroes;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.ByteArrayAnnotatedOutput;
import com.android.dx.util.Writers;
import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

public final class ClassDataItem extends OffsettedItem {
    private final ArrayList<EncodedMethod> directMethods;
    private byte[] encodedForm;
    private final ArrayList<EncodedField> instanceFields;
    private final ArrayList<EncodedField> staticFields;
    private final HashMap<EncodedField, Constant> staticValues;
    private CstArray staticValuesConstant;
    private final CstType thisClass;
    private final ArrayList<EncodedMethod> virtualMethods;

    public ClassDataItem(CstType cstType) {
        super(1, -1);
        if (cstType == null) {
            throw new NullPointerException("thisClass == null");
        }
        this.thisClass = cstType;
        this.staticFields = new ArrayList<>(20);
        this.staticValues = new HashMap<>(40);
        this.instanceFields = new ArrayList<>(20);
        this.directMethods = new ArrayList<>(20);
        this.virtualMethods = new ArrayList<>(20);
        this.staticValuesConstant = null;
    }

    private static void encodeList(DexFile dexFile, AnnotatedOutput annotatedOutput, String str, ArrayList<? extends EncodedMember> arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, GlideException.a.f59088e + str + s.f32937c);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = arrayList.get(i11).encode(dexFile, annotatedOutput, i10, i11);
        }
    }

    private void encodeOutput(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean annotates = annotatedOutput.annotates();
        if (annotates) {
            annotatedOutput.annotate(0, offsetString() + " class data for " + this.thisClass.toHuman());
        }
        encodeSize(dexFile, annotatedOutput, "static_fields", this.staticFields.size());
        encodeSize(dexFile, annotatedOutput, "instance_fields", this.instanceFields.size());
        encodeSize(dexFile, annotatedOutput, "direct_methods", this.directMethods.size());
        encodeSize(dexFile, annotatedOutput, "virtual_methods", this.virtualMethods.size());
        encodeList(dexFile, annotatedOutput, "static_fields", this.staticFields);
        encodeList(dexFile, annotatedOutput, "instance_fields", this.instanceFields);
        encodeList(dexFile, annotatedOutput, "direct_methods", this.directMethods);
        encodeList(dexFile, annotatedOutput, "virtual_methods", this.virtualMethods);
        if (annotates) {
            annotatedOutput.endAnnotation();
        }
    }

    private static void encodeSize(DexFile dexFile, AnnotatedOutput annotatedOutput, String str, int i10) {
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(String.format("  %-21s %08x", str + "_size:", Integer.valueOf(i10)));
        }
        annotatedOutput.writeUleb128(i10);
    }

    private CstArray makeStaticValuesConstant() {
        Collections.sort(this.staticFields);
        int size = this.staticFields.size();
        while (size > 0) {
            Constant constant = this.staticValues.get(this.staticFields.get(size - 1));
            if (constant instanceof CstLiteralBits) {
                if (((CstLiteralBits) constant).getLongBits() != 0) {
                    break;
                }
                size--;
            } else {
                if (constant != null) {
                    break;
                }
                size--;
            }
        }
        if (size == 0) {
            return null;
        }
        CstArray.List list = new CstArray.List(size);
        for (int i10 = 0; i10 < size; i10++) {
            EncodedField encodedField = this.staticFields.get(i10);
            Constant constant2 = this.staticValues.get(encodedField);
            if (constant2 == null) {
                constant2 = Zeroes.zeroFor(encodedField.getRef().getType());
            }
            list.set(i10, constant2);
        }
        list.setImmutable();
        return new CstArray(list);
    }

    @Override
    public void addContents(DexFile dexFile) {
        if (!this.staticFields.isEmpty()) {
            getStaticValuesConstant();
            Iterator<EncodedField> it = this.staticFields.iterator();
            while (it.hasNext()) {
                it.next().addContents(dexFile);
            }
        }
        if (!this.instanceFields.isEmpty()) {
            Collections.sort(this.instanceFields);
            Iterator<EncodedField> it2 = this.instanceFields.iterator();
            while (it2.hasNext()) {
                it2.next().addContents(dexFile);
            }
        }
        if (!this.directMethods.isEmpty()) {
            Collections.sort(this.directMethods);
            Iterator<EncodedMethod> it3 = this.directMethods.iterator();
            while (it3.hasNext()) {
                it3.next().addContents(dexFile);
            }
        }
        if (this.virtualMethods.isEmpty()) {
            return;
        }
        Collections.sort(this.virtualMethods);
        Iterator<EncodedMethod> it4 = this.virtualMethods.iterator();
        while (it4.hasNext()) {
            it4.next().addContents(dexFile);
        }
    }

    public void addDirectMethod(EncodedMethod encodedMethod) {
        if (encodedMethod == null) {
            throw new NullPointerException("method == null");
        }
        this.directMethods.add(encodedMethod);
    }

    public void addInstanceField(EncodedField encodedField) {
        if (encodedField == null) {
            throw new NullPointerException("field == null");
        }
        this.instanceFields.add(encodedField);
    }

    public void addStaticField(EncodedField encodedField, Constant constant) {
        if (encodedField == null) {
            throw new NullPointerException("field == null");
        }
        if (this.staticValuesConstant != null) {
            throw new UnsupportedOperationException("static fields already sorted");
        }
        this.staticFields.add(encodedField);
        this.staticValues.put(encodedField, constant);
    }

    public void addVirtualMethod(EncodedMethod encodedMethod) {
        if (encodedMethod == null) {
            throw new NullPointerException("method == null");
        }
        this.virtualMethods.add(encodedMethod);
    }

    public void debugPrint(Writer writer, boolean z10) {
        PrintWriter printWriterFor = Writers.printWriterFor(writer);
        int size = this.staticFields.size();
        for (int i10 = 0; i10 < size; i10++) {
            printWriterFor.println("  sfields[" + i10 + "]: " + ((Object) this.staticFields.get(i10)));
        }
        int size2 = this.instanceFields.size();
        for (int i11 = 0; i11 < size2; i11++) {
            printWriterFor.println("  ifields[" + i11 + "]: " + ((Object) this.instanceFields.get(i11)));
        }
        int size3 = this.directMethods.size();
        for (int i12 = 0; i12 < size3; i12++) {
            printWriterFor.println("  dmeths[" + i12 + "]:");
            this.directMethods.get(i12).debugPrint(printWriterFor, z10);
        }
        int size4 = this.virtualMethods.size();
        for (int i13 = 0; i13 < size4; i13++) {
            printWriterFor.println("  vmeths[" + i13 + "]:");
            this.virtualMethods.get(i13).debugPrint(printWriterFor, z10);
        }
    }

    public ArrayList<EncodedMethod> getMethods() {
        ArrayList<EncodedMethod> arrayList = new ArrayList<>(this.directMethods.size() + this.virtualMethods.size());
        arrayList.addAll(this.directMethods);
        arrayList.addAll(this.virtualMethods);
        return arrayList;
    }

    public CstArray getStaticValuesConstant() {
        if (this.staticValuesConstant == null && this.staticFields.size() != 0) {
            this.staticValuesConstant = makeStaticValuesConstant();
        }
        return this.staticValuesConstant;
    }

    public boolean isEmpty() {
        return this.staticFields.isEmpty() && this.instanceFields.isEmpty() && this.directMethods.isEmpty() && this.virtualMethods.isEmpty();
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_CLASS_DATA_ITEM;
    }

    @Override
    public void place0(Section section, int i10) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
        encodeOutput(section.getFile(), byteArrayAnnotatedOutput);
        byte[] byteArray = byteArrayAnnotatedOutput.toByteArray();
        this.encodedForm = byteArray;
        setWriteSize(byteArray.length);
    }

    @Override
    public String toHuman() {
        return toString();
    }

    @Override
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        if (annotatedOutput.annotates()) {
            encodeOutput(dexFile, annotatedOutput);
        } else {
            annotatedOutput.write(this.encodedForm);
        }
    }
}
