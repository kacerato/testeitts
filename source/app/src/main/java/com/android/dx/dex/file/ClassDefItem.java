package com.android.dx.dex.file;

import com.android.dx.rop.annotation.Annotations;
import com.android.dx.rop.annotation.AnnotationsList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstArray;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.android.dx.util.Writers;
import ei.C13155a;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import org.apache.commons.math3.geometry.VectorFormat;
import w2.C15883c;

public final class ClassDefItem extends IndexedItem {
    private final int accessFlags;
    private AnnotationsDirectoryItem annotationsDirectory;
    private final ClassDataItem classData;
    private TypeListItem interfaces;
    private final CstString sourceFile;
    private EncodedArrayItem staticValuesItem;
    private final CstType superclass;
    private final CstType thisClass;

    public ClassDefItem(CstType cstType, int i10, CstType cstType2, TypeList typeList, CstString cstString) {
        if (cstType == null) {
            throw new NullPointerException("thisClass == null");
        }
        if (typeList == null) {
            throw new NullPointerException("interfaces == null");
        }
        this.thisClass = cstType;
        this.accessFlags = i10;
        this.superclass = cstType2;
        this.interfaces = typeList.size() == 0 ? null : new TypeListItem(typeList);
        this.sourceFile = cstString;
        this.classData = new ClassDataItem(cstType);
        this.staticValuesItem = null;
        this.annotationsDirectory = new AnnotationsDirectoryItem();
    }

