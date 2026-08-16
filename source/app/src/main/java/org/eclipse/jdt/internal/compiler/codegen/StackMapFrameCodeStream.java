package org.eclipse.jdt.internal.compiler.codegen;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.NullTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class StackMapFrameCodeStream extends CodeStream {
    public Set exceptionMarkers;
    private HashMap framePositions;
    public ArrayList stackDepthMarkers;
    public ArrayList stackMarkers;
    public int[] stateIndexes;
    public int stateIndexesCounter;

    public static class ExceptionMarker implements Comparable {
        public char[] constantPoolName;

        public int f102476pc;

        public ExceptionMarker(int i10, char[] cArr) {
            this.f102476pc = i10;
            this.constantPoolName = cArr;
        }

        @Override
        public int compareTo(Object obj) {
            if (obj instanceof ExceptionMarker) {
                return this.f102476pc - ((ExceptionMarker) obj).f102476pc;
            }
            return 0;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ExceptionMarker) {
                ExceptionMarker exceptionMarker = (ExceptionMarker) obj;
                if (this.f102476pc == exceptionMarker.f102476pc && CharOperation.equals(this.constantPoolName, exceptionMarker.constantPoolName)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.f102476pc + CharOperation.hashCode(this.constantPoolName);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('(');
            stringBuffer.append(this.f102476pc);
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append(this.constantPoolName);
            stringBuffer.append(')');
            return String.valueOf(stringBuffer);
        }
    }

    public static class FramePosition {
        int counter;
    }

    public static class StackMarker {
        public int destinationPC;
        public VerificationTypeInfo[] infos;

        public int f102478pc;

        public StackMarker(int i10, int i11) {
            this.f102478pc = i10;
            this.destinationPC = i11;
        }

        public void setInfos(VerificationTypeInfo[] verificationTypeInfoArr) {
            this.infos = verificationTypeInfoArr;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[copy stack items from ");
            stringBuffer.append(this.f102478pc);
            stringBuffer.append(" to ");
            stringBuffer.append(this.destinationPC);
            VerificationTypeInfo[] verificationTypeInfoArr = this.infos;
            if (verificationTypeInfoArr != null) {
                int length = verificationTypeInfoArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (i10 > 0) {
                        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    stringBuffer.append((Object) this.infos[i10]);
                }
            }
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
            return String.valueOf(stringBuffer);
        }
    }

    public StackMapFrameCodeStream(ClassFile classFile) {
        super(classFile);
        this.generateAttributes |= 16;
    }

    private void addStackDepthMarker(int i10, int i11, TypeBinding typeBinding) {
        ArrayList arrayList = this.stackDepthMarkers;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            this.stackDepthMarkers = arrayList2;
            arrayList2.add(new StackDepthMarker(i10, i11, typeBinding));
            return;
        }
        int size = arrayList.size();
        if (size == 0) {
            this.stackDepthMarkers.add(new StackDepthMarker(i10, i11, typeBinding));
            return;
        }
        int i12 = size - 1;
        if (((StackDepthMarker) this.stackDepthMarkers.get(i12)).f102477pc != this.position) {
            this.stackDepthMarkers.add(new StackDepthMarker(i10, i11, typeBinding));
        } else {
            this.stackDepthMarkers.set(i12, new StackDepthMarker(i10, i11, typeBinding));
        }
    }

    private void addStackMarker(int i10, int i11) {
        ArrayList arrayList = this.stackMarkers;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            this.stackMarkers = arrayList2;
            arrayList2.add(new StackMarker(i10, i11));
        } else {
            int size = arrayList.size();
            if (size == 0 || ((StackMarker) this.stackMarkers.get(size - 1)).f102478pc != this.position) {
                this.stackMarkers.add(new StackMarker(i10, i11));
            }
        }
    }

    @Override
    public void addDefinitelyAssignedVariables(Scope scope, int i10) {
        int i11;
        for (int i12 = 0; i12 < this.visibleLocalsCount; i12++) {
            LocalVariableBinding localVariableBinding = this.visibleLocals[i12];
            if (localVariableBinding != null && isDefinitelyAssigned(scope, i10, localVariableBinding) && ((i11 = localVariableBinding.initializationCount) == 0 || localVariableBinding.initializationPCs[((i11 - 1) << 1) + 1] != -1)) {
                localVariableBinding.recordInitializationStartPC(this.position);
            }
        }
    }

    public void addExceptionMarker(int i10, TypeBinding typeBinding) {
        if (this.exceptionMarkers == null) {
            this.exceptionMarkers = new HashSet();
        }
        if (typeBinding == null) {
            this.exceptionMarkers.add(new ExceptionMarker(i10, ConstantPool.JavaLangThrowableConstantPoolName));
            return;
        }
        int i11 = typeBinding.f102482id;
        if (i11 == 7) {
            this.exceptionMarkers.add(new ExceptionMarker(i10, ConstantPool.JavaLangNoSuchFieldErrorConstantPoolName));
        } else if (i11 != 12) {
            this.exceptionMarkers.add(new ExceptionMarker(i10, typeBinding.constantPoolName()));
        } else {
            this.exceptionMarkers.add(new ExceptionMarker(i10, ConstantPool.JavaLangClassNotFoundExceptionConstantPoolName));
        }
    }

    public void addFramePosition(int i10) {
        Integer valueOf = Integer.valueOf(i10);
        FramePosition framePosition = (FramePosition) this.framePositions.get(valueOf);
        if (framePosition != null) {
            framePosition.counter++;
        } else {
            this.framePositions.put(valueOf, new FramePosition());
        }
    }

    @Override
    public void addVariable(LocalVariableBinding localVariableBinding) {
        if (localVariableBinding.initializationPCs == null) {
            record(localVariableBinding);
        }
        localVariableBinding.recordInitializationStartPC(this.position);
    }

    @Override
    public void areturn() {
        super.areturn();
        addFramePosition(this.position);
    }

    @Override
    public void athrow() {
        super.athrow();
        addFramePosition(this.position);
    }

    @Override
    public void decrStackSize(int i10) {
        super.decrStackSize(i10);
        addStackDepthMarker(this.position, -1, null);
    }

    @Override
    public void dreturn() {
        super.dreturn();
        addFramePosition(this.position);
    }

    @Override
    public void freturn() {
        super.freturn();
        addFramePosition(this.position);
    }

    @Override
    public void generateClassLiteralAccessForType(TypeBinding typeBinding, FieldBinding fieldBinding) {
        if (typeBinding.isBaseType() && typeBinding != TypeBinding.NULL) {
            getTYPE(typeBinding.f102482id);
            return;
        }
        if (this.targetLevel >= ClassFileConstants.JDK1_5) {
            ldc(typeBinding);
            return;
        }
        BranchLabel branchLabel = new BranchLabel(this);
        if (fieldBinding != null) {
            fieldAccess(Opcodes.OPC_getstatic, fieldBinding, null);
            dup();
            ifnonnull(branchLabel);
            pop();
        }
        NullTypeBinding nullTypeBinding = TypeBinding.NULL;
        ExceptionLabel exceptionLabel = new ExceptionLabel(this, nullTypeBinding);
        exceptionLabel.placeStart();
        ldc(typeBinding == nullTypeBinding ? "java.lang.Object" : String.valueOf(typeBinding.constantPoolName()).replace('/', '.'));
        invokeClassForName();
        exceptionLabel.placeEnd();
        if (fieldBinding != null) {
            dup();
            fieldAccess(Opcodes.OPC_putstatic, fieldBinding, null);
        }
        int i10 = this.position;
        goto_(branchLabel);
        int i11 = this.stackDepth;
        pushExceptionOnStack(nullTypeBinding);
        exceptionLabel.place();
        newNoClassDefFoundError();
        dup_x1();
        swap();
        invokeThrowableGetMessage();
        invokeNoClassDefFoundErrorStringConstructor();
        athrow();
        branchLabel.place();
        addStackMarker(i10, this.position);
        this.stackDepth = i11;
    }

    @Override
    public void generateOuterAccess(Object[] objArr, ASTNode aSTNode, Binding binding, Scope scope) {
        int i10 = this.position;
        super.generateOuterAccess(objArr, aSTNode, binding, scope);
        if (i10 == this.position) {
            throw new AbortMethod(scope.referenceCompilationUnit().compilationResult, null);
        }
    }

    public ExceptionMarker[] getExceptionMarkers() {
        Set set = this.exceptionMarkers;
        if (set == null) {
            return null;
        }
        ExceptionMarker[] exceptionMarkerArr = new ExceptionMarker[set.size()];
        Iterator it = set.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            exceptionMarkerArr[i10] = (ExceptionMarker) it.next();
            i10++;
        }
        Arrays.sort(exceptionMarkerArr);
        return exceptionMarkerArr;
    }

    public int[] getFramePositions() {
        Set o10 = this.framePositions.o();
        int[] iArr = new int[o10.size()];
        Iterator it = o10.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = ((Integer) it.next()).intValue();
            i10++;
        }
        Arrays.sort(iArr);
        return iArr;
    }

    public StackDepthMarker[] getStackDepthMarkers() {
        int size;
        ArrayList arrayList = this.stackDepthMarkers;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return null;
        }
        StackDepthMarker[] stackDepthMarkerArr = new StackDepthMarker[size];
        this.stackDepthMarkers.toArray(stackDepthMarkerArr);
        return stackDepthMarkerArr;
    }

    public StackMarker[] getStackMarkers() {
        int size;
        ArrayList arrayList = this.stackMarkers;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return null;
        }
        StackMarker[] stackMarkerArr = new StackMarker[size];
        this.stackMarkers.toArray(stackMarkerArr);
        return stackMarkerArr;
    }

    @Override
    public void goto_(BranchLabel branchLabel) {
        super.goto_(branchLabel);
        addFramePosition(this.position);
    }

    @Override
    public void goto_w(BranchLabel branchLabel) {
        super.goto_w(branchLabel);
        addFramePosition(this.position);
    }

    public boolean hasFramePositions() {
        return this.framePositions.size() != 0;
    }

    @Override
    public void init(ClassFile classFile) {
        super.init(classFile);
        this.stateIndexesCounter = 0;
        HashMap hashMap = this.framePositions;
        if (hashMap != null) {
            hashMap.clear();
        }
        Set set = this.exceptionMarkers;
        if (set != null) {
            set.clear();
        }
        ArrayList arrayList = this.stackDepthMarkers;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList arrayList2 = this.stackMarkers;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
    }

    @Override
    public void initializeMaxLocals(MethodBinding methodBinding) {
        super.initializeMaxLocals(methodBinding);
        HashMap hashMap = this.framePositions;
        if (hashMap == null) {
            this.framePositions = new HashMap();
        } else {
            hashMap.clear();
        }
    }

    @Override
    public void ireturn() {
        super.ireturn();
        addFramePosition(this.position);
    }

    @Override
    public void lreturn() {
        super.lreturn();
        addFramePosition(this.position);
    }

    @Override
    public void optimizeBranch(int i10, BranchLabel branchLabel) {
        super.optimizeBranch(i10, branchLabel);
        removeFramePosition(i10);
        removeStackMapMarkers(i10);
    }

    public void popStateIndex() {
        this.stateIndexesCounter--;
    }

    @Override
    public void pushExceptionOnStack(TypeBinding typeBinding) {
        super.pushExceptionOnStack(typeBinding);
        addExceptionMarker(this.position, typeBinding);
    }

    @Override
    public void pushOnStack(TypeBinding typeBinding) {
        super.pushOnStack(typeBinding);
        addStackDepthMarker(this.position, 1, typeBinding);
    }

    public void pushStateIndex(int i10) {
        if (this.stateIndexes == null) {
            this.stateIndexes = new int[3];
        }
        int[] iArr = this.stateIndexes;
        int length = iArr.length;
        if (length == this.stateIndexesCounter) {
            int[] iArr2 = new int[length * 2];
            this.stateIndexes = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        int[] iArr3 = this.stateIndexes;
        int i11 = this.stateIndexesCounter;
        this.stateIndexesCounter = i11 + 1;
        iArr3[i11] = i10;
    }

    @Override
    public void recordExpressionType(TypeBinding typeBinding) {
        addStackDepthMarker(this.position, 0, typeBinding);
    }

    public void removeFramePosition(int i10) {
        Integer valueOf = Integer.valueOf(i10);
        FramePosition framePosition = (FramePosition) this.framePositions.get(valueOf);
        if (framePosition != null) {
            int i11 = framePosition.counter - 1;
            framePosition.counter = i11;
            if (i11 <= 0) {
                this.framePositions.remove(valueOf);
            }
        }
    }

    @Override
    public void removeNotDefinitelyAssignedVariables(Scope scope, int i10) {
        int i11 = this.visibleLocalsCount;
        for (int i12 = 0; i12 < i11; i12++) {
            LocalVariableBinding localVariableBinding = this.visibleLocals[i12];
            if (localVariableBinding != null && localVariableBinding.initializationCount > 0 && !isDefinitelyAssigned(scope, i10, localVariableBinding)) {
                if (this.stateIndexes != null) {
                    int i13 = this.stateIndexesCounter;
                    for (int i14 = 0; i14 < i13; i14++) {
                        if (isDefinitelyAssigned(scope, this.stateIndexes[i14], localVariableBinding)) {
                            break;
                        }
                    }
                }
                localVariableBinding.recordInitializationEndPC(this.position);
            }
        }
    }

    public void removeStackMapMarkers(int i10) {
        ArrayList arrayList = this.stackDepthMarkers;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((StackDepthMarker) this.stackDepthMarkers.get(size)).f102477pc == i10) {
                    this.stackDepthMarkers.remove(size);
                    return;
                }
            }
        }
    }

    @Override
    public void reset(ClassFile classFile) {
        super.reset(classFile);
        this.stateIndexesCounter = 0;
        HashMap hashMap = this.framePositions;
        if (hashMap != null) {
            hashMap.clear();
        }
        Set set = this.exceptionMarkers;
        if (set != null) {
            set.clear();
        }
        ArrayList arrayList = this.stackDepthMarkers;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList arrayList2 = this.stackMarkers;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
    }

    @Override
    public void resetForCodeGenUnusedLocals() {
        resetSecretLocals();
        super.resetForCodeGenUnusedLocals();
    }

    @Override
    public void resetInWideMode() {
        resetSecretLocals();
        super.resetInWideMode();
    }

    public void resetSecretLocals() {
        int length = this.locals.length;
        for (int i10 = 0; i10 < length; i10++) {
            LocalVariableBinding localVariableBinding = this.locals[i10];
            if (localVariableBinding != null && localVariableBinding.isSecret()) {
                localVariableBinding.resetInitializations();
            }
        }
    }

    @Override
    public void return_() {
        super.return_();
        addFramePosition(this.position);
    }

    @Override
    public void writePosition(BranchLabel branchLabel) {
        super.writePosition(branchLabel);
        addFramePosition(branchLabel.position);
    }

    @Override
    public void writeSignedWord(int i10, int i11) {
        super.writeSignedWord(i10, i11);
        addFramePosition(this.position);
    }

    @Override
    public void writeWidePosition(BranchLabel branchLabel) {
        super.writeWidePosition(branchLabel);
        addFramePosition(branchLabel.position);
    }

    @Override
    public void recordExpressionType(TypeBinding typeBinding, int i10, boolean z10) {
        int i11;
        addStackDepthMarker(this.position, i10, typeBinding);
        if (!z10 || (i11 = typeBinding.f102482id) == 6) {
            return;
        }
        if (i11 != 7 && i11 != 8) {
            this.stackDepth++;
        } else {
            this.stackDepth += 2;
        }
    }

    @Override
    public void writePosition(BranchLabel branchLabel, int i10) {
        super.writePosition(branchLabel, i10);
        addFramePosition(branchLabel.position);
    }

    public static class StackDepthMarker {
        public int delta;

        public int f102477pc;
        public TypeBinding typeBinding;

        public StackDepthMarker(int i10, int i11, TypeBinding typeBinding) {
            this.f102477pc = i10;
            this.typeBinding = typeBinding;
            this.delta = i11;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append('(');
            stringBuffer.append(this.f102477pc);
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append(this.delta);
            TypeBinding typeBinding = this.typeBinding;
            if (typeBinding != null) {
                if (typeBinding.isBaseType()) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    stringBuffer.append(this.typeBinding.qualifiedSourceName());
                } else {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    stringBuffer.append(this.typeBinding.qualifiedPackageName());
                    stringBuffer.append('.');
                    stringBuffer.append(this.typeBinding.qualifiedSourceName());
                }
            }
            stringBuffer.append(')');
            return String.valueOf(stringBuffer);
        }

        public StackDepthMarker(int i10, int i11) {
            this.f102477pc = i10;
            this.delta = i11;
        }
    }
}
