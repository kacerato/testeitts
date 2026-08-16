package com.android.dx.command.findusages;

import com.android.dex.ClassData;
import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.FieldId;
import com.android.dex.MethodId;
import com.android.dx.io.CodeReader;
import com.android.dx.io.OpcodeInfo;
import com.android.dx.io.instructions.DecodedInstruction;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

public final class FindUsages {
    private final CodeReader codeReader = new CodeReader();
    private ClassDef currentClass;
    private ClassData.Method currentMethod;
    private final Dex dex;
    private final Set<Integer> fieldIds;
    private final Set<Integer> methodIds;
    private final PrintWriter out;

    public FindUsages(final Dex dex, String str, String str2, final PrintWriter printWriter) {
        this.dex = dex;
        this.out = printWriter;
        HashSet<Integer> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Pattern compile = Pattern.compile(str);
        Pattern compile2 = Pattern.compile(str2);
        List<String> strings = dex.strings();
        for (int i10 = 0; i10 < strings.size(); i10++) {
            String str3 = strings.get(i10);
            if (compile.matcher(str3).matches()) {
                hashSet.add(Integer.valueOf(i10));
            }
            if (compile2.matcher(str3).matches()) {
                hashSet2.add(Integer.valueOf(i10));
            }
        }
        if (hashSet.isEmpty() || hashSet2.isEmpty()) {
            this.fieldIds = null;
            this.methodIds = null;
            return;
        }
        this.methodIds = new HashSet();
        this.fieldIds = new HashSet();
        for (Integer num : hashSet) {
            num.intValue();
            int binarySearch = Collections.binarySearch(dex.typeIds(), num);
            if (binarySearch >= 0) {
                this.methodIds.addAll(getMethodIds(dex, hashSet2, binarySearch));
                this.fieldIds.addAll(getFieldIds(dex, hashSet2, binarySearch));
            }
        }
        this.codeReader.setFieldVisitor(new CodeReader.Visitor() {
            @Override
            public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
                int index = decodedInstruction.getIndex();
                if (FindUsages.this.fieldIds.contains(Integer.valueOf(index))) {
                    printWriter.println(FindUsages.this.location() + ": field reference " + ((Object) dex.fieldIds().get(index)) + " (" + OpcodeInfo.getName(decodedInstruction.getOpcode()) + ")");
                }
            }
        });
        this.codeReader.setMethodVisitor(new CodeReader.Visitor() {
            @Override
            public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
                int index = decodedInstruction.getIndex();
                if (FindUsages.this.methodIds.contains(Integer.valueOf(index))) {
                    printWriter.println(FindUsages.this.location() + ": method reference " + ((Object) dex.methodIds().get(index)) + " (" + OpcodeInfo.getName(decodedInstruction.getOpcode()) + ")");
                }
            }
        });
    }

    private Set<Integer> findAssignableTypes(Dex dex, int i10) {
        HashSet hashSet = new HashSet();
        hashSet.add(Integer.valueOf(i10));
        for (ClassDef classDef : dex.classDefs()) {
            if (hashSet.contains(Integer.valueOf(classDef.getSupertypeIndex()))) {
                hashSet.add(Integer.valueOf(classDef.getTypeIndex()));
            } else {
                short[] interfaces = classDef.getInterfaces();
                int length = interfaces.length;
                int i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        break;
                    }
                    if (hashSet.contains(Integer.valueOf(interfaces[i11]))) {
                        hashSet.add(Integer.valueOf(classDef.getTypeIndex()));
                        break;
                    }
                    i11++;
                }
            }
        }
        return hashSet;
    }

    private Set<Integer> getFieldIds(Dex dex, Set<Integer> set, int i10) {
        HashSet hashSet = new HashSet();
        int i11 = 0;
        for (FieldId fieldId : dex.fieldIds()) {
            if (set.contains(Integer.valueOf(fieldId.getNameIndex())) && i10 == fieldId.getDeclaringClassIndex()) {
                hashSet.add(Integer.valueOf(i11));
            }
            i11++;
        }
        return hashSet;
    }

    private Set<Integer> getMethodIds(Dex dex, Set<Integer> set, int i10) {
        Set<Integer> findAssignableTypes = findAssignableTypes(dex, i10);
        HashSet hashSet = new HashSet();
        int i11 = 0;
        for (MethodId methodId : dex.methodIds()) {
            if (set.contains(Integer.valueOf(methodId.getNameIndex())) && findAssignableTypes.contains(Integer.valueOf(methodId.getDeclaringClassIndex()))) {
                hashSet.add(Integer.valueOf(i11));
            }
            i11++;
        }
        return hashSet;
    }

    public String location() {
        String str = this.dex.typeNames().get(this.currentClass.getTypeIndex());
        if (this.currentMethod == null) {
            return str;
        }
        return str + "." + this.dex.strings().get(this.dex.methodIds().get(this.currentMethod.getMethodIndex()).getNameIndex());
    }

    public void findUsages() {
        if (this.fieldIds == null || this.methodIds == null) {
            return;
        }
        for (ClassDef classDef : this.dex.classDefs()) {
            this.currentClass = classDef;
            this.currentMethod = null;
            if (classDef.getClassDataOffset() != 0) {
                ClassData readClassData = this.dex.readClassData(classDef);
                for (ClassData.Field field : readClassData.allFields()) {
                    int fieldIndex = field.getFieldIndex();
                    if (this.fieldIds.contains(Integer.valueOf(fieldIndex))) {
                        this.out.println(location() + " field declared " + ((Object) this.dex.fieldIds().get(fieldIndex)));
                    }
                }
                for (ClassData.Method method : readClassData.allMethods()) {
                    this.currentMethod = method;
                    int methodIndex = method.getMethodIndex();
                    if (this.methodIds.contains(Integer.valueOf(methodIndex))) {
                        this.out.println(location() + " method declared " + ((Object) this.dex.methodIds().get(methodIndex)));
                    }
                    if (method.getCodeOffset() != 0) {
                        this.codeReader.visitAll(this.dex.readCode(method).getInstructions());
                    }
                }
            }
        }
        this.currentClass = null;
        this.currentMethod = null;
    }
}