    @Override
    public void addContents(DexFile dexFile) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        MixedItemSection byteData = dexFile.getByteData();
        MixedItemSection wordData = dexFile.getWordData();
        MixedItemSection typeLists = dexFile.getTypeLists();
        StringIdsSection stringIds = dexFile.getStringIds();
        typeIds.intern(this.thisClass);
        if (!this.classData.isEmpty()) {
            dexFile.getClassData().add(this.classData);
            CstArray staticValuesConstant = this.classData.getStaticValuesConstant();
            if (staticValuesConstant != null) {
                this.staticValuesItem = (EncodedArrayItem) byteData.intern(new EncodedArrayItem(staticValuesConstant));
            }
        }
        CstType cstType = this.superclass;
        if (cstType != null) {
            typeIds.intern(cstType);
        }
        TypeListItem typeListItem = this.interfaces;
        if (typeListItem != null) {
            this.interfaces = (TypeListItem) typeLists.intern(typeListItem);
        }
        CstString cstString = this.sourceFile;
        if (cstString != null) {
            stringIds.intern(cstString);
        }
        if (this.annotationsDirectory.isEmpty()) {
            return;
        }
        if (this.annotationsDirectory.isInternable()) {
            this.annotationsDirectory = (AnnotationsDirectoryItem) wordData.intern(this.annotationsDirectory);
        } else {
            wordData.add(this.annotationsDirectory);
        }
    }

    public void addDirectMethod(EncodedMethod encodedMethod) {
        this.classData.addDirectMethod(encodedMethod);
    }

    public void addFieldAnnotations(CstFieldRef cstFieldRef, Annotations annotations, DexFile dexFile) {
        this.annotationsDirectory.addFieldAnnotations(cstFieldRef, annotations, dexFile);
    }

    public void addInstanceField(EncodedField encodedField) {
        this.classData.addInstanceField(encodedField);
    }

    public void addMethodAnnotations(CstMethodRef cstMethodRef, Annotations annotations, DexFile dexFile) {
        this.annotationsDirectory.addMethodAnnotations(cstMethodRef, annotations, dexFile);
    }

    public void addParameterAnnotations(CstMethodRef cstMethodRef, AnnotationsList annotationsList, DexFile dexFile) {
        this.annotationsDirectory.addParameterAnnotations(cstMethodRef, annotationsList, dexFile);
    }

    public void addStaticField(EncodedField encodedField, Constant constant) {
        this.classData.addStaticField(encodedField, constant);
    }

    public void addVirtualMethod(EncodedMethod encodedMethod) {
        this.classData.addVirtualMethod(encodedMethod);
    }

    public void debugPrint(Writer writer, boolean z10) {
        PrintWriter printWriterFor = Writers.printWriterFor(writer);
        printWriterFor.println(ClassDefItem.class.getName() + " {");
        printWriterFor.println("  accessFlags: " + Hex.u2(this.accessFlags));
        printWriterFor.println("  superclass: " + ((Object) this.superclass));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  interfaces: ");
        Object obj = this.interfaces;
        if (obj == null) {
            obj = "<none>";
        }
        sb2.append(obj);
        printWriterFor.println(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("  sourceFile: ");
        CstString cstString = this.sourceFile;
        sb3.append(cstString != null ? cstString.toQuoted() : "<none>");
        printWriterFor.println(sb3.toString());
        this.classData.debugPrint(writer, z10);
        this.annotationsDirectory.debugPrint(printWriterFor);
        printWriterFor.println(VectorFormat.DEFAULT_SUFFIX);
    }

    public int getAccessFlags() {
        return this.accessFlags;
    }

    public TypeList getInterfaces() {
        TypeListItem typeListItem = this.interfaces;
        return typeListItem == null ? StdTypeList.EMPTY : typeListItem.getList();
    }

    public Annotations getMethodAnnotations(CstMethodRef cstMethodRef) {
        return this.annotationsDirectory.getMethodAnnotations(cstMethodRef);
    }

    public ArrayList<EncodedMethod> getMethods() {
        return this.classData.getMethods();
    }

    public AnnotationsList getParameterAnnotations(CstMethodRef cstMethodRef) {
        return this.annotationsDirectory.getParameterAnnotations(cstMethodRef);
    }

    public CstString getSourceFile() {
        return this.sourceFile;
    }

    public CstType getSuperclass() {
        return this.superclass;
    }

    public CstType getThisClass() {
        return this.thisClass;
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_CLASS_DEF_ITEM;
    }

    public void setClassAnnotations(Annotations annotations, DexFile dexFile) {
        this.annotationsDirectory.setClassAnnotations(annotations, dexFile);
    }

    @Override
    public int writeSize() {
        return 32;
    }

    @Override
    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean annotates = annotatedOutput.annotates();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int indexOf = typeIds.indexOf(this.thisClass);
        CstType cstType = this.superclass;
        int indexOf2 = cstType == null ? -1 : typeIds.indexOf(cstType);
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.interfaces);
        int absoluteOffset = this.annotationsDirectory.isEmpty() ? 0 : this.annotationsDirectory.getAbsoluteOffset();
        int indexOf3 = this.sourceFile != null ? dexFile.getStringIds().indexOf(this.sourceFile) : -1;
        int absoluteOffset2 = this.classData.isEmpty() ? 0 : this.classData.getAbsoluteOffset();
        int absoluteOffsetOr02 = OffsettedItem.getAbsoluteOffsetOr0(this.staticValuesItem);
        if (annotates) {
            annotatedOutput.annotate(0, indexString() + C15883c.f126249O + this.thisClass.toHuman());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  class_idx:           ");
            sb2.append(Hex.u4(indexOf));
            annotatedOutput.annotate(4, sb2.toString());
            annotatedOutput.annotate(4, "  access_flags:        " + AccessFlags.classString(this.accessFlags));
            StringBuilder sb3 = new StringBuilder();
            sb3.append("  superclass_idx:      ");
            sb3.append(Hex.u4(indexOf2));
            sb3.append(" // ");
            CstType cstType2 = this.superclass;
            sb3.append(cstType2 == null ? "<none>" : cstType2.toHuman());
            annotatedOutput.annotate(4, sb3.toString());
            annotatedOutput.annotate(4, "  interfaces_off:      " + Hex.u4(absoluteOffsetOr0));
            if (absoluteOffsetOr0 != 0) {
                TypeList list = this.interfaces.getList();
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    annotatedOutput.annotate(0, C13155a.f85806a + list.getType(i10).toHuman());
                }
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("  source_file_idx:     ");
            sb4.append(Hex.u4(indexOf3));
            sb4.append(" // ");
            CstString cstString = this.sourceFile;
            sb4.append(cstString != null ? cstString.toHuman() : "<none>");
            annotatedOutput.annotate(4, sb4.toString());
            annotatedOutput.annotate(4, "  annotations_off:     " + Hex.u4(absoluteOffset));
            annotatedOutput.annotate(4, "  class_data_off:      " + Hex.u4(absoluteOffset2));
            annotatedOutput.annotate(4, "  static_values_off:   " + Hex.u4(absoluteOffsetOr02));
        }
        annotatedOutput.writeInt(indexOf);
        annotatedOutput.writeInt(this.accessFlags);
        annotatedOutput.writeInt(indexOf2);
        annotatedOutput.writeInt(absoluteOffsetOr0);
        annotatedOutput.writeInt(indexOf3);
        annotatedOutput.writeInt(absoluteOffset);
        annotatedOutput.writeInt(absoluteOffset2);
        annotatedOutput.writeInt(absoluteOffsetOr02);
    }
}
