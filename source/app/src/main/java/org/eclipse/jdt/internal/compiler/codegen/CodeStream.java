package org.eclipse.jdt.internal.compiler.codegen;

import android.text.style.SuggestionSpan;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FunctionalExpression;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.IntersectionTypeBinding18;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.NestedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.NullTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CodeStream {
    public static final int LABELS_INCREMENT = 5;
    public static final int LOCALS_INCREMENT = 10;
    static final int L_CANNOT_OPTIMIZE = 4;
    static final int L_OPTIMIZABLE = 2;
    static final int L_UNKNOWN = 0;
    public int allLocalsCounter;
    public byte[] bCodeStream;
    public ClassFile classFile;
    public int classFileOffset;
    public ConstantPool constantPool;
    public int countLabels;
    public int exceptionLabelsCounter;
    public int generateAttributes;
    public LambdaExpression lambdaExpression;
    public int lastAbruptCompletion;
    public int lastEntryPC;
    public int lineNumberEnd;
    public int lineNumberStart;
    public int[] lineSeparatorPositions;
    public int maxFieldCount;
    public int maxLocals;
    public AbstractMethodDeclaration methodDeclaration;
    public int pcToSourceMapSize;
    public int position;
    public boolean preserveUnusedLocals;
    public int stackDepth;
    public int stackMax;
    public int startingClassFileOffset;
    protected long targetLevel;
    int visibleLocalsCount;
    public static FieldBinding[] ImplicitThis = new FieldBinding[0];
    public static final CompilationResult RESTART_IN_WIDE_MODE = new CompilationResult((char[]) null, 0, 0, 0);
    public static final CompilationResult RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE = new CompilationResult((char[]) null, 0, 0, 0);
    public ExceptionLabel[] exceptionLabels = new ExceptionLabel[5];
    public BranchLabel[] labels = new BranchLabel[5];
    public LocalVariableBinding[] locals = new LocalVariableBinding[10];
    public int[] pcToSourceMap = new int[24];
    public LocalVariableBinding[] visibleLocals = new LocalVariableBinding[10];
    public boolean wideMode = false;

    public CodeStream(ClassFile classFile) {
        this.targetLevel = classFile.targetJDK;
        int i10 = classFile.produceAttributes;
        this.generateAttributes = i10;
        if ((i10 & 2) != 0) {
            this.lineSeparatorPositions = classFile.referenceBinding.scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions();
        }
    }

    public static TypeBinding getConstantPoolDeclaringClass(Scope scope, FieldBinding fieldBinding, TypeBinding typeBinding, boolean z10) {
        ReferenceBinding referenceBinding = fieldBinding.declaringClass;
        if (TypeBinding.notEquals(referenceBinding, typeBinding.erasure()) && !typeBinding.isArrayType() && referenceBinding != null && fieldBinding.constant() == Constant.NotAConstant) {
            CompilerOptions compilerOptions = scope.compilerOptions();
            if ((compilerOptions.targetJDK >= ClassFileConstants.JDK1_2 && ((compilerOptions.complianceLevel >= ClassFileConstants.JDK1_4 || !z10 || !fieldBinding.isStatic()) && referenceBinding.f102482id != 1)) || !referenceBinding.canBeSeenBy(scope)) {
                return typeBinding.erasure();
            }
        }
        return referenceBinding;
    }

    public static int insertionIndex(int[] iArr, int i10, int i11) {
        int i12 = i10 - 2;
        int i13 = 0;
        int i14 = 0;
        while (i13 <= i12) {
            i14 = (i13 + i12) / 2;
            if ((i14 & 1) != 0) {
                i14--;
            }
            int i15 = iArr[i14];
            if (i11 < i15) {
                i12 = i14 - 2;
            } else {
                if (i11 <= i15) {
                    return -1;
                }
                i13 = i14 + 2;
            }
        }
        return i11 < iArr[i14] ? i14 : i14 + 2;
    }

    private void invoke18(byte b10, int i10, int i11, char[] cArr, boolean z10, char[] cArr2, char[] cArr3) {
        this.countLabels = 0;
        if (b10 == -71) {
            if (this.classFileOffset + 4 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 3;
            byte[] bArr = this.bCodeStream;
            int i12 = this.classFileOffset;
            this.classFileOffset = i12 + 1;
            bArr[i12] = b10;
            writeUnsignedShort(this.constantPool.literalIndexForMethod(cArr, cArr2, cArr3, true));
            byte[] bArr2 = this.bCodeStream;
            int i13 = this.classFileOffset;
            int i14 = i13 + 1;
            this.classFileOffset = i14;
            bArr2[i13] = (byte) i10;
            this.classFileOffset = i13 + 2;
            bArr2[i14] = 0;
        } else {
            if (this.classFileOffset + 2 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position++;
            byte[] bArr3 = this.bCodeStream;
            int i15 = this.classFileOffset;
            this.classFileOffset = i15 + 1;
            bArr3[i15] = b10;
            writeUnsignedShort(this.constantPool.literalIndexForMethod(cArr, cArr2, cArr3, z10));
        }
        int i16 = this.stackDepth + (i11 - i10);
        this.stackDepth = i16;
        if (i16 > this.stackMax) {
            this.stackMax = i16;
        }
    }

    private final void resizeByteArray() {
        byte[] bArr = this.bCodeStream;
        int length = bArr.length;
        int i10 = length + length;
        int i11 = this.classFileOffset;
        if (i11 >= i10) {
            i10 = i11 + length;
        }
        byte[] bArr2 = new byte[i10];
        this.bCodeStream = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, length);
    }

    public static final void sort(int[] iArr, int i10, int i11, int[] iArr2) {
        if (i11 > i10) {
            int i12 = iArr[((i11 - i10) / 2) + i10];
            int i13 = i10;
            int i14 = i11;
            while (i13 <= i14) {
                while (i13 < i11 && iArr[i13] < i12) {
                    i13++;
                }
                while (i14 > i10 && iArr[i14] > i12) {
                    i14--;
                }
                if (i13 <= i14) {
                    swap(iArr, i13, i14, iArr2);
                    i13++;
                    i14--;
                }
            }
            if (i10 < i14) {
                sort(iArr, i10, i14, iArr2);
            }
            if (i13 < i11) {
                sort(iArr, i13, i11, iArr2);
            }
        }
    }

    private static final void swap(int[] iArr, int i10, int i11, int[] iArr2) {
        int i12 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = i12;
        int i13 = iArr2[i11];
        iArr2[i11] = iArr2[i10];
        iArr2[i10] = i13;
    }

    private final void writeSignedShort(int i10) {
        if (this.classFileOffset + 1 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        int i12 = i11 + 1;
        this.classFileOffset = i12;
        bArr[i11] = (byte) (i10 >> 8);
        this.classFileOffset = i11 + 2;
        bArr[i12] = (byte) i10;
    }

    private final void writeUnsignedShort(int i10) {
        this.position += 2;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        int i12 = i11 + 1;
        this.classFileOffset = i12;
        bArr[i11] = (byte) (i10 >>> 8);
        this.classFileOffset = i11 + 2;
        bArr[i12] = (byte) i10;
    }

    public void aaload() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 50;
    }

    public void aastore() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_aastore;
    }

    public void aconst_null() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 1;
    }

    public void addDefinitelyAssignedVariables(Scope scope, int i10) {
        int i11;
        if ((this.generateAttributes & 28) == 0) {
            return;
        }
        for (int i12 = 0; i12 < this.visibleLocalsCount; i12++) {
            LocalVariableBinding localVariableBinding = this.visibleLocals[i12];
            if (localVariableBinding != null && isDefinitelyAssigned(scope, i10, localVariableBinding) && ((i11 = localVariableBinding.initializationCount) == 0 || localVariableBinding.initializationPCs[((i11 - 1) << 1) + 1] != -1)) {
                localVariableBinding.recordInitializationStartPC(this.position);
            }
        }
    }

    public void addLabel(BranchLabel branchLabel) {
        int i10 = this.countLabels;
        BranchLabel[] branchLabelArr = this.labels;
        if (i10 == branchLabelArr.length) {
            BranchLabel[] branchLabelArr2 = new BranchLabel[i10 + 5];
            this.labels = branchLabelArr2;
            System.arraycopy(branchLabelArr, 0, branchLabelArr2, 0, i10);
        }
        BranchLabel[] branchLabelArr3 = this.labels;
        int i11 = this.countLabels;
        this.countLabels = i11 + 1;
        branchLabelArr3[i11] = branchLabel;
    }

    public void addVariable(LocalVariableBinding localVariableBinding) {
    }

    public void addVisibleLocalVariable(LocalVariableBinding localVariableBinding) {
        if ((this.generateAttributes & 28) == 0) {
            return;
        }
        int i10 = this.visibleLocalsCount;
        LocalVariableBinding[] localVariableBindingArr = this.visibleLocals;
        if (i10 >= localVariableBindingArr.length) {
            LocalVariableBinding[] localVariableBindingArr2 = new LocalVariableBinding[i10 * 2];
            this.visibleLocals = localVariableBindingArr2;
            System.arraycopy(localVariableBindingArr, 0, localVariableBindingArr2, 0, i10);
        }
        LocalVariableBinding[] localVariableBindingArr3 = this.visibleLocals;
        int i11 = this.visibleLocalsCount;
        this.visibleLocalsCount = i11 + 1;
        localVariableBindingArr3[i11] = localVariableBinding;
    }

    public void aload(int i10) {
        this.countLabels = 0;
        int i11 = this.stackDepth + 1;
        this.stackDepth = i11;
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (this.maxLocals <= i10) {
            this.maxLocals = i10 + 1;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i12 = this.classFileOffset;
            int i13 = i12 + 1;
            this.classFileOffset = i13;
            bArr[i12] = 25;
            this.classFileOffset = i12 + 2;
            bArr[i13] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i14 = this.classFileOffset;
        int i15 = i14 + 1;
        this.classFileOffset = i15;
        bArr2[i14] = Opcodes.OPC_wide;
        this.classFileOffset = i14 + 2;
        bArr2[i15] = 25;
        writeUnsignedShort(i10);
    }

    public void aload_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.maxLocals == 0) {
            this.maxLocals = 1;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 42;
    }

    public void aload_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.maxLocals <= 1) {
            this.maxLocals = 2;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_aload_1;
    }

    public void aload_2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.maxLocals <= 2) {
            this.maxLocals = 3;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_aload_2;
    }

    public void aload_3() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.maxLocals <= 3) {
            this.maxLocals = 4;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_aload_3;
    }

    public void anewarray(TypeBinding typeBinding) {
        this.countLabels = 0;
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_anewarray;
        writeUnsignedShort(this.constantPool.literalIndexForType(typeBinding));
    }

    public void areturn() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        int i10 = this.position + 1;
        this.position = i10;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_areturn;
        this.lastAbruptCompletion = i10;
    }

    public void arrayAt(int i10) {
        switch (i10) {
            case 2:
                caload();
                return;
            case 3:
            case 5:
                baload();
                return;
            case 4:
                saload();
                return;
            case 6:
            default:
                aaload();
                return;
            case 7:
                laload();
                return;
            case 8:
                daload();
                return;
            case 9:
                faload();
                return;
            case 10:
                iaload();
                return;
        }
    }

    public void arrayAtPut(int i10, boolean z10) {
        switch (i10) {
            case 2:
                if (z10) {
                    dup_x2();
                }
                castore();
                return;
            case 3:
            case 5:
                if (z10) {
                    dup_x2();
                }
                bastore();
                return;
            case 4:
                if (z10) {
                    dup_x2();
                }
                sastore();
                return;
            case 6:
            default:
                if (z10) {
                    dup_x2();
                }
                aastore();
                return;
            case 7:
                if (z10) {
                    dup2_x2();
                }
                lastore();
                return;
            case 8:
                if (z10) {
                    dup2_x2();
                }
                dastore();
                return;
            case 9:
                if (z10) {
                    dup_x2();
                }
                fastore();
                return;
            case 10:
                if (z10) {
                    dup_x2();
                }
                iastore();
                return;
        }
    }

    public void arraylength() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_arraylength;
    }

    public void astore(int i10) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= i10) {
            this.maxLocals = i10 + 1;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i11 = this.classFileOffset;
            int i12 = i11 + 1;
            this.classFileOffset = i12;
            bArr[i11] = Opcodes.OPC_astore;
            this.classFileOffset = i11 + 2;
            bArr[i12] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i13 = this.classFileOffset;
        int i14 = i13 + 1;
        this.classFileOffset = i14;
        bArr2[i13] = Opcodes.OPC_wide;
        this.classFileOffset = i13 + 2;
        bArr2[i14] = Opcodes.OPC_astore;
        writeUnsignedShort(i10);
    }

    public void astore_0() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals == 0) {
            this.maxLocals = 1;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_astore_0;
    }

    public void astore_1() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 1) {
            this.maxLocals = 2;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_astore_1;
    }

    public void astore_2() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 2) {
            this.maxLocals = 3;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_astore_2;
    }

    public void astore_3() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 3) {
            this.maxLocals = 4;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_astore_3;
    }

    public void athrow() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        int i10 = this.position + 1;
        this.position = i10;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_athrow;
        this.lastAbruptCompletion = i10;
    }

    public void baload() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 51;
    }

    public void bastore() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_bastore;
    }

    public void bipush(byte b10) {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 1 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        int i12 = i11 + 1;
        this.classFileOffset = i12;
        bArr[i11] = 16;
        this.classFileOffset = i11 + 2;
        bArr[i12] = b10;
    }

    public void caload() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 52;
    }

    public void castore() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_castore;
    }

    public void checkcast(int i10) {
        this.countLabels = 0;
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_checkcast;
        switch (i10) {
            case 2:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangCharacterConstantPoolName));
                return;
            case 3:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangByteConstantPoolName));
                return;
            case 4:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangShortConstantPoolName));
                return;
            case 5:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangBooleanConstantPoolName));
                return;
            case 6:
            default:
                return;
            case 7:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangLongConstantPoolName));
                return;
            case 8:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangDoubleConstantPoolName));
                return;
            case 9:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangFloatConstantPoolName));
                return;
            case 10:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangIntegerConstantPoolName));
                return;
        }
    }

    public void d2f() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_d2f;
    }

    public void d2i() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_d2i;
    }

    public void d2l() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_d2l;
    }

    public void dadd() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_dadd;
    }

    public void daload() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_daload;
    }

    public void dastore() {
        this.countLabels = 0;
        this.stackDepth -= 4;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_dastore;
    }

    public void dcmpg() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_dcmpg;
    }

    public void dcmpl() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_dcmpl;
    }

    public void dconst_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 14;
    }

    public void dconst_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 15;
    }

    public void ddiv() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 111;
    }

    public void decrStackSize(int i10) {
        this.stackDepth -= i10;
    }

    public void dload(int i10) {
        this.countLabels = 0;
        int i11 = this.stackDepth + 2;
        this.stackDepth = i11;
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        int i12 = i10 + 2;
        if (this.maxLocals < i12) {
            this.maxLocals = i12;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i13 = this.classFileOffset;
            int i14 = i13 + 1;
            this.classFileOffset = i14;
            bArr[i13] = 24;
            this.classFileOffset = i13 + 2;
            bArr[i14] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i15 = this.classFileOffset;
        int i16 = i15 + 1;
        this.classFileOffset = i16;
        bArr2[i15] = Opcodes.OPC_wide;
        this.classFileOffset = i15 + 2;
        bArr2[i16] = 24;
        writeUnsignedShort(i10);
    }

    public void dload_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.maxLocals < 2) {
            this.maxLocals = 2;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 38;
    }

    public void dload_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.maxLocals < 3) {
            this.maxLocals = 3;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_dload_1;
    }

    public void dload_2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.maxLocals < 4) {
            this.maxLocals = 4;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 40;
    }

    public void dload_3() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.maxLocals < 5) {
            this.maxLocals = 5;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 41;
    }

    public void dmul() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 107;
    }

    public void dneg() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_dneg;
    }

    public void drem() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_drem;
    }

    public void dreturn() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        int i10 = this.position + 1;
        this.position = i10;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_dreturn;
        this.lastAbruptCompletion = i10;
    }

    public void dstore(int i10) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals <= i10 + 1) {
            this.maxLocals = i10 + 2;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i11 = this.classFileOffset;
            int i12 = i11 + 1;
            this.classFileOffset = i12;
            bArr[i11] = Opcodes.OPC_dstore;
            this.classFileOffset = i11 + 2;
            bArr[i12] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i13 = this.classFileOffset;
        int i14 = i13 + 1;
        this.classFileOffset = i14;
        bArr2[i13] = Opcodes.OPC_wide;
        this.classFileOffset = i13 + 2;
        bArr2[i14] = Opcodes.OPC_dstore;
        writeUnsignedShort(i10);
    }

    public void dstore_0() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals < 2) {
            this.maxLocals = 2;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 71;
    }

    public void dstore_1() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals < 3) {
            this.maxLocals = 3;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 72;
    }

    public void dstore_2() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals < 4) {
            this.maxLocals = 4;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_dstore_2;
    }

    public void dstore_3() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals < 5) {
            this.maxLocals = 5;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_dstore_3;
    }

    public void dsub() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_dsub;
    }

    public void dup() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_dup;
    }

    public void dup2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 92;
    }

    public void dup2_x1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_dup2_x1;
    }

    public void dup2_x2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_dup2_x2;
    }

    public void dup_x1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 90;
    }

    public void dup_x2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 91;
    }

    public void exitUserScope(BlockScope blockScope) {
        if ((this.generateAttributes & 28) == 0) {
            return;
        }
        int i10 = this.visibleLocalsCount - 1;
        while (i10 >= 0) {
            LocalVariableBinding localVariableBinding = this.visibleLocals[i10];
            if (localVariableBinding == null || localVariableBinding.declaringScope != blockScope) {
                i10--;
            } else {
                if (localVariableBinding.initializationCount > 0) {
                    localVariableBinding.recordInitializationEndPC(this.position);
                }
                this.visibleLocals[i10] = null;
                i10--;
            }
        }
    }

    public void f2d() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_f2d;
    }

    public void f2i() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_f2i;
    }

    public void f2l() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_f2l;
    }

    public void fadd() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_fadd;
    }

    public void faload() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 48;
    }

    public void fastore() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_fastore;
    }

    public void fcmpg() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_fcmpg;
    }

    public void fcmpl() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_fcmpl;
    }

    public void fconst_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 11;
    }

    public void fconst_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 12;
    }

    public void fconst_2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 13;
    }

    public void fdiv() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 110;
    }

    public void fieldAccess(byte b10, FieldBinding fieldBinding, TypeBinding typeBinding) {
        if (typeBinding == null) {
            typeBinding = fieldBinding.declaringClass;
        }
        if ((typeBinding.tagBits & 2048) != 0) {
            Util.recordNestedType(this.classFile, typeBinding);
        }
        TypeBinding typeBinding2 = fieldBinding.type;
        int i10 = typeBinding2.f102482id;
        fieldAccess(b10, (i10 == 7 || i10 == 8) ? 2 : 1, typeBinding.constantPoolName(), fieldBinding.name, typeBinding2.signature());
    }

    public ReferenceBinding findDirectSuperTypeTowards(SyntheticMethodBinding syntheticMethodBinding, MethodBinding methodBinding) {
        ReferenceBinding referenceBinding = syntheticMethodBinding.declaringClass;
        ReferenceBinding superclass = referenceBinding.superclass();
        if (!methodBinding.isDefaultMethod()) {
            return superclass;
        }
        ReferenceBinding referenceBinding2 = methodBinding.declaringClass;
        if (superclass.isCompatibleWith(referenceBinding2)) {
            return superclass;
        }
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        if (superInterfaces != null) {
            for (ReferenceBinding referenceBinding3 : superInterfaces) {
                if (referenceBinding3.isCompatibleWith(referenceBinding2)) {
                    return referenceBinding3;
                }
            }
        }
        throw new RuntimeException("Assumption violated: some super type must be conform to the declaring class of a super method");
    }

    public void fload(int i10) {
        this.countLabels = 0;
        int i11 = this.stackDepth + 1;
        this.stackDepth = i11;
        if (this.maxLocals <= i10) {
            this.maxLocals = i10 + 1;
        }
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i12 = this.classFileOffset;
            int i13 = i12 + 1;
            this.classFileOffset = i13;
            bArr[i12] = 23;
            this.classFileOffset = i12 + 2;
            bArr[i13] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i14 = this.classFileOffset;
        int i15 = i14 + 1;
        this.classFileOffset = i15;
        bArr2[i14] = Opcodes.OPC_wide;
        this.classFileOffset = i14 + 2;
        bArr2[i15] = 23;
        writeUnsignedShort(i10);
    }

    public void fload_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (this.maxLocals == 0) {
            this.maxLocals = 1;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 34;
    }

    public void fload_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (this.maxLocals <= 1) {
            this.maxLocals = 2;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_fload_1;
    }

    public void fload_2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (this.maxLocals <= 2) {
            this.maxLocals = 3;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_fload_2;
    }

    public void fload_3() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (this.maxLocals <= 3) {
            this.maxLocals = 4;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_fload_3;
    }

    public void fmul() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 106;
    }

    public void fneg() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_fneg;
    }

    public void frem() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_frem;
    }

    public void freturn() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        int i10 = this.position + 1;
        this.position = i10;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_freturn;
        this.lastAbruptCompletion = i10;
    }

    public void fstore(int i10) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= i10) {
            this.maxLocals = i10 + 1;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i11 = this.classFileOffset;
            int i12 = i11 + 1;
            this.classFileOffset = i12;
            bArr[i11] = Opcodes.OPC_fstore;
            this.classFileOffset = i11 + 2;
            bArr[i12] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i13 = this.classFileOffset;
        int i14 = i13 + 1;
        this.classFileOffset = i14;
        bArr2[i13] = Opcodes.OPC_wide;
        this.classFileOffset = i13 + 2;
        bArr2[i14] = Opcodes.OPC_fstore;
        writeUnsignedShort(i10);
    }

    public void fstore_0() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals == 0) {
            this.maxLocals = 1;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_fstore_0;
    }

    public void fstore_1() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 1) {
            this.maxLocals = 2;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_fstore_1;
    }

    public void fstore_2() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 2) {
            this.maxLocals = 3;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_fstore_2;
    }

    public void fstore_3() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 3) {
            this.maxLocals = 4;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 70;
    }

    public void fsub() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 102;
    }

    public void generateBoxingConversion(int i10) {
        switch (i10) {
            case 2:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    invoke(Opcodes.OPC_invokestatic, 1, 1, ConstantPool.JavaLangCharacterConstantPoolName, ConstantPool.ValueOf, ConstantPool.charCharacterSignature);
                    return;
                }
                newWrapperFor(i10);
                dup_x1();
                swap();
                invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangCharacterConstantPoolName, ConstantPool.Init, ConstantPool.CharConstrSignature);
                return;
            case 3:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    invoke(Opcodes.OPC_invokestatic, 1, 1, ConstantPool.JavaLangByteConstantPoolName, ConstantPool.ValueOf, ConstantPool.byteByteSignature);
                    return;
                }
                newWrapperFor(i10);
                dup_x1();
                swap();
                invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangByteConstantPoolName, ConstantPool.Init, ConstantPool.ByteConstrSignature);
                return;
            case 4:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    invoke(Opcodes.OPC_invokestatic, 1, 1, ConstantPool.JavaLangShortConstantPoolName, ConstantPool.ValueOf, ConstantPool.shortShortSignature);
                    return;
                }
                newWrapperFor(i10);
                dup_x1();
                swap();
                invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangShortConstantPoolName, ConstantPool.Init, ConstantPool.ShortConstrSignature);
                return;
            case 5:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    invoke(Opcodes.OPC_invokestatic, 1, 1, ConstantPool.JavaLangBooleanConstantPoolName, ConstantPool.ValueOf, ConstantPool.booleanBooleanSignature);
                    return;
                }
                newWrapperFor(i10);
                dup_x1();
                swap();
                invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangBooleanConstantPoolName, ConstantPool.Init, ConstantPool.BooleanConstrSignature);
                return;
            case 6:
            default:
                return;
            case 7:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    invoke(Opcodes.OPC_invokestatic, 2, 1, ConstantPool.JavaLangLongConstantPoolName, ConstantPool.ValueOf, ConstantPool.longLongSignature);
                    return;
                }
                newWrapperFor(i10);
                dup_x2();
                dup_x2();
                pop();
                invoke(Opcodes.OPC_invokespecial, 3, 0, ConstantPool.JavaLangLongConstantPoolName, ConstantPool.Init, ConstantPool.LongConstrSignature);
                return;
            case 8:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    invoke(Opcodes.OPC_invokestatic, 2, 1, ConstantPool.JavaLangDoubleConstantPoolName, ConstantPool.ValueOf, ConstantPool.doubleDoubleSignature);
                    return;
                }
                newWrapperFor(i10);
                dup_x2();
                dup_x2();
                pop();
                invoke(Opcodes.OPC_invokespecial, 3, 0, ConstantPool.JavaLangDoubleConstantPoolName, ConstantPool.Init, ConstantPool.DoubleConstrSignature);
                return;
            case 9:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    invoke(Opcodes.OPC_invokestatic, 1, 1, ConstantPool.JavaLangFloatConstantPoolName, ConstantPool.ValueOf, ConstantPool.floatFloatSignature);
                    return;
                }
                newWrapperFor(i10);
                dup_x1();
                swap();
                invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangFloatConstantPoolName, ConstantPool.Init, ConstantPool.FloatConstrSignature);
                return;
            case 10:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    invoke(Opcodes.OPC_invokestatic, 1, 1, ConstantPool.JavaLangIntegerConstantPoolName, ConstantPool.ValueOf, ConstantPool.IntIntegerSignature);
                    return;
                }
                newWrapperFor(i10);
                dup_x1();
                swap();
                invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangIntegerConstantPoolName, ConstantPool.Init, ConstantPool.IntConstrSignature);
                return;
        }
    }

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
        goto_(branchLabel);
        int i10 = this.stackDepth;
        pushExceptionOnStack(nullTypeBinding);
        exceptionLabel.place();
        newNoClassDefFoundError();
        dup_x1();
        swap();
        invokeThrowableGetMessage();
        invokeNoClassDefFoundErrorStringConstructor();
        athrow();
        branchLabel.place();
        this.stackDepth = i10;
    }

    public final void generateCodeAttributeForProblemMethod(String str) {
        newJavaLangError();
        dup();
        ldc(str);
        invokeJavaLangErrorConstructor();
        athrow();
    }

    public void generateConstant(Constant constant, int i10) {
        int i11 = (i10 & 255) >> 4;
        if (i11 == 0) {
            i11 = constant.typeID();
        }
        switch (i11) {
            case 2:
                generateInlinedValue(constant.charValue());
                break;
            case 3:
                generateInlinedValue(constant.byteValue());
                break;
            case 4:
                generateInlinedValue(constant.shortValue());
                break;
            case 5:
                generateInlinedValue(constant.booleanValue());
                break;
            case 7:
                generateInlinedValue(constant.longValue());
                break;
            case 8:
                generateInlinedValue(constant.doubleValue());
                break;
            case 9:
                generateInlinedValue(constant.floatValue());
                break;
            case 10:
                generateInlinedValue(constant.intValue());
                break;
            case 11:
                ldc(constant.stringValue());
                break;
        }
        if ((i10 & 512) != 0) {
            generateBoxingConversion(i11);
        }
    }

    public void generateEmulatedReadAccessForField(FieldBinding fieldBinding) {
        generateEmulationForField(fieldBinding);
        swap();
        invokeJavaLangReflectFieldGetter(fieldBinding.type.f102482id);
        if (fieldBinding.type.isBaseType()) {
            return;
        }
        checkcast(fieldBinding.type);
    }

    public void generateEmulatedWriteAccessForField(FieldBinding fieldBinding) {
        invokeJavaLangReflectFieldSetter(fieldBinding.type.f102482id);
    }

    public void generateEmulationForConstructor(Scope scope, MethodBinding methodBinding) {
        ldc(String.valueOf(methodBinding.declaringClass.constantPoolName()).replace('/', '.'));
        invokeClassForName();
        int length = methodBinding.parameters.length;
        generateInlinedValue(length);
        newArray(scope.createArrayType(scope.getType(TypeConstants.JAVA_LANG_CLASS, 3), 1));
        if (length > 0) {
            dup();
            for (int i10 = 0; i10 < length; i10++) {
                generateInlinedValue(i10);
                TypeBinding typeBinding = methodBinding.parameters[i10];
                if (typeBinding.isBaseType()) {
                    getTYPE(typeBinding.f102482id);
                } else if (typeBinding.isArrayType()) {
                    ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
                    if (arrayBinding.leafComponentType.isBaseType()) {
                        getTYPE(arrayBinding.leafComponentType.f102482id);
                    } else {
                        ldc(String.valueOf(arrayBinding.leafComponentType.constantPoolName()).replace('/', '.'));
                        invokeClassForName();
                    }
                    generateInlinedValue(arrayBinding.dimensions);
                    newarray(10);
                    invokeArrayNewInstance();
                    invokeObjectGetClass();
                } else {
                    ldc(String.valueOf(methodBinding.declaringClass.constantPoolName()).replace('/', '.'));
                    invokeClassForName();
                }
                aastore();
                if (i10 < length - 1) {
                    dup();
                }
            }
        }
        invokeClassGetDeclaredConstructor();
        dup();
        iconst_1();
        invokeAccessibleObjectSetAccessible();
    }

    public void generateEmulationForField(FieldBinding fieldBinding) {
        ldc(String.valueOf(fieldBinding.declaringClass.constantPoolName()).replace('/', '.'));
        invokeClassForName();
        ldc(String.valueOf(fieldBinding.name));
        invokeClassGetDeclaredField();
        dup();
        iconst_1();
        invokeAccessibleObjectSetAccessible();
    }

    public void generateEmulationForMethod(Scope scope, MethodBinding methodBinding) {
        ldc(String.valueOf(methodBinding.declaringClass.constantPoolName()).replace('/', '.'));
        invokeClassForName();
        ldc(String.valueOf(methodBinding.selector));
        int length = methodBinding.parameters.length;
        generateInlinedValue(length);
        newArray(scope.createArrayType(scope.getType(TypeConstants.JAVA_LANG_CLASS, 3), 1));
        if (length > 0) {
            dup();
            for (int i10 = 0; i10 < length; i10++) {
                generateInlinedValue(i10);
                TypeBinding typeBinding = methodBinding.parameters[i10];
                if (typeBinding.isBaseType()) {
                    getTYPE(typeBinding.f102482id);
                } else if (typeBinding.isArrayType()) {
                    ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
                    if (arrayBinding.leafComponentType.isBaseType()) {
                        getTYPE(arrayBinding.leafComponentType.f102482id);
                    } else {
                        ldc(String.valueOf(arrayBinding.leafComponentType.constantPoolName()).replace('/', '.'));
                        invokeClassForName();
                    }
                    generateInlinedValue(arrayBinding.dimensions);
                    newarray(10);
                    invokeArrayNewInstance();
                    invokeObjectGetClass();
                } else {
                    ldc(String.valueOf(methodBinding.declaringClass.constantPoolName()).replace('/', '.'));
                    invokeClassForName();
                }
                aastore();
                if (i10 < length - 1) {
                    dup();
                }
            }
        }
        invokeClassGetDeclaredMethod();
        dup();
        iconst_1();
        invokeAccessibleObjectSetAccessible();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateImplicitConversion(int i10) {
        if ((i10 & 1024) != 0) {
            generateUnboxingConversion(i10 & 15);
        }
        int i11 = i10 & 255;
        if (i11 != 35 && i11 != 36) {
            if (i11 != 49) {
                if (i11 != 50) {
                    if (i11 != 137) {
                        if (i11 != 138) {
                            switch (i11) {
                                case 33:
                                case 81:
                                case 145:
                                case 161:
                                    break;
                                case 39:
                                    l2i();
                                    i2c();
                                    break;
                                case 40:
                                    d2i();
                                    i2c();
                                    break;
                                case 41:
                                    f2i();
                                    i2c();
                                    break;
                                case 42:
                                    break;
                                case 52:
                                    break;
                                case 135:
                                    l2d();
                                    break;
                                case 146:
                                case 147:
                                case 148:
                                case 154:
                                    i2f();
                                    break;
                                case 151:
                                    l2f();
                                    break;
                                case 152:
                                    d2f();
                                    break;
                                case 167:
                                    l2i();
                                    break;
                                case 168:
                                    d2i();
                                    break;
                                case 169:
                                    f2i();
                                    break;
                                default:
                                    switch (i11) {
                                        case 55:
                                            l2i();
                                            i2b();
                                            break;
                                        case 56:
                                            d2i();
                                            i2b();
                                            break;
                                        case 57:
                                            f2i();
                                            i2b();
                                            break;
                                        case 58:
                                            break;
                                        default:
                                            switch (i11) {
                                                case 65:
                                                    break;
                                                case 66:
                                                case 67:
                                                    i2s();
                                                    break;
                                                default:
                                                    switch (i11) {
                                                        case 71:
                                                            l2i();
                                                            i2s();
                                                            break;
                                                        case 72:
                                                            d2i();
                                                            i2s();
                                                            break;
                                                        case 73:
                                                            f2i();
                                                            i2s();
                                                            break;
                                                        case 74:
                                                            break;
                                                        default:
                                                            switch (i11) {
                                                                case 113:
                                                                    break;
                                                                case 114:
                                                                case 115:
                                                                case 116:
                                                                    i2l();
                                                                    break;
                                                                default:
                                                                    switch (i11) {
                                                                        case 120:
                                                                            d2l();
                                                                            break;
                                                                        case 121:
                                                                            f2l();
                                                                            break;
                                                                        case 122:
                                                                            break;
                                                                        default:
                                                                            switch (i11) {
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                        }
                        i2d();
                    } else {
                        f2d();
                    }
                    if ((i10 & 512) == 0) {
                        generateBoxingConversion(i11 >> 4);
                        return;
                    }
                    return;
                }
                i2b();
                if ((i10 & 512) == 0) {
                }
            }
            int i12 = i11 >> 4;
            checkcast(i12);
            generateUnboxingConversion(i12);
            if ((i10 & 512) == 0) {
            }
        }
        i2c();
        if ((i10 & 512) == 0) {
        }
    }

    public void generateInlinedValue(boolean z10) {
        if (z10) {
            iconst_1();
        } else {
            iconst_0();
        }
    }

    public void generateOuterAccess(Object[] objArr, ASTNode aSTNode, Binding binding, Scope scope) {
        if (objArr == null) {
            if (binding instanceof LocalVariableBinding) {
                scope.problemReporter().needImplementation(aSTNode);
                return;
            } else {
                scope.problemReporter().noSuchEnclosingInstance((ReferenceBinding) binding, aSTNode, false);
                return;
            }
        }
        if (objArr == BlockScope.NoEnclosingInstanceInConstructorCall) {
            scope.problemReporter().noSuchEnclosingInstance((ReferenceBinding) binding, aSTNode, true);
            return;
        }
        if (objArr == BlockScope.NoEnclosingInstanceInStaticContext) {
            scope.problemReporter().noSuchEnclosingInstance((ReferenceBinding) binding, aSTNode, false);
            return;
        }
        if (objArr == BlockScope.EmulationPathToImplicitThis) {
            aload_0();
            return;
        }
        Object obj = objArr[0];
        if (obj instanceof FieldBinding) {
            aload_0();
            fieldAccess(Opcodes.OPC_getfield, (FieldBinding) obj, null);
        } else {
            load((LocalVariableBinding) obj);
        }
        int length = objArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            Object obj2 = objArr[i10];
            if (obj2 instanceof FieldBinding) {
                fieldAccess(Opcodes.OPC_getfield, (FieldBinding) obj2, null);
            } else {
                invoke(Opcodes.OPC_invokestatic, (MethodBinding) obj2, null);
            }
        }
    }

    public void generateReturnBytecode(Expression expression) {
        if (expression == null) {
            return_();
            return;
        }
        int i10 = expression.implicitConversion;
        if ((i10 & 512) != 0) {
            areturn();
            return;
        }
        switch ((i10 & 255) >> 4) {
            case 5:
            case 10:
                ireturn();
                return;
            case 6:
            default:
                areturn();
                return;
            case 7:
                lreturn();
                return;
            case 8:
                dreturn();
                return;
            case 9:
                freturn();
                return;
        }
    }

    public void generateStringConcatenationAppend(BlockScope blockScope, Expression expression, Expression expression2) {
        if (expression == null) {
            newStringContatenation();
            dup_x1();
            swap();
            invokeStringValueOf(1);
            invokeStringConcatenationStringConstructor();
        } else {
            int i10 = this.position;
            expression.generateOptimizedStringConcatenationCreation(blockScope, this, expression.implicitConversion & 15);
            recordPositionsFrom(i10, expression.sourceStart);
        }
        int i11 = this.position;
        expression2.generateOptimizedStringConcatenation(blockScope, this, expression2.implicitConversion & 15);
        recordPositionsFrom(i11, expression2.sourceStart);
        invokeStringConcatenationToString();
    }

    public void generateSyntheticBodyForArrayClone(SyntheticMethodBinding syntheticMethodBinding) {
        initializeMaxLocals(syntheticMethodBinding);
        TypeBinding typeBinding = syntheticMethodBinding.parameters[0];
        aload_0();
        invoke(Opcodes.OPC_invokevirtual, 1, 1, typeBinding.signature(), ConstantPool.Clone, ConstantPool.CloneSignature);
        checkcast(typeBinding);
        areturn();
    }

    public void generateSyntheticBodyForArrayConstructor(SyntheticMethodBinding syntheticMethodBinding) {
        initializeMaxLocals(syntheticMethodBinding);
        iload_0();
        newArray(null, null, (ArrayBinding) syntheticMethodBinding.returnType);
        areturn();
    }

    public void generateSyntheticBodyForConstructorAccess(SyntheticMethodBinding syntheticMethodBinding) {
        int i10;
        initializeMaxLocals(syntheticMethodBinding);
        MethodBinding methodBinding = syntheticMethodBinding.targetMethod;
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        aload_0();
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        if (referenceBinding.erasure().f102482id == 41 || referenceBinding.isEnum()) {
            aload_1();
            iload_2();
            i10 = 3;
        } else {
            i10 = 1;
        }
        if (referenceBinding.isNestedType()) {
            SyntheticArgumentBinding[] syntheticEnclosingInstances = ((NestedTypeBinding) referenceBinding).syntheticEnclosingInstances();
            int i11 = 0;
            while (true) {
                if (i11 >= (syntheticEnclosingInstances == null ? 0 : syntheticEnclosingInstances.length)) {
                    break;
                }
                TypeBinding typeBinding = syntheticEnclosingInstances[i11].type;
                load(typeBinding, i10);
                int i12 = typeBinding.f102482id;
                i10 = (i12 == 7 || i12 == 8) ? i10 + 2 : i10 + 1;
                i11++;
            }
        }
        for (TypeBinding typeBinding2 : typeBindingArr) {
            load(typeBinding2, i10);
            int i13 = typeBinding2.f102482id;
            i10 = (i13 == 7 || i13 == 8) ? i10 + 2 : i10 + 1;
        }
        if (referenceBinding.isNestedType()) {
            SyntheticArgumentBinding[] syntheticOuterLocalVariables = ((NestedTypeBinding) referenceBinding).syntheticOuterLocalVariables();
            int i14 = 0;
            while (true) {
                if (i14 >= (syntheticOuterLocalVariables == null ? 0 : syntheticOuterLocalVariables.length)) {
                    break;
                }
                TypeBinding typeBinding3 = syntheticOuterLocalVariables[i14].type;
                load(typeBinding3, i10);
                int i15 = typeBinding3.f102482id;
                i10 = (i15 == 7 || i15 == 8) ? i10 + 2 : i10 + 1;
                i14++;
            }
        }
        invoke(Opcodes.OPC_invokespecial, methodBinding, null);
        return_();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateSyntheticBodyForDeserializeLambda(SyntheticMethodBinding syntheticMethodBinding, SyntheticMethodBinding[] syntheticMethodBindingArr) {
        MethodBinding methodBinding;
        byte b10;
        SyntheticArgumentBinding[] syntheticArgumentBindingArr;
        TypeBinding typeBinding;
        BranchLabel branchLabel;
        int i10;
        StringBuffer stringBuffer;
        SyntheticArgumentBinding[] syntheticArgumentBindingArr2;
        int i11;
        int length;
        int i12;
        TypeBinding typeBinding2;
        TypeBinding typeBinding3;
        int i13;
        initializeMaxLocals(syntheticMethodBinding);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int length2 = syntheticMethodBindingArr.length;
        boolean z10 = 0;
        int i14 = 0;
        while (i14 < length2) {
            boolean z11 = z10 ? 1 : 0;
            SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethodBindingArr[i14];
            LambdaExpression lambdaExpression = syntheticMethodBinding2.lambda;
            if ((lambdaExpression != null && lambdaExpression.isSerializable) || syntheticMethodBinding2.serializableMethodRef != null) {
                Integer valueOf = Integer.valueOf(new String(syntheticMethodBinding2.selector).hashCode());
                Collection collection = (List) linkedHashMap.get(valueOf);
                if (collection == null) {
                    collection = new ArrayList();
                    linkedHashMap.put(valueOf, collection);
                }
                collection.add(syntheticMethodBinding2);
            }
            i14++;
            z10 = z11;
        }
        ClassScope classScope = ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope;
        aload_0();
        invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangInvokeSerializedLambdaConstantPoolName, ConstantPool.GetImplMethodName, ConstantPool.GetImplMethodNameSignature);
        astore_1();
        LocalVariableBinding localVariableBinding = new LocalVariableBinding(SuggestionSpan.SUGGESTION_SPAN_PICKED_HASHCODE.toCharArray(), classScope.getJavaLangString(), z10 ? 1 : 0, z10);
        int i15 = 1;
        localVariableBinding.resolvedPosition = 1;
        addVariable(localVariableBinding);
        iconst_m1();
        istore_2();
        LocalVariableBinding localVariableBinding2 = new LocalVariableBinding("id".toCharArray(), TypeBinding.INT, z10 ? 1 : 0, z10);
        localVariableBinding2.resolvedPosition = 2;
        addVariable(localVariableBinding2);
        aload_1();
        invokeStringHashCode();
        BranchLabel branchLabel2 = new BranchLabel(this);
        CaseLabel caseLabel = new CaseLabel(this);
        int size = linkedHashMap.size();
        CaseLabel[] caseLabelArr = new CaseLabel[size];
        int[] iArr = new int[size];
        int[] iArr2 = new int[size];
        Set<K> o10 = linkedHashMap.o();
        int i16 = z10 ? 1 : 0;
        int i17 = z10;
        for (K k10 : o10) {
            int i18 = i17 == true ? 1 : 0;
            caseLabelArr[i16] = new CaseLabel(this);
            iArr[i16] = k10.intValue();
            iArr2[i16] = i16;
            i16++;
            i15 = 1;
            i17 = i18;
        }
        int[] iArr3 = new int[size];
        System.arraycopy(iArr, i17 == true ? 1 : 0, iArr3, i17 == true ? 1 : 0, size);
        sort(iArr3, i17 == true ? 1 : 0, size - i15, iArr2);
        lookupswitch(caseLabel, iArr, iArr2, caseLabelArr);
        Iterator it = o10.iterator();
        int i19 = i17 == true ? 1 : 0;
        int i20 = i17;
        while (it.hasNext()) {
            int i21 = i20;
            LocalVariableBinding localVariableBinding3 = localVariableBinding;
            LocalVariableBinding localVariableBinding4 = localVariableBinding2;
            List list = (List) linkedHashMap.get((Integer) it.next());
            caseLabelArr[i19].place();
            BranchLabel branchLabel3 = new BranchLabel(this);
            int size2 = list.size();
            for (int i22 = i21; i22 < size2; i22++) {
                SyntheticMethodBinding syntheticMethodBinding3 = (SyntheticMethodBinding) list.get(i22);
                aload_1();
                ldc(new String(syntheticMethodBinding3.selector));
                invokeStringEquals();
                ifeq(branchLabel3);
                loadInt(i19);
                istore_2();
                goto_(branchLabel2);
                branchLabel3.place();
                branchLabel3 = new BranchLabel(this);
            }
            i19++;
            goto_(branchLabel2);
            localVariableBinding = localVariableBinding3;
            localVariableBinding2 = localVariableBinding4;
            i20 = i21;
            i15 = 1;
        }
        caseLabel.place();
        branchLabel2.place();
        int size3 = o10.size();
        CaseLabel[] caseLabelArr2 = new CaseLabel[size3];
        int[] iArr4 = new int[size3];
        int[] iArr5 = new int[size3];
        BranchLabel branchLabel4 = new BranchLabel(this);
        CaseLabel caseLabel2 = new CaseLabel(this);
        iload_2();
        int i23 = i20;
        while (i23 < size3) {
            caseLabelArr2[i23] = new CaseLabel(this);
            iArr4[i23] = i23;
            iArr5[i23] = i23;
            i23++;
            i15 = 1;
        }
        int[] iArr6 = new int[size3];
        System.arraycopy(iArr4, i20, iArr6, i20, size3);
        sort(iArr6, i20, size3 - i15, iArr5);
        lookupswitch(caseLabel2, iArr4, iArr5, caseLabelArr2);
        Iterator it2 = o10.iterator();
        int i24 = i20;
        int i25 = i20;
        while (it2.hasNext()) {
            List list2 = (List) linkedHashMap.get((Integer) it2.next());
            int i26 = i24 + 1;
            caseLabelArr2[i24].place();
            BranchLabel branchLabel5 = list2.size() > i15 ? new BranchLabel(this) : branchLabel4;
            int size4 = list2.size();
            BranchLabel branchLabel6 = branchLabel5;
            int i27 = i25 == true ? 1 : 0;
            int i28 = i25;
            while (i27 < size4) {
                SyntheticMethodBinding syntheticMethodBinding4 = (SyntheticMethodBinding) list2.get(i27);
                aload_0();
                FunctionalExpression functionalExpression = syntheticMethodBinding4.lambda;
                if (functionalExpression == null) {
                    functionalExpression = syntheticMethodBinding4.serializableMethodRef;
                }
                MethodBinding methodBinding2 = functionalExpression.binding;
                char[] cArr = ConstantPool.JavaLangInvokeSerializedLambdaConstantPoolName;
                FunctionalExpression functionalExpression2 = functionalExpression;
                int i29 = i27;
                BranchLabel branchLabel7 = branchLabel6;
                int i30 = size4;
                CaseLabel caseLabel3 = caseLabel2;
                List list3 = list2;
                invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetImplMethodKind, ConstantPool.GetImplMethodKindSignature);
                if (methodBinding2.isStatic()) {
                    b10 = 6;
                } else if (methodBinding2.isPrivate()) {
                    b10 = 7;
                } else if (methodBinding2.isConstructor()) {
                    b10 = 8;
                } else {
                    methodBinding = methodBinding2;
                    b10 = methodBinding.declaringClass.isInterface() ? (byte) 9 : (byte) 5;
                    bipush(b10);
                    if_icmpne(branchLabel7);
                    aload_0();
                    LocalVariableBinding localVariableBinding5 = localVariableBinding;
                    MethodBinding methodBinding3 = methodBinding;
                    invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetFunctionalInterfaceClass, ConstantPool.GetFunctionalInterfaceClassSignature);
                    TypeBinding expectedType = functionalExpression2.expectedType();
                    ldc(!(expectedType instanceof IntersectionTypeBinding18) ? new String(((IntersectionTypeBinding18) expectedType).getSAMType(classScope).constantPoolName()) : new String(expectedType.constantPoolName()));
                    invokeObjectEquals();
                    ifeq(branchLabel7);
                    aload_0();
                    invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetFunctionalInterfaceMethodName, ConstantPool.GetFunctionalInterfaceMethodNameSignature);
                    ldc(new String(functionalExpression2.descriptor.selector));
                    invokeObjectEquals();
                    ifeq(branchLabel7);
                    aload_0();
                    LocalVariableBinding localVariableBinding6 = localVariableBinding2;
                    invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetFunctionalInterfaceMethodSignature, ConstantPool.GetFunctionalInterfaceMethodSignatureSignature);
                    ldc(new String(functionalExpression2.descriptor.original().signature()));
                    invokeObjectEquals();
                    ifeq(branchLabel7);
                    aload_0();
                    invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetImplClass, ConstantPool.GetImplClassSignature);
                    ldc(new String(methodBinding3.declaringClass.constantPoolName()));
                    invokeObjectEquals();
                    ifeq(branchLabel7);
                    aload_0();
                    invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetImplMethodSignature, ConstantPool.GetImplMethodSignatureSignature);
                    ldc(new String(methodBinding3.signature()));
                    invokeObjectEquals();
                    ifeq(branchLabel7);
                    StringBuffer stringBuffer2 = new StringBuffer("(");
                    if (functionalExpression2 instanceof LambdaExpression) {
                        ReferenceExpression referenceExpression = (ReferenceExpression) functionalExpression2;
                        if (referenceExpression.haveReceiver) {
                            typeBinding = referenceExpression.receiverType;
                            syntheticArgumentBindingArr = null;
                        } else {
                            syntheticArgumentBindingArr = null;
                            typeBinding = null;
                        }
                    } else {
                        LambdaExpression lambdaExpression2 = (LambdaExpression) functionalExpression2;
                        ReferenceBinding referenceBinding = lambdaExpression2.shouldCaptureInstance ? methodBinding3.declaringClass : null;
                        syntheticArgumentBindingArr = lambdaExpression2.outerLocalVariables;
                        typeBinding = referenceBinding;
                    }
                    if (typeBinding == null) {
                        aload_0();
                        loadInt(0);
                        i10 = 0;
                        branchLabel = branchLabel4;
                        stringBuffer = stringBuffer2;
                        invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetCapturedArg, ConstantPool.GetCapturedArgSignature);
                        checkcast(typeBinding);
                        stringBuffer.append(typeBinding.signature());
                        syntheticArgumentBindingArr2 = syntheticArgumentBindingArr;
                        i11 = 1;
                    } else {
                        branchLabel = branchLabel4;
                        i10 = 0;
                        stringBuffer = stringBuffer2;
                        syntheticArgumentBindingArr2 = syntheticArgumentBindingArr;
                        i11 = 0;
                    }
                    length = syntheticArgumentBindingArr2 != null ? i10 : syntheticArgumentBindingArr2.length;
                    int i31 = i11;
                    i12 = i10;
                    while (i12 < length) {
                        TypeBinding typeBinding4 = syntheticArgumentBindingArr2[i12].type;
                        aload_0();
                        loadInt(i31);
                        int i32 = i12;
                        int i33 = i31;
                        int i34 = length;
                        invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangInvokeSerializedLambdaConstantPoolName, ConstantPool.GetCapturedArg, ConstantPool.GetCapturedArgSignature);
                        if (typeBinding4.isBaseType()) {
                            typeBinding3 = typeBinding4;
                            checkcast(classScope.boxing(typeBinding3));
                            generateUnboxingConversion(typeBinding3.f102482id);
                            int i35 = typeBinding3.f102482id;
                            if (i35 == 30 || i35 == 32) {
                                i13 = i33 + 1;
                                i31 = i13 + 1;
                                stringBuffer.append(typeBinding3.signature());
                                i12 = i32 + 1;
                                length = i34;
                            }
                        } else {
                            typeBinding3 = typeBinding4;
                            checkcast(typeBinding3);
                        }
                        i13 = i33;
                        i31 = i13 + 1;
                        stringBuffer.append(typeBinding3.signature());
                        i12 = i32 + 1;
                        length = i34;
                    }
                    stringBuffer.append(")");
                    typeBinding2 = functionalExpression2.resolvedType;
                    if (typeBinding2 instanceof IntersectionTypeBinding18) {
                        stringBuffer.append(typeBinding2.signature());
                    } else {
                        stringBuffer.append(((IntersectionTypeBinding18) typeBinding2).getSAMType(classScope).signature());
                    }
                    invokeDynamic(functionalExpression2.bootstrapMethodNumber, i31, 1, functionalExpression2.descriptor.selector, stringBuffer.toString().toCharArray());
                    areturn();
                    if (i29 >= i30 - 1) {
                        branchLabel7.place();
                        branchLabel6 = i29 < i30 + (-2) ? new BranchLabel(this) : branchLabel;
                    } else {
                        branchLabel6 = branchLabel7;
                    }
                    i27 = i29 + 1;
                    branchLabel4 = branchLabel;
                    list2 = list3;
                    size4 = i30;
                    caseLabel2 = caseLabel3;
                    localVariableBinding = localVariableBinding5;
                    localVariableBinding2 = localVariableBinding6;
                    i28 = i10;
                    i15 = 1;
                }
                methodBinding = methodBinding2;
                bipush(b10);
                if_icmpne(branchLabel7);
                aload_0();
                LocalVariableBinding localVariableBinding52 = localVariableBinding;
                MethodBinding methodBinding32 = methodBinding;
                invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetFunctionalInterfaceClass, ConstantPool.GetFunctionalInterfaceClassSignature);
                TypeBinding expectedType2 = functionalExpression2.expectedType();
                ldc(!(expectedType2 instanceof IntersectionTypeBinding18) ? new String(((IntersectionTypeBinding18) expectedType2).getSAMType(classScope).constantPoolName()) : new String(expectedType2.constantPoolName()));
                invokeObjectEquals();
                ifeq(branchLabel7);
                aload_0();
                invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetFunctionalInterfaceMethodName, ConstantPool.GetFunctionalInterfaceMethodNameSignature);
                ldc(new String(functionalExpression2.descriptor.selector));
                invokeObjectEquals();
                ifeq(branchLabel7);
                aload_0();
                LocalVariableBinding localVariableBinding62 = localVariableBinding2;
                invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetFunctionalInterfaceMethodSignature, ConstantPool.GetFunctionalInterfaceMethodSignatureSignature);
                ldc(new String(functionalExpression2.descriptor.original().signature()));
                invokeObjectEquals();
                ifeq(branchLabel7);
                aload_0();
                invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetImplClass, ConstantPool.GetImplClassSignature);
                ldc(new String(methodBinding32.declaringClass.constantPoolName()));
                invokeObjectEquals();
                ifeq(branchLabel7);
                aload_0();
                invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.GetImplMethodSignature, ConstantPool.GetImplMethodSignatureSignature);
                ldc(new String(methodBinding32.signature()));
                invokeObjectEquals();
                ifeq(branchLabel7);
                StringBuffer stringBuffer22 = new StringBuffer("(");
                if (functionalExpression2 instanceof LambdaExpression) {
                }
                if (typeBinding == null) {
                }
                if (syntheticArgumentBindingArr2 != null) {
                }
                int i312 = i11;
                i12 = i10;
                while (i12 < length) {
                }
                stringBuffer.append(")");
                typeBinding2 = functionalExpression2.resolvedType;
                if (typeBinding2 instanceof IntersectionTypeBinding18) {
                }
                invokeDynamic(functionalExpression2.bootstrapMethodNumber, i312, 1, functionalExpression2.descriptor.selector, stringBuffer.toString().toCharArray());
                areturn();
                if (i29 >= i30 - 1) {
                }
                i27 = i29 + 1;
                branchLabel4 = branchLabel;
                list2 = list3;
                size4 = i30;
                caseLabel2 = caseLabel3;
                localVariableBinding = localVariableBinding52;
                localVariableBinding2 = localVariableBinding62;
                i28 = i10;
                i15 = 1;
            }
            i24 = i26;
            i25 = i28;
        }
        removeVariable(localVariableBinding);
        removeVariable(localVariableBinding2);
        caseLabel2.place();
        branchLabel4.place();
        new_(classScope.getJavaLangIllegalArgumentException());
        dup();
        ldc("Invalid lambda deserialization");
        invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangIllegalArgumentExceptionConstantPoolName, ConstantPool.Init, ConstantPool.IllegalArgumentExceptionConstructorSignature);
        athrow();
    }

    public void generateSyntheticBodyForEnumInitializationMethod(SyntheticMethodBinding syntheticMethodBinding) {
        this.maxLocals = 0;
        TypeDeclaration typeDeclaration = ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceContext;
        MethodScope methodScope = typeDeclaration.staticInitializerScope;
        FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        int i10 = syntheticMethodBinding.endIndex;
        for (int i11 = syntheticMethodBinding.startIndex; i11 < i10; i11++) {
            FieldDeclaration fieldDeclaration = fieldDeclarationArr[i11];
            if (fieldDeclaration.isStatic() && fieldDeclaration.getKind() == 3) {
                fieldDeclaration.generateCode(methodScope, this);
            }
        }
        return_();
    }

    public void generateSyntheticBodyForEnumValueOf(SyntheticMethodBinding syntheticMethodBinding) {
        initializeMaxLocals(syntheticMethodBinding);
        ReferenceBinding referenceBinding = syntheticMethodBinding.declaringClass;
        generateClassLiteralAccessForType(referenceBinding, null);
        aload_0();
        invokeJavaLangEnumvalueOf(referenceBinding);
        checkcast(referenceBinding);
        areturn();
    }

    public void generateSyntheticBodyForEnumValues(SyntheticMethodBinding syntheticMethodBinding) {
        ClassScope classScope = ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope;
        initializeMaxLocals(syntheticMethodBinding);
        TypeBinding typeBinding = syntheticMethodBinding.returnType;
        fieldAccess(Opcodes.OPC_getstatic, classScope.referenceContext.enumValuesSyntheticfield, null);
        dup();
        astore_0();
        iconst_0();
        aload_0();
        arraylength();
        dup();
        istore_1();
        newArray((ArrayBinding) typeBinding);
        dup();
        astore_2();
        iconst_0();
        iload_1();
        invokeSystemArraycopy();
        aload_2();
        areturn();
    }

    public void generateSyntheticBodyForFactoryMethod(SyntheticMethodBinding syntheticMethodBinding) {
        initializeMaxLocals(syntheticMethodBinding);
        MethodBinding methodBinding = syntheticMethodBinding.targetMethod;
        TypeBinding[] typeBindingArr = syntheticMethodBinding.parameters;
        new_(methodBinding.declaringClass);
        dup();
        int i10 = 0;
        for (TypeBinding typeBinding : typeBindingArr) {
            load(typeBinding, i10);
            int i11 = typeBinding.f102482id;
            i10 = (i11 == 7 || i11 == 8) ? i10 + 2 : i10 + 1;
        }
        for (int i12 = 0; i12 < syntheticMethodBinding.fakePaddedParameters; i12++) {
            aconst_null();
        }
        invoke(Opcodes.OPC_invokespecial, methodBinding, null);
        areturn();
    }

    public void generateSyntheticBodyForFieldReadAccess(SyntheticMethodBinding syntheticMethodBinding) {
        initializeMaxLocals(syntheticMethodBinding);
        FieldBinding fieldBinding = syntheticMethodBinding.targetReadField;
        ReferenceBinding superclass = syntheticMethodBinding.purpose == 3 ? syntheticMethodBinding.declaringClass.superclass() : syntheticMethodBinding.declaringClass;
        if (fieldBinding.isStatic()) {
            fieldAccess(Opcodes.OPC_getstatic, fieldBinding, superclass);
        } else {
            aload_0();
            fieldAccess(Opcodes.OPC_getfield, fieldBinding, superclass);
        }
        switch (fieldBinding.type.f102482id) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
                ireturn();
                return;
            case 6:
            default:
                areturn();
                return;
            case 7:
                lreturn();
                return;
            case 8:
                dreturn();
                return;
            case 9:
                freturn();
                return;
        }
    }

    public void generateSyntheticBodyForFieldWriteAccess(SyntheticMethodBinding syntheticMethodBinding) {
        initializeMaxLocals(syntheticMethodBinding);
        FieldBinding fieldBinding = syntheticMethodBinding.targetWriteField;
        ReferenceBinding superclass = syntheticMethodBinding.purpose == 4 ? syntheticMethodBinding.declaringClass.superclass() : syntheticMethodBinding.declaringClass;
        if (fieldBinding.isStatic()) {
            load(fieldBinding.type, 0);
            fieldAccess(Opcodes.OPC_putstatic, fieldBinding, superclass);
        } else {
            aload_0();
            load(fieldBinding.type, 1);
            fieldAccess(Opcodes.OPC_putfield, fieldBinding, superclass);
        }
        return_();
    }

    public void generateSyntheticBodyForMethodAccess(SyntheticMethodBinding syntheticMethodBinding) {
        int i10;
        initializeMaxLocals(syntheticMethodBinding);
        MethodBinding methodBinding = syntheticMethodBinding.targetMethod;
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = syntheticMethodBinding.purpose == 8 ? syntheticMethodBinding.parameters : null;
        if (methodBinding.isStatic()) {
            i10 = 0;
        } else {
            aload_0();
            i10 = 1;
        }
        for (int i11 = 0; i11 < length; i11++) {
            TypeBinding typeBinding = typeBindingArr[i11];
            if (typeBindingArr2 != null) {
                TypeBinding typeBinding2 = typeBindingArr2[i11];
                load(typeBinding2, i10);
                if (TypeBinding.notEquals(typeBinding2, typeBinding)) {
                    checkcast(typeBinding);
                }
            } else {
                load(typeBinding, i10);
            }
            int i12 = typeBinding.f102482id;
            i10 = (i12 == 7 || i12 == 8) ? i10 + 2 : i10 + 1;
        }
        if (methodBinding.isStatic()) {
            invoke(Opcodes.OPC_invokestatic, methodBinding, syntheticMethodBinding.declaringClass);
        } else if (methodBinding.isConstructor() || methodBinding.isPrivate() || syntheticMethodBinding.purpose == 7) {
            invoke(Opcodes.OPC_invokespecial, methodBinding, syntheticMethodBinding.purpose == 7 ? findDirectSuperTypeTowards(syntheticMethodBinding, methodBinding) : syntheticMethodBinding.declaringClass);
        } else if (methodBinding.declaringClass.isInterface()) {
            invoke(Opcodes.OPC_invokeinterface, methodBinding, null);
        } else {
            invoke(Opcodes.OPC_invokevirtual, methodBinding, syntheticMethodBinding.declaringClass);
        }
        switch (methodBinding.returnType.f102482id) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
                ireturn();
                return;
            case 6:
                return_();
                return;
            case 7:
                lreturn();
                return;
            case 8:
                dreturn();
                return;
            case 9:
                freturn();
                return;
            default:
                TypeBinding erasure = syntheticMethodBinding.returnType.erasure();
                if (methodBinding.returnType.findSuperTypeOriginatingFrom(erasure) == null) {
                    checkcast(erasure);
                }
                areturn();
                return;
        }
    }

    public void generateSyntheticBodyForSwitchTable(SyntheticMethodBinding syntheticMethodBinding) {
        ClassScope classScope = ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope;
        initializeMaxLocals(syntheticMethodBinding);
        BranchLabel branchLabel = new BranchLabel(this);
        FieldBinding fieldBinding = syntheticMethodBinding.targetReadField;
        fieldAccess(Opcodes.OPC_getstatic, fieldBinding, null);
        dup();
        ifnull(branchLabel);
        areturn();
        pushOnStack(fieldBinding.type);
        branchLabel.place();
        pop();
        ReferenceBinding referenceBinding = (ReferenceBinding) syntheticMethodBinding.targetEnumType;
        invokeJavaLangEnumValues(referenceBinding, classScope.createArrayType(referenceBinding, 1));
        arraylength();
        newarray(10);
        astore_0();
        LocalVariableBinding localVariableBinding = new LocalVariableBinding(" tab".toCharArray(), (TypeBinding) classScope.createArrayType(TypeBinding.INT, 1), 0, false);
        addVariable(localVariableBinding);
        FieldBinding[] fields = referenceBinding.fields();
        if (fields != null) {
            for (FieldBinding fieldBinding2 : fields) {
                if ((fieldBinding2.getAccessFlags() & 16384) != 0) {
                    BranchLabel branchLabel2 = new BranchLabel(this);
                    TypeBinding typeBinding = TypeBinding.LONG;
                    ExceptionLabel exceptionLabel = new ExceptionLabel(this, typeBinding);
                    exceptionLabel.placeStart();
                    aload_0();
                    fieldAccess(Opcodes.OPC_getstatic, fieldBinding2, null);
                    invokeEnumOrdinal(referenceBinding.constantPoolName());
                    generateInlinedValue(fieldBinding2.f102483id + 1);
                    iastore();
                    exceptionLabel.placeEnd();
                    goto_(branchLabel2);
                    pushExceptionOnStack(typeBinding);
                    exceptionLabel.place();
                    pop();
                    branchLabel2.place();
                }
            }
        }
        aload_0();
        if (classScope.compilerOptions().complianceLevel < ClassFileConstants.JDK9 || !fieldBinding.isFinal()) {
            dup();
            fieldAccess(Opcodes.OPC_putstatic, fieldBinding, null);
        }
        areturn();
        removeVariable(localVariableBinding);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0069, code lost:
    
        if (((org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall) r21).isSuperAccess() == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0084, code lost:
    
        if (((org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall) r21).isSuperAccess() == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x008a, code lost:
    
        if (r19.isLocalType() != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00b2, code lost:
    
        if (r12.isConstructorCall != false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateSyntheticEnclosingInstanceValues(BlockScope blockScope, ReferenceBinding referenceBinding, Expression expression, ASTNode aSTNode) {
        boolean z10;
        ReferenceBinding referenceBinding2 = referenceBinding.isAnonymousType() ? (ReferenceBinding) referenceBinding.superclass().erasure() : referenceBinding;
        boolean z11 = expression != null;
        if (z11 && (!referenceBinding2.isNestedType() || referenceBinding2.isStatic())) {
            blockScope.problemReporter().unnecessaryEnclosingInstanceSpecification(expression, referenceBinding2);
            return;
        }
        ReferenceBinding[] syntheticEnclosingInstanceTypes = referenceBinding.syntheticEnclosingInstanceTypes();
        if (syntheticEnclosingInstanceTypes != null) {
            ReferenceBinding enclosingType = referenceBinding2.enclosingType();
            long j10 = blockScope.compilerOptions().complianceLevel;
            if (j10 <= ClassFileConstants.JDK1_3) {
                z10 = aSTNode instanceof AllocationExpression;
            } else if (j10 == ClassFileConstants.JDK1_4) {
                if (!(aSTNode instanceof AllocationExpression)) {
                    if (aSTNode instanceof ExplicitConstructorCall) {
                    }
                    z10 = false;
                }
                z10 = true;
            } else if (j10 < ClassFileConstants.JDK1_7) {
                if (!(aSTNode instanceof AllocationExpression)) {
                    if (aSTNode instanceof ExplicitConstructorCall) {
                    }
                    z10 = false;
                }
            } else if (aSTNode instanceof AllocationExpression) {
                z10 = !referenceBinding.isLocalType();
            } else {
                if ((aSTNode instanceof ExplicitConstructorCall) && ((ExplicitConstructorCall) aSTNode).isSuperAccess()) {
                    MethodScope enclosingMethodScope = blockScope.enclosingMethodScope();
                    if (!referenceBinding.isLocalType()) {
                        if (enclosingMethodScope != null) {
                        }
                    }
                }
                z10 = false;
            }
            boolean z12 = j10 >= ClassFileConstants.JDK1_4;
            for (ReferenceBinding referenceBinding3 : syntheticEnclosingInstanceTypes) {
                if (z11 && TypeBinding.equalsEquals(referenceBinding3, enclosingType)) {
                    expression.generateCode(blockScope, this, true);
                    if (z12) {
                        dup();
                        invokeObjectGetClass();
                        pop();
                    }
                    z11 = false;
                } else {
                    generateOuterAccess(blockScope.getEmulationPath(referenceBinding3, false, z10), aSTNode, referenceBinding3, blockScope);
                }
            }
            if (z11) {
                blockScope.problemReporter().unnecessaryEnclosingInstanceSpecification(expression, referenceBinding2);
            }
        }
    }

    public void generateSyntheticOuterArgumentValues(BlockScope blockScope, ReferenceBinding referenceBinding, ASTNode aSTNode) {
        SyntheticArgumentBinding[] syntheticOuterLocalVariables = referenceBinding.syntheticOuterLocalVariables();
        if (syntheticOuterLocalVariables != null) {
            for (SyntheticArgumentBinding syntheticArgumentBinding : syntheticOuterLocalVariables) {
                LocalVariableBinding localVariableBinding = syntheticArgumentBinding.actualOuterLocalVariable;
                generateOuterAccess(blockScope.getEmulationPath(localVariableBinding), aSTNode, localVariableBinding, blockScope);
            }
        }
    }

    public void generateUnboxingConversion(int i10) {
        switch (i10) {
            case 2:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangCharacterConstantPoolName, ConstantPool.CHARVALUE_CHARACTER_METHOD_NAME, ConstantPool.CHARVALUE_CHARACTER_METHOD_SIGNATURE);
                return;
            case 3:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangByteConstantPoolName, ConstantPool.BYTEVALUE_BYTE_METHOD_NAME, ConstantPool.BYTEVALUE_BYTE_METHOD_SIGNATURE);
                return;
            case 4:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangShortConstantPoolName, ConstantPool.SHORTVALUE_SHORT_METHOD_NAME, ConstantPool.SHORTVALUE_SHORT_METHOD_SIGNATURE);
                return;
            case 5:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangBooleanConstantPoolName, ConstantPool.BOOLEANVALUE_BOOLEAN_METHOD_NAME, ConstantPool.BOOLEANVALUE_BOOLEAN_METHOD_SIGNATURE);
                return;
            case 6:
            default:
                return;
            case 7:
                invoke(Opcodes.OPC_invokevirtual, 1, 2, ConstantPool.JavaLangLongConstantPoolName, ConstantPool.LONGVALUE_LONG_METHOD_NAME, ConstantPool.LONGVALUE_LONG_METHOD_SIGNATURE);
                return;
            case 8:
                invoke(Opcodes.OPC_invokevirtual, 1, 2, ConstantPool.JavaLangDoubleConstantPoolName, ConstantPool.DOUBLEVALUE_DOUBLE_METHOD_NAME, ConstantPool.DOUBLEVALUE_DOUBLE_METHOD_SIGNATURE);
                return;
            case 9:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangFloatConstantPoolName, ConstantPool.FLOATVALUE_FLOAT_METHOD_NAME, ConstantPool.FLOATVALUE_FLOAT_METHOD_SIGNATURE);
                return;
            case 10:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangIntegerConstantPoolName, ConstantPool.INTVALUE_INTEGER_METHOD_NAME, ConstantPool.INTVALUE_INTEGER_METHOD_SIGNATURE);
                return;
        }
    }

    public void generateWideRevertedConditionalBranch(byte b10, BranchLabel branchLabel) {
        BranchLabel branchLabel2 = new BranchLabel(this);
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = b10;
        branchLabel2.branch();
        goto_w(branchLabel);
        branchLabel2.place();
    }

    public void getBaseTypeValue(int i10) {
        switch (i10) {
            case 2:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangCharacterConstantPoolName, ConstantPool.CHARVALUE_CHARACTER_METHOD_NAME, ConstantPool.CHARVALUE_CHARACTER_METHOD_SIGNATURE);
                return;
            case 3:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangByteConstantPoolName, ConstantPool.BYTEVALUE_BYTE_METHOD_NAME, ConstantPool.BYTEVALUE_BYTE_METHOD_SIGNATURE);
                return;
            case 4:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangShortConstantPoolName, ConstantPool.SHORTVALUE_SHORT_METHOD_NAME, ConstantPool.SHORTVALUE_SHORT_METHOD_SIGNATURE);
                return;
            case 5:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangBooleanConstantPoolName, ConstantPool.BOOLEANVALUE_BOOLEAN_METHOD_NAME, ConstantPool.BOOLEANVALUE_BOOLEAN_METHOD_SIGNATURE);
                return;
            case 6:
            default:
                return;
            case 7:
                invoke(Opcodes.OPC_invokevirtual, 1, 2, ConstantPool.JavaLangLongConstantPoolName, ConstantPool.LONGVALUE_LONG_METHOD_NAME, ConstantPool.LONGVALUE_LONG_METHOD_SIGNATURE);
                return;
            case 8:
                invoke(Opcodes.OPC_invokevirtual, 1, 2, ConstantPool.JavaLangDoubleConstantPoolName, ConstantPool.DOUBLEVALUE_DOUBLE_METHOD_NAME, ConstantPool.DOUBLEVALUE_DOUBLE_METHOD_SIGNATURE);
                return;
            case 9:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangFloatConstantPoolName, ConstantPool.FLOATVALUE_FLOAT_METHOD_NAME, ConstantPool.FLOATVALUE_FLOAT_METHOD_SIGNATURE);
                return;
            case 10:
                invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangIntegerConstantPoolName, ConstantPool.INTVALUE_INTEGER_METHOD_NAME, ConstantPool.INTVALUE_INTEGER_METHOD_SIGNATURE);
                return;
        }
    }

    public final byte[] getContents() {
        byte[] bArr = this.bCodeStream;
        int i10 = this.position;
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        return bArr2;
    }

    public int getPosition() {
        return this.position;
    }

    public void getTYPE(int i10) {
        this.countLabels = 0;
        switch (i10) {
            case 2:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangCharacterConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            case 3:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangByteConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            case 4:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangShortConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            case 5:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangBooleanConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            case 6:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangVoidConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            case 7:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangLongConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            case 8:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangDoubleConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            case 9:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangFloatConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            case 10:
                fieldAccess(Opcodes.OPC_getstatic, 1, ConstantPool.JavaLangIntegerConstantPoolName, ConstantPool.TYPE, ConstantPool.JavaLangClassSignature);
                return;
            default:
                return;
        }
    }

    public void goto_(BranchLabel branchLabel) {
        if (this.wideMode) {
            goto_w(branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        if (!inlineForwardReferencesFromLabelsTargeting(branchLabel, this.position) || this.lastAbruptCompletion != this.position) {
            this.position++;
            byte[] bArr = this.bCodeStream;
            int i10 = this.classFileOffset;
            this.classFileOffset = i10 + 1;
            bArr[i10] = Opcodes.OPC_goto;
            branchLabel.branch();
            this.lastAbruptCompletion = this.position;
            return;
        }
        if (branchLabel.position != -1) {
            int[] forwardReferences = branchLabel.forwardReferences();
            int forwardReferenceCount = branchLabel.forwardReferenceCount();
            for (int i11 = 0; i11 < forwardReferenceCount; i11++) {
                writePosition(branchLabel, forwardReferences[i11]);
            }
            this.countLabels = 0;
        }
    }

    public void goto_w(BranchLabel branchLabel) {
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_goto_w;
        branchLabel.branchWide();
        this.lastAbruptCompletion = this.position;
    }

    public void i2b() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_i2b;
    }

    public void i2c() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_i2c;
    }

    public void i2d() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_i2d;
    }

    public void i2f() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_i2f;
    }

    public void i2l() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_i2l;
    }

    public void i2s() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_i2s;
    }

    public void iadd() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 96;
    }

    public void iaload() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_iaload;
    }

    public void iand() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_iand;
    }

    public void iastore() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_iastore;
    }

    public void iconst_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 3;
    }

    public void iconst_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 4;
    }

    public void iconst_2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 5;
    }

    public void iconst_3() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 6;
    }

    public void iconst_4() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 7;
    }

    public void iconst_5() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 8;
    }

    public void iconst_m1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 2;
    }

    public void idiv() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_idiv;
    }

    public void if_acmpeq(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_if_acmpne, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_if_acmpeq;
        branchLabel.branch();
    }

    public void if_acmpne(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_if_acmpeq, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_if_acmpne;
        branchLabel.branch();
    }

    public void if_icmpeq(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_if_icmpne, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_if_icmpeq;
        branchLabel.branch();
    }

    public void if_icmpge(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_if_icmplt, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_if_icmpge;
        branchLabel.branch();
    }

    public void if_icmpgt(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_if_icmple, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_if_icmpgt;
        branchLabel.branch();
    }

    public void if_icmple(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_if_icmpgt, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_if_icmple;
        branchLabel.branch();
    }

    public void if_icmplt(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_if_icmpge, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_if_icmplt;
        branchLabel.branch();
    }

    public void if_icmpne(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_if_icmpeq, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_if_icmpne;
        branchLabel.branch();
    }

    public void ifeq(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_ifne, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ifeq;
        branchLabel.branch();
    }

    public void ifge(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_iflt, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ifge;
        branchLabel.branch();
    }

    public void ifgt(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_ifle, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ifgt;
        branchLabel.branch();
    }

    public void ifle(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_ifgt, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ifle;
        branchLabel.branch();
    }

    public void iflt(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_ifge, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_iflt;
        branchLabel.branch();
    }

    public void ifne(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_ifeq, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ifne;
        branchLabel.branch();
    }

    public void ifnonnull(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_ifnull, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ifnonnull;
        branchLabel.branch();
    }

    public void ifnull(BranchLabel branchLabel) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.wideMode) {
            generateWideRevertedConditionalBranch(Opcodes.OPC_ifnonnull, branchLabel);
            return;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ifnull;
        branchLabel.branch();
    }

    public final void iinc(int i10, int i11) {
        this.countLabels = 0;
        if (i10 > 255 || i11 < -128 || i11 > 127) {
            if (this.classFileOffset + 3 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i12 = this.classFileOffset;
            int i13 = i12 + 1;
            this.classFileOffset = i13;
            bArr[i12] = Opcodes.OPC_wide;
            this.classFileOffset = i12 + 2;
            bArr[i13] = Opcodes.OPC_iinc;
            writeUnsignedShort(i10);
            writeSignedShort(i11);
            return;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 3;
        byte[] bArr2 = this.bCodeStream;
        int i14 = this.classFileOffset;
        int i15 = i14 + 1;
        this.classFileOffset = i15;
        bArr2[i14] = Opcodes.OPC_iinc;
        int i16 = i14 + 2;
        this.classFileOffset = i16;
        bArr2[i15] = (byte) i10;
        this.classFileOffset = i14 + 3;
        bArr2[i16] = (byte) i11;
    }

    public void iload(int i10) {
        this.countLabels = 0;
        int i11 = this.stackDepth + 1;
        this.stackDepth = i11;
        if (this.maxLocals <= i10) {
            this.maxLocals = i10 + 1;
        }
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i12 = this.classFileOffset;
            int i13 = i12 + 1;
            this.classFileOffset = i13;
            bArr[i12] = 21;
            this.classFileOffset = i12 + 2;
            bArr[i13] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i14 = this.classFileOffset;
        int i15 = i14 + 1;
        this.classFileOffset = i15;
        bArr2[i14] = Opcodes.OPC_wide;
        this.classFileOffset = i14 + 2;
        bArr2[i15] = 21;
        writeUnsignedShort(i10);
    }

    public void iload_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (this.maxLocals <= 0) {
            this.maxLocals = 1;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 26;
    }

    public void iload_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (this.maxLocals <= 1) {
            this.maxLocals = 2;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 27;
    }

    public void iload_2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (this.maxLocals <= 2) {
            this.maxLocals = 3;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 28;
    }

    public void iload_3() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (this.maxLocals <= 3) {
            this.maxLocals = 4;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 29;
    }

    public void imul() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_imul;
    }

    public void ineg() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ineg;
    }

    public void init(ClassFile classFile) {
        this.classFile = classFile;
        this.constantPool = classFile.constantPool;
        this.bCodeStream = classFile.contents;
        int i10 = classFile.contentsOffset;
        this.classFileOffset = i10;
        this.startingClassFileOffset = i10;
        this.pcToSourceMapSize = 0;
        this.lastEntryPC = 0;
        this.visibleLocalsCount = 0;
        this.allLocalsCounter = 0;
        this.exceptionLabelsCounter = 0;
        this.countLabels = 0;
        this.lastAbruptCompletion = -1;
        this.stackMax = 0;
        this.stackDepth = 0;
        this.maxLocals = 0;
        this.position = 0;
    }

    public void initializeMaxLocals(MethodBinding methodBinding) {
        if (methodBinding == null) {
            this.maxLocals = 0;
            return;
        }
        this.maxLocals = !methodBinding.isStatic() ? 1 : 0;
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        if (methodBinding.isConstructor() && referenceBinding.isEnum()) {
            this.maxLocals += 2;
        }
        if (methodBinding.isConstructor() && referenceBinding.isNestedType()) {
            int enclosingInstancesSlotSize = this.maxLocals + referenceBinding.getEnclosingInstancesSlotSize();
            this.maxLocals = enclosingInstancesSlotSize;
            this.maxLocals = enclosingInstancesSlotSize + referenceBinding.getOuterLocalVariablesSlotSize();
        }
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        if (typeBindingArr != null) {
            for (TypeBinding typeBinding : typeBindingArr) {
                int i10 = typeBinding.f102482id;
                if (i10 == 7 || i10 == 8) {
                    this.maxLocals += 2;
                } else {
                    this.maxLocals++;
                }
            }
        }
    }

    public boolean inlineForwardReferencesFromLabelsTargeting(BranchLabel branchLabel, int i10) {
        if (branchLabel.delegate != null) {
            return false;
        }
        int i11 = 0;
        for (int i12 = this.countLabels - 1; i12 >= 0; i12--) {
            BranchLabel branchLabel2 = this.labels[i12];
            if (branchLabel2.position != i10) {
                break;
            }
            if (branchLabel2 == branchLabel || !branchLabel2.isStandardLabel()) {
                i11 |= 4;
            } else if (branchLabel2.delegate == null) {
                branchLabel.becomeDelegateFor(branchLabel2);
                i11 |= 2;
            }
        }
        return (i11 & 6) == 2;
    }

    public void instance_of(TypeBinding typeBinding) {
        instance_of(null, typeBinding);
    }

    public void invoke(byte b10, int i10, int i11, char[] cArr, char[] cArr2, char[] cArr3) {
        invoke18(b10, i10, i11, cArr, b10 == -71, cArr2, cArr3);
    }

    public void invokeAccessibleObjectSetAccessible() {
        invoke(Opcodes.OPC_invokevirtual, 2, 0, ConstantPool.JAVALANGREFLECTACCESSIBLEOBJECT_CONSTANTPOOLNAME, ConstantPool.SETACCESSIBLE_NAME, ConstantPool.SETACCESSIBLE_SIGNATURE);
    }

    public void invokeArrayNewInstance() {
        invoke(Opcodes.OPC_invokestatic, 2, 1, ConstantPool.JAVALANGREFLECTARRAY_CONSTANTPOOLNAME, ConstantPool.NewInstance, ConstantPool.NewInstanceSignature);
    }

    public void invokeAutoCloseableClose(TypeBinding typeBinding) {
        invoke(typeBinding.erasure().isInterface() ? Opcodes.OPC_invokeinterface : Opcodes.OPC_invokevirtual, 1, 0, typeBinding.constantPoolName(), ConstantPool.Close, ConstantPool.CloseSignature);
    }

    public void invokeClassForName() {
        invoke(Opcodes.OPC_invokestatic, 1, 1, ConstantPool.JavaLangClassConstantPoolName, ConstantPool.ForName, ConstantPool.ForNameSignature);
    }

    public void invokeClassGetDeclaredConstructor() {
        invoke(Opcodes.OPC_invokevirtual, 2, 1, ConstantPool.JavaLangClassConstantPoolName, ConstantPool.GETDECLAREDCONSTRUCTOR_NAME, ConstantPool.GETDECLAREDCONSTRUCTOR_SIGNATURE);
    }

    public void invokeClassGetDeclaredField() {
        invoke(Opcodes.OPC_invokevirtual, 2, 1, ConstantPool.JavaLangClassConstantPoolName, ConstantPool.GETDECLAREDFIELD_NAME, ConstantPool.GETDECLAREDFIELD_SIGNATURE);
    }

    public void invokeClassGetDeclaredMethod() {
        invoke(Opcodes.OPC_invokevirtual, 3, 1, ConstantPool.JavaLangClassConstantPoolName, ConstantPool.GETDECLAREDMETHOD_NAME, ConstantPool.GETDECLAREDMETHOD_SIGNATURE);
    }

    public void invokeDynamic(int i10, int i11, int i12, char[] cArr, char[] cArr2) {
        invokeDynamic(i10, i11, i12, cArr, cArr2, false, null, null);
    }

    public void invokeEnumOrdinal(char[] cArr) {
        invoke(Opcodes.OPC_invokevirtual, 1, 1, cArr, ConstantPool.Ordinal, ConstantPool.OrdinalSignature);
    }

    public void invokeIterableIterator(TypeBinding typeBinding) {
        if ((typeBinding.tagBits & 2048) != 0) {
            Util.recordNestedType(this.classFile, typeBinding);
        }
        invoke(typeBinding.isInterface() ? Opcodes.OPC_invokeinterface : Opcodes.OPC_invokevirtual, 1, 1, typeBinding.constantPoolName(), ConstantPool.ITERATOR_NAME, ConstantPool.ITERATOR_SIGNATURE);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    public void invokeJavaLangAssertionErrorConstructor(int i10) {
        char[] cArr;
        char[] cArr2;
        char[] cArr3;
        int i11;
        switch (i10) {
            case 1:
            case 11:
            case 12:
                cArr = ConstantPool.ObjectConstrSignature;
                cArr3 = cArr;
                i11 = 2;
                invoke(Opcodes.OPC_invokespecial, i11, 0, ConstantPool.JavaLangAssertionErrorConstantPoolName, ConstantPool.Init, cArr3);
                return;
            case 2:
                cArr = ConstantPool.CharConstrSignature;
                cArr3 = cArr;
                i11 = 2;
                invoke(Opcodes.OPC_invokespecial, i11, 0, ConstantPool.JavaLangAssertionErrorConstantPoolName, ConstantPool.Init, cArr3);
                return;
            case 3:
            case 4:
            case 10:
                cArr = ConstantPool.IntConstrSignature;
                cArr3 = cArr;
                i11 = 2;
                invoke(Opcodes.OPC_invokespecial, i11, 0, ConstantPool.JavaLangAssertionErrorConstantPoolName, ConstantPool.Init, cArr3);
                return;
            case 5:
                cArr = ConstantPool.BooleanConstrSignature;
                cArr3 = cArr;
                i11 = 2;
                invoke(Opcodes.OPC_invokespecial, i11, 0, ConstantPool.JavaLangAssertionErrorConstantPoolName, ConstantPool.Init, cArr3);
                return;
            case 6:
            default:
                return;
            case 7:
                cArr2 = ConstantPool.LongConstrSignature;
                cArr3 = cArr2;
                i11 = 3;
                invoke(Opcodes.OPC_invokespecial, i11, 0, ConstantPool.JavaLangAssertionErrorConstantPoolName, ConstantPool.Init, cArr3);
                return;
            case 8:
                cArr2 = ConstantPool.DoubleConstrSignature;
                cArr3 = cArr2;
                i11 = 3;
                invoke(Opcodes.OPC_invokespecial, i11, 0, ConstantPool.JavaLangAssertionErrorConstantPoolName, ConstantPool.Init, cArr3);
                return;
            case 9:
                cArr = ConstantPool.FloatConstrSignature;
                cArr3 = cArr;
                i11 = 2;
                invoke(Opcodes.OPC_invokespecial, i11, 0, ConstantPool.JavaLangAssertionErrorConstantPoolName, ConstantPool.Init, cArr3);
                return;
        }
    }

    public void invokeJavaLangAssertionErrorDefaultConstructor() {
        invoke(Opcodes.OPC_invokespecial, 1, 0, ConstantPool.JavaLangAssertionErrorConstantPoolName, ConstantPool.Init, ConstantPool.DefaultConstructorSignature);
    }

    public void invokeJavaLangClassDesiredAssertionStatus() {
        invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangClassConstantPoolName, ConstantPool.DesiredAssertionStatus, ConstantPool.DesiredAssertionStatusSignature);
    }

    public void invokeJavaLangEnumValues(TypeBinding typeBinding, ArrayBinding arrayBinding) {
        invoke(Opcodes.OPC_invokestatic, 0, 1, typeBinding.constantPoolName(), TypeConstants.VALUES, CharOperation.concat("()".toCharArray(), arrayBinding.constantPoolName()));
    }

    public void invokeJavaLangEnumvalueOf(ReferenceBinding referenceBinding) {
        invoke(Opcodes.OPC_invokestatic, 2, 1, ConstantPool.JavaLangEnumConstantPoolName, ConstantPool.ValueOf, ConstantPool.ValueOfStringClassSignature);
    }

    public void invokeJavaLangErrorConstructor() {
        invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangErrorConstantPoolName, ConstantPool.Init, ConstantPool.StringConstructorSignature);
    }

    public void invokeJavaLangIncompatibleClassChangeErrorDefaultConstructor() {
        invoke(Opcodes.OPC_invokespecial, 1, 0, ConstantPool.JavaLangIncompatibleClassChangeErrorConstantPoolName, ConstantPool.Init, ConstantPool.DefaultConstructorSignature);
    }

    public void invokeJavaLangReflectConstructorNewInstance() {
        invoke(Opcodes.OPC_invokevirtual, 2, 1, ConstantPool.JavaLangReflectConstructorConstantPoolName, ConstantPool.NewInstance, ConstantPool.JavaLangReflectConstructorNewInstanceSignature);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    public void invokeJavaLangReflectFieldGetter(int i10) {
        char[] cArr;
        char[] cArr2;
        char[] cArr3;
        char[] cArr4;
        char[] cArr5;
        int i11;
        char[] cArr6;
        switch (i10) {
            case 2:
                cArr = ConstantPool.GET_CHAR_METHOD_NAME;
                cArr2 = ConstantPool.GET_CHAR_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 1;
                break;
            case 3:
                cArr = ConstantPool.GET_BYTE_METHOD_NAME;
                cArr2 = ConstantPool.GET_BYTE_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 1;
                break;
            case 4:
                cArr = ConstantPool.GET_SHORT_METHOD_NAME;
                cArr2 = ConstantPool.GET_SHORT_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 1;
                break;
            case 5:
                cArr = ConstantPool.GET_BOOLEAN_METHOD_NAME;
                cArr2 = ConstantPool.GET_BOOLEAN_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 1;
                break;
            case 6:
            default:
                cArr = ConstantPool.GET_OBJECT_METHOD_NAME;
                cArr2 = ConstantPool.GET_OBJECT_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 1;
                break;
            case 7:
                cArr3 = ConstantPool.GET_LONG_METHOD_NAME;
                cArr4 = ConstantPool.GET_LONG_METHOD_SIGNATURE;
                cArr5 = cArr3;
                i11 = 2;
                cArr6 = cArr4;
                break;
            case 8:
                cArr3 = ConstantPool.GET_DOUBLE_METHOD_NAME;
                cArr4 = ConstantPool.GET_DOUBLE_METHOD_SIGNATURE;
                cArr5 = cArr3;
                i11 = 2;
                cArr6 = cArr4;
                break;
            case 9:
                cArr = ConstantPool.GET_FLOAT_METHOD_NAME;
                cArr2 = ConstantPool.GET_FLOAT_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 1;
                break;
            case 10:
                cArr = ConstantPool.GET_INT_METHOD_NAME;
                cArr2 = ConstantPool.GET_INT_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 1;
                break;
        }
        invoke(Opcodes.OPC_invokevirtual, 2, i11, ConstantPool.JAVALANGREFLECTFIELD_CONSTANTPOOLNAME, cArr5, cArr6);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    public void invokeJavaLangReflectFieldSetter(int i10) {
        char[] cArr;
        char[] cArr2;
        char[] cArr3;
        char[] cArr4;
        char[] cArr5;
        int i11;
        char[] cArr6;
        switch (i10) {
            case 2:
                cArr = ConstantPool.SET_CHAR_METHOD_NAME;
                cArr2 = ConstantPool.SET_CHAR_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 3;
                break;
            case 3:
                cArr = ConstantPool.SET_BYTE_METHOD_NAME;
                cArr2 = ConstantPool.SET_BYTE_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 3;
                break;
            case 4:
                cArr = ConstantPool.SET_SHORT_METHOD_NAME;
                cArr2 = ConstantPool.SET_SHORT_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 3;
                break;
            case 5:
                cArr = ConstantPool.SET_BOOLEAN_METHOD_NAME;
                cArr2 = ConstantPool.SET_BOOLEAN_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 3;
                break;
            case 6:
            default:
                cArr = ConstantPool.SET_OBJECT_METHOD_NAME;
                cArr2 = ConstantPool.SET_OBJECT_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 3;
                break;
            case 7:
                cArr3 = ConstantPool.SET_LONG_METHOD_NAME;
                cArr4 = ConstantPool.SET_LONG_METHOD_SIGNATURE;
                cArr5 = cArr3;
                i11 = 4;
                cArr6 = cArr4;
                break;
            case 8:
                cArr3 = ConstantPool.SET_DOUBLE_METHOD_NAME;
                cArr4 = ConstantPool.SET_DOUBLE_METHOD_SIGNATURE;
                cArr5 = cArr3;
                i11 = 4;
                cArr6 = cArr4;
                break;
            case 9:
                cArr = ConstantPool.SET_FLOAT_METHOD_NAME;
                cArr2 = ConstantPool.SET_FLOAT_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 3;
                break;
            case 10:
                cArr = ConstantPool.SET_INT_METHOD_NAME;
                cArr2 = ConstantPool.SET_INT_METHOD_SIGNATURE;
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 3;
                break;
        }
        invoke(Opcodes.OPC_invokevirtual, i11, 0, ConstantPool.JAVALANGREFLECTFIELD_CONSTANTPOOLNAME, cArr5, cArr6);
    }

    public void invokeJavaLangReflectMethodInvoke() {
        invoke(Opcodes.OPC_invokevirtual, 3, 1, ConstantPool.JAVALANGREFLECTMETHOD_CONSTANTPOOLNAME, ConstantPool.INVOKE_METHOD_METHOD_NAME, ConstantPool.INVOKE_METHOD_METHOD_SIGNATURE);
    }

    public void invokeJavaUtilIteratorHasNext() {
        invoke(Opcodes.OPC_invokeinterface, 1, 1, ConstantPool.JavaUtilIteratorConstantPoolName, ConstantPool.HasNext, ConstantPool.HasNextSignature);
    }

    public void invokeJavaUtilIteratorNext() {
        invoke(Opcodes.OPC_invokeinterface, 1, 1, ConstantPool.JavaUtilIteratorConstantPoolName, ConstantPool.Next, ConstantPool.NextSignature);
    }

    public void invokeNoClassDefFoundErrorStringConstructor() {
        invoke(Opcodes.OPC_invokespecial, 2, 0, ConstantPool.JavaLangNoClassDefFoundErrorConstantPoolName, ConstantPool.Init, ConstantPool.StringConstructorSignature);
    }

    public void invokeObjectEquals() {
        invoke(Opcodes.OPC_invokevirtual, 2, 1, ConstantPool.JavaLangObjectConstantPoolName, ConstantPool.Equals, ConstantPool.EqualsSignature);
    }

    public void invokeObjectGetClass() {
        invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangObjectConstantPoolName, ConstantPool.GetClass, ConstantPool.GetClassSignature);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    public void invokeStringConcatenationAppendForType(int i10) {
        char[] cArr;
        char[] cArr2;
        char[] cArr3;
        char[] cArr4;
        char[] cArr5;
        int i11;
        char[] cArr6;
        char[] cArr7 = ConstantPool.Append;
        switch (i10) {
            case 2:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    cArr = ConstantPool.JavaLangStringBuilderConstantPoolName;
                    cArr2 = ConstantPool.StringBuilderAppendCharSignature;
                } else {
                    cArr = ConstantPool.JavaLangStringBufferConstantPoolName;
                    cArr2 = ConstantPool.StringBufferAppendCharSignature;
                }
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 2;
                break;
            case 3:
            case 4:
            case 10:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    cArr = ConstantPool.JavaLangStringBuilderConstantPoolName;
                    cArr2 = ConstantPool.StringBuilderAppendIntSignature;
                } else {
                    cArr = ConstantPool.JavaLangStringBufferConstantPoolName;
                    cArr2 = ConstantPool.StringBufferAppendIntSignature;
                }
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 2;
                break;
            case 5:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    cArr = ConstantPool.JavaLangStringBuilderConstantPoolName;
                    cArr2 = ConstantPool.StringBuilderAppendBooleanSignature;
                } else {
                    cArr = ConstantPool.JavaLangStringBufferConstantPoolName;
                    cArr2 = ConstantPool.StringBufferAppendBooleanSignature;
                }
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 2;
                break;
            case 6:
            default:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    cArr = ConstantPool.JavaLangStringBuilderConstantPoolName;
                    cArr2 = ConstantPool.StringBuilderAppendObjectSignature;
                } else {
                    cArr = ConstantPool.JavaLangStringBufferConstantPoolName;
                    cArr2 = ConstantPool.StringBufferAppendObjectSignature;
                }
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 2;
                break;
            case 7:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    cArr3 = ConstantPool.JavaLangStringBuilderConstantPoolName;
                    cArr4 = ConstantPool.StringBuilderAppendLongSignature;
                } else {
                    cArr3 = ConstantPool.JavaLangStringBufferConstantPoolName;
                    cArr4 = ConstantPool.StringBufferAppendLongSignature;
                }
                cArr5 = cArr3;
                i11 = 3;
                cArr6 = cArr4;
                break;
            case 8:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    cArr3 = ConstantPool.JavaLangStringBuilderConstantPoolName;
                    cArr4 = ConstantPool.StringBuilderAppendDoubleSignature;
                } else {
                    cArr3 = ConstantPool.JavaLangStringBufferConstantPoolName;
                    cArr4 = ConstantPool.StringBufferAppendDoubleSignature;
                }
                cArr5 = cArr3;
                i11 = 3;
                cArr6 = cArr4;
                break;
            case 9:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    cArr = ConstantPool.JavaLangStringBuilderConstantPoolName;
                    cArr2 = ConstantPool.StringBuilderAppendFloatSignature;
                } else {
                    cArr = ConstantPool.JavaLangStringBufferConstantPoolName;
                    cArr2 = ConstantPool.StringBufferAppendFloatSignature;
                }
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 2;
                break;
            case 11:
                if (this.targetLevel >= ClassFileConstants.JDK1_5) {
                    cArr = ConstantPool.JavaLangStringBuilderConstantPoolName;
                    cArr2 = ConstantPool.StringBuilderAppendStringSignature;
                } else {
                    cArr = ConstantPool.JavaLangStringBufferConstantPoolName;
                    cArr2 = ConstantPool.StringBufferAppendStringSignature;
                }
                cArr5 = cArr;
                cArr6 = cArr2;
                i11 = 2;
                break;
        }
        invoke(Opcodes.OPC_invokevirtual, i11, 1, cArr5, cArr7, cArr6);
    }

    public void invokeStringConcatenationDefaultConstructor() {
        invoke(Opcodes.OPC_invokespecial, 1, 0, this.targetLevel < ClassFileConstants.JDK1_5 ? ConstantPool.JavaLangStringBufferConstantPoolName : ConstantPool.JavaLangStringBuilderConstantPoolName, ConstantPool.Init, ConstantPool.DefaultConstructorSignature);
    }

    public void invokeStringConcatenationStringConstructor() {
        invoke(Opcodes.OPC_invokespecial, 2, 0, this.targetLevel < ClassFileConstants.JDK1_5 ? ConstantPool.JavaLangStringBufferConstantPoolName : ConstantPool.JavaLangStringBuilderConstantPoolName, ConstantPool.Init, ConstantPool.StringConstructorSignature);
    }

    public void invokeStringConcatenationToString() {
        invoke(Opcodes.OPC_invokevirtual, 1, 1, this.targetLevel < ClassFileConstants.JDK1_5 ? ConstantPool.JavaLangStringBufferConstantPoolName : ConstantPool.JavaLangStringBuilderConstantPoolName, ConstantPool.ToString, ConstantPool.ToStringSignature);
    }

    public void invokeStringEquals() {
        invoke(Opcodes.OPC_invokevirtual, 2, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.Equals, ConstantPool.EqualsSignature);
    }

    public void invokeStringHashCode() {
        invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.HashCode, ConstantPool.HashCodeSignature);
    }

    public void invokeStringIntern() {
        invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.Intern, ConstantPool.InternSignature);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    public void invokeStringValueOf(int i10) {
        char[] cArr;
        char[] cArr2;
        char[] cArr3;
        int i11;
        switch (i10) {
            case 0:
            case 1:
            case 11:
            case 12:
                cArr = ConstantPool.ValueOfObjectSignature;
                cArr3 = cArr;
                i11 = 1;
                invoke(Opcodes.OPC_invokestatic, i11, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.ValueOf, cArr3);
                return;
            case 2:
                cArr = ConstantPool.ValueOfCharSignature;
                cArr3 = cArr;
                i11 = 1;
                invoke(Opcodes.OPC_invokestatic, i11, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.ValueOf, cArr3);
                return;
            case 3:
            case 4:
            case 10:
                cArr = ConstantPool.ValueOfIntSignature;
                cArr3 = cArr;
                i11 = 1;
                invoke(Opcodes.OPC_invokestatic, i11, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.ValueOf, cArr3);
                return;
            case 5:
                cArr = ConstantPool.ValueOfBooleanSignature;
                cArr3 = cArr;
                i11 = 1;
                invoke(Opcodes.OPC_invokestatic, i11, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.ValueOf, cArr3);
                return;
            case 6:
            default:
                return;
            case 7:
                cArr2 = ConstantPool.ValueOfLongSignature;
                cArr3 = cArr2;
                i11 = 2;
                invoke(Opcodes.OPC_invokestatic, i11, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.ValueOf, cArr3);
                return;
            case 8:
                cArr2 = ConstantPool.ValueOfDoubleSignature;
                cArr3 = cArr2;
                i11 = 2;
                invoke(Opcodes.OPC_invokestatic, i11, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.ValueOf, cArr3);
                return;
            case 9:
                cArr = ConstantPool.ValueOfFloatSignature;
                cArr3 = cArr;
                i11 = 1;
                invoke(Opcodes.OPC_invokestatic, i11, 1, ConstantPool.JavaLangStringConstantPoolName, ConstantPool.ValueOf, cArr3);
                return;
        }
    }

    public void invokeSystemArraycopy() {
        invoke(Opcodes.OPC_invokestatic, 5, 0, ConstantPool.JavaLangSystemConstantPoolName, ConstantPool.ArrayCopy, ConstantPool.ArrayCopySignature);
    }

    public void invokeThrowableAddSuppressed() {
        invoke(Opcodes.OPC_invokevirtual, 2, 0, ConstantPool.JavaLangThrowableConstantPoolName, ConstantPool.AddSuppressed, ConstantPool.AddSuppressedSignature);
    }

    public void invokeThrowableGetMessage() {
        invoke(Opcodes.OPC_invokevirtual, 1, 1, ConstantPool.JavaLangThrowableConstantPoolName, ConstantPool.GetMessage, ConstantPool.GetMessageSignature);
    }

    public void ior() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Byte.MIN_VALUE;
    }

    public void irem() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 112;
    }

    public void ireturn() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        int i10 = this.position + 1;
        this.position = i10;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_ireturn;
        this.lastAbruptCompletion = i10;
    }

    public boolean isDefinitelyAssigned(Scope scope, int i10, LocalVariableBinding localVariableBinding) {
        int i11;
        if ((localVariableBinding.tagBits & 1024) != 0) {
            return true;
        }
        if (i10 == -1) {
            return false;
        }
        int i12 = localVariableBinding.f102483id + this.maxFieldCount;
        MethodScope methodScope = scope.methodScope();
        if (i12 < 64) {
            return ((1 << i12) & methodScope.definiteInits[i10]) != 0;
        }
        long[] jArr = methodScope.extraDefiniteInits[i10];
        if (jArr != null && (i11 = (i12 / 64) - 1) < jArr.length) {
            return ((1 << (i12 % 64)) & jArr[i11]) != 0;
        }
        return false;
    }

    public void ishl() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 120;
    }

    public void ishr() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 122;
    }

    public void istore(int i10) {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= i10) {
            this.maxLocals = i10 + 1;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i11 = this.classFileOffset;
            int i12 = i11 + 1;
            this.classFileOffset = i12;
            bArr[i11] = 54;
            this.classFileOffset = i11 + 2;
            bArr[i12] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i13 = this.classFileOffset;
        int i14 = i13 + 1;
        this.classFileOffset = i14;
        bArr2[i13] = Opcodes.OPC_wide;
        this.classFileOffset = i13 + 2;
        bArr2[i14] = 54;
        writeUnsignedShort(i10);
    }

    public void istore_0() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals == 0) {
            this.maxLocals = 1;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_istore_0;
    }

    public void istore_1() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 1) {
            this.maxLocals = 2;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 60;
    }

    public void istore_2() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 2) {
            this.maxLocals = 3;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 61;
    }

    public void istore_3() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.maxLocals <= 3) {
            this.maxLocals = 4;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 62;
    }

    public void isub() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 100;
    }

    public void iushr() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_iushr;
    }

    public void ixor() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ixor;
    }

    public final void jsr(BranchLabel branchLabel) {
        if (this.wideMode) {
            jsr_w(branchLabel);
            return;
        }
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_jsr;
        branchLabel.branch();
    }

    public final void jsr_w(BranchLabel branchLabel) {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_jsr_w;
        branchLabel.branchWide();
    }

    public void l2d() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_l2d;
    }

    public void l2f() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_l2f;
    }

    public void l2i() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_l2i;
    }

    public void ladd() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ladd;
    }

    public void laload() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_laload;
    }

    public void land() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Byte.MAX_VALUE;
    }

    public void lastore() {
        this.countLabels = 0;
        this.stackDepth -= 4;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 80;
    }

    public void lcmp() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_lcmp;
    }

    public void lconst_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 9;
    }

    public void lconst_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 10;
    }

    public void ldc(float f10) {
        this.countLabels = 0;
        int literalIndex = this.constantPool.literalIndex(f10);
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (literalIndex > 255) {
            if (this.classFileOffset + 2 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position++;
            byte[] bArr = this.bCodeStream;
            int i11 = this.classFileOffset;
            this.classFileOffset = i11 + 1;
            bArr[i11] = 19;
            writeUnsignedShort(literalIndex);
            return;
        }
        if (this.classFileOffset + 1 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i12 = this.classFileOffset;
        int i13 = i12 + 1;
        this.classFileOffset = i13;
        bArr2[i12] = 18;
        this.classFileOffset = i12 + 2;
        bArr2[i13] = (byte) literalIndex;
    }

    public void ldc2_w(double d10) {
        this.countLabels = 0;
        int literalIndex = this.constantPool.literalIndex(d10);
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 20;
        writeUnsignedShort(literalIndex);
    }

    public void ldcForIndex(int i10) {
        int i11 = this.stackDepth + 1;
        this.stackDepth = i11;
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (i10 > 255) {
            if (this.classFileOffset + 2 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position++;
            byte[] bArr = this.bCodeStream;
            int i12 = this.classFileOffset;
            this.classFileOffset = i12 + 1;
            bArr[i12] = 19;
            writeUnsignedShort(i10);
            return;
        }
        if (this.classFileOffset + 1 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i13 = this.classFileOffset;
        int i14 = i13 + 1;
        this.classFileOffset = i14;
        bArr2[i13] = 18;
        this.classFileOffset = i13 + 2;
        bArr2[i14] = (byte) i10;
    }

    public void ldiv() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_ldiv;
    }

    public void lload(int i10) {
        this.countLabels = 0;
        int i11 = this.stackDepth + 2;
        this.stackDepth = i11;
        if (this.maxLocals <= i10 + 1) {
            this.maxLocals = i10 + 2;
        }
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i12 = this.classFileOffset;
            int i13 = i12 + 1;
            this.classFileOffset = i13;
            bArr[i12] = 22;
            this.classFileOffset = i12 + 2;
            bArr[i13] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i14 = this.classFileOffset;
        int i15 = i14 + 1;
        this.classFileOffset = i15;
        bArr2[i14] = Opcodes.OPC_wide;
        this.classFileOffset = i14 + 2;
        bArr2[i15] = 22;
        writeUnsignedShort(i10);
    }

    public void lload_0() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (this.maxLocals < 2) {
            this.maxLocals = 2;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 30;
    }

    public void lload_1() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (this.maxLocals < 3) {
            this.maxLocals = 3;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 31;
    }

    public void lload_2() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (this.maxLocals < 4) {
            this.maxLocals = 4;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 32;
    }

    public void lload_3() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (this.maxLocals < 5) {
            this.maxLocals = 5;
        }
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 33;
    }

    public void lmul() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 105;
    }

    public void lneg() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_lneg;
    }

    public final void load(LocalVariableBinding localVariableBinding) {
        load(localVariableBinding.type, localVariableBinding.resolvedPosition);
    }

    public void loadInt(int i10) {
        if (i10 >= 6) {
            if (i10 < 128) {
                bipush((byte) i10);
                return;
            } else {
                ldc(i10);
                return;
            }
        }
        if (i10 == 0) {
            iconst_0();
            return;
        }
        if (i10 == 1) {
            iconst_1();
            return;
        }
        if (i10 == 2) {
            iconst_2();
            return;
        }
        if (i10 == 3) {
            iconst_3();
        } else if (i10 == 4) {
            iconst_4();
        } else if (i10 == 5) {
            iconst_5();
        }
    }

    public void lookupswitch(CaseLabel caseLabel, int[] iArr, int[] iArr2, CaseLabel[] caseLabelArr) {
        this.countLabels = 0;
        this.stackDepth--;
        int length = iArr.length;
        int i10 = this.position;
        caseLabel.placeInstruction();
        for (int i11 = 0; i11 < length; i11++) {
            caseLabelArr[i11].placeInstruction();
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i12 = this.classFileOffset;
        this.classFileOffset = i12 + 1;
        bArr[i12] = Opcodes.OPC_lookupswitch;
        for (int i13 = 3 - (i10 & 3); i13 > 0; i13--) {
            if (this.classFileOffset >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position++;
            byte[] bArr2 = this.bCodeStream;
            int i14 = this.classFileOffset;
            this.classFileOffset = i14 + 1;
            bArr2[i14] = 0;
        }
        caseLabel.branch();
        writeSignedWord(length);
        for (int i15 = 0; i15 < length; i15++) {
            writeSignedWord(iArr[iArr2[i15]]);
            caseLabelArr[iArr2[i15]].branch();
        }
    }

    public void lor() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_lor;
    }

    public void lrem() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 113;
    }

    public void lreturn() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        int i10 = this.position + 1;
        this.position = i10;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_lreturn;
        this.lastAbruptCompletion = i10;
    }

    public void lshl() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 121;
    }

    public void lshr() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 123;
    }

    public void lstore(int i10) {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals <= i10 + 1) {
            this.maxLocals = i10 + 2;
        }
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i11 = this.classFileOffset;
            int i12 = i11 + 1;
            this.classFileOffset = i12;
            bArr[i11] = Opcodes.OPC_lstore;
            this.classFileOffset = i11 + 2;
            bArr[i12] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i13 = this.classFileOffset;
        int i14 = i13 + 1;
        this.classFileOffset = i14;
        bArr2[i13] = Opcodes.OPC_wide;
        this.classFileOffset = i13 + 2;
        bArr2[i14] = Opcodes.OPC_lstore;
        writeUnsignedShort(i10);
    }

    public void lstore_0() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals < 2) {
            this.maxLocals = 2;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_lstore_0;
    }

    public void lstore_1() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals < 3) {
            this.maxLocals = 3;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 64;
    }

    public void lstore_2() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals < 4) {
            this.maxLocals = 4;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_lstore_2;
    }

    public void lstore_3() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.maxLocals < 5) {
            this.maxLocals = 5;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_lstore_3;
    }

    public void lsub() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 101;
    }

    public void lushr() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_lushr;
    }

    public void lxor() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_lxor;
    }

    public void monitorenter() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_monitorenter;
    }

    public void monitorexit() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_monitorexit;
    }

    public void multianewarray(TypeReference typeReference, TypeBinding typeBinding, int i10, ArrayAllocationExpression arrayAllocationExpression) {
        this.countLabels = 0;
        this.stackDepth += 1 - i10;
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_multianewarray;
        writeUnsignedShort(this.constantPool.literalIndexForType(typeBinding));
        byte[] bArr2 = this.bCodeStream;
        int i12 = this.classFileOffset;
        this.classFileOffset = i12 + 1;
        bArr2[i12] = (byte) i10;
    }

    public void newArray(ArrayBinding arrayBinding) {
        newArray(null, null, arrayBinding);
    }

    public void newJavaLangAssertionError() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_new;
        writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangAssertionErrorConstantPoolName));
    }

    public void newJavaLangError() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_new;
        writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangErrorConstantPoolName));
    }

    public void newJavaLangIncompatibleClassChangeError() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_new;
        writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangIncompatibleClassChangeErrorConstantPoolName));
    }

    public void newNoClassDefFoundError() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_new;
        writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangNoClassDefFoundErrorConstantPoolName));
    }

    public void newStringContatenation() {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_new;
        if (this.targetLevel >= ClassFileConstants.JDK1_5) {
            writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangStringBuilderConstantPoolName));
        } else {
            writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangStringBufferConstantPoolName));
        }
    }

    public void newWrapperFor(int i10) {
        this.countLabels = 0;
        int i11 = this.stackDepth + 1;
        this.stackDepth = i11;
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i12 = this.classFileOffset;
        this.classFileOffset = i12 + 1;
        bArr[i12] = Opcodes.OPC_new;
        switch (i10) {
            case 2:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangCharacterConstantPoolName));
                return;
            case 3:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangByteConstantPoolName));
                return;
            case 4:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangShortConstantPoolName));
                return;
            case 5:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangBooleanConstantPoolName));
                return;
            case 6:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangVoidConstantPoolName));
                return;
            case 7:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangLongConstantPoolName));
                return;
            case 8:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangDoubleConstantPoolName));
                return;
            case 9:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangFloatConstantPoolName));
                return;
            case 10:
                writeUnsignedShort(this.constantPool.literalIndexForType(ConstantPool.JavaLangIntegerConstantPoolName));
                return;
            default:
                return;
        }
    }

    public void new_(TypeBinding typeBinding) {
        new_(null, typeBinding);
    }

    public void newarray(int i10) {
        this.countLabels = 0;
        if (this.classFileOffset + 1 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        int i12 = i11 + 1;
        this.classFileOffset = i12;
        bArr[i11] = -68;
        this.classFileOffset = i11 + 2;
        bArr[i12] = (byte) i10;
    }

    public void nop() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = 0;
    }

    public void optimizeBranch(int i10, BranchLabel branchLabel) {
        for (int i11 = 0; i11 < this.countLabels; i11++) {
            BranchLabel branchLabel2 = this.labels[i11];
            if (i10 == branchLabel2.position) {
                int i12 = this.position;
                branchLabel2.position = i12;
                if (branchLabel2 instanceof CaseLabel) {
                    int i13 = i12 - ((CaseLabel) branchLabel2).instructionPosition;
                    int[] forwardReferences = branchLabel2.forwardReferences();
                    int forwardReferenceCount = branchLabel2.forwardReferenceCount();
                    for (int i14 = 0; i14 < forwardReferenceCount; i14++) {
                        writeSignedWord(forwardReferences[i14], i13);
                    }
                } else {
                    int[] forwardReferences2 = branchLabel2.forwardReferences();
                    int forwardReferenceCount2 = branchLabel2.forwardReferenceCount();
                    for (int i15 = 0; i15 < forwardReferenceCount2; i15++) {
                        writePosition(branchLabel, forwardReferences2[i15]);
                    }
                }
            }
        }
    }

    public void pop() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_pop;
    }

    public void pop2() {
        this.countLabels = 0;
        this.stackDepth -= 2;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_pop2;
    }

    public void pushExceptionOnStack(TypeBinding typeBinding) {
        this.stackDepth = 1;
        if (1 > this.stackMax) {
            this.stackMax = 1;
        }
    }

    public void pushOnStack(TypeBinding typeBinding) {
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
    }

    public void record(LocalVariableBinding localVariableBinding) {
        if ((this.generateAttributes & 28) == 0) {
            return;
        }
        int i10 = this.allLocalsCounter;
        LocalVariableBinding[] localVariableBindingArr = this.locals;
        if (i10 == localVariableBindingArr.length) {
            LocalVariableBinding[] localVariableBindingArr2 = new LocalVariableBinding[i10 + 10];
            this.locals = localVariableBindingArr2;
            System.arraycopy(localVariableBindingArr, 0, localVariableBindingArr2, 0, i10);
        }
        LocalVariableBinding[] localVariableBindingArr3 = this.locals;
        int i11 = this.allLocalsCounter;
        this.allLocalsCounter = i11 + 1;
        localVariableBindingArr3[i11] = localVariableBinding;
        localVariableBinding.initializationPCs = new int[4];
        localVariableBinding.initializationCount = 0;
    }

    public void recordExpressionType(TypeBinding typeBinding) {
    }

    public void recordPositionsFrom(int i10, int i11) {
        recordPositionsFrom(i10, i11, false);
    }

    public void registerExceptionHandler(ExceptionLabel exceptionLabel) {
        int i10 = this.exceptionLabelsCounter;
        ExceptionLabel[] exceptionLabelArr = this.exceptionLabels;
        int length = exceptionLabelArr.length;
        if (i10 == length) {
            ExceptionLabel[] exceptionLabelArr2 = new ExceptionLabel[length + 5];
            this.exceptionLabels = exceptionLabelArr2;
            System.arraycopy(exceptionLabelArr, 0, exceptionLabelArr2, 0, length);
        }
        ExceptionLabel[] exceptionLabelArr3 = this.exceptionLabels;
        int i11 = this.exceptionLabelsCounter;
        this.exceptionLabelsCounter = i11 + 1;
        exceptionLabelArr3[i11] = exceptionLabel;
    }

    public void removeNotDefinitelyAssignedVariables(Scope scope, int i10) {
        if ((this.generateAttributes & 28) == 0) {
            return;
        }
        for (int i11 = 0; i11 < this.visibleLocalsCount; i11++) {
            LocalVariableBinding localVariableBinding = this.visibleLocals[i11];
            if (localVariableBinding != null && !isDefinitelyAssigned(scope, i10, localVariableBinding) && localVariableBinding.initializationCount > 0) {
                localVariableBinding.recordInitializationEndPC(this.position);
            }
        }
    }

    public void removeUnusedPcToSourceMapEntries() {
        if (this.pcToSourceMapSize == 0) {
            return;
        }
        while (true) {
            int i10 = this.pcToSourceMapSize;
            if (i10 < 2 || this.pcToSourceMap[i10 - 2] <= this.position) {
                return;
            } else {
                this.pcToSourceMapSize = i10 - 2;
            }
        }
    }

    public void removeVariable(LocalVariableBinding localVariableBinding) {
        if (localVariableBinding == null) {
            return;
        }
        if (localVariableBinding.initializationCount > 0) {
            localVariableBinding.recordInitializationEndPC(this.position);
        }
        for (int i10 = this.visibleLocalsCount - 1; i10 >= 0; i10--) {
            LocalVariableBinding[] localVariableBindingArr = this.visibleLocals;
            if (localVariableBindingArr[i10] == localVariableBinding) {
                localVariableBindingArr[i10] = null;
                return;
            }
        }
    }

    public void reset(AbstractMethodDeclaration abstractMethodDeclaration, ClassFile classFile) {
        init(classFile);
        this.methodDeclaration = abstractMethodDeclaration;
        this.lambdaExpression = null;
        int[] iArr = this.lineSeparatorPositions;
        if (iArr != null) {
            int length = iArr.length;
            int i10 = length - 1;
            if (!abstractMethodDeclaration.isClinit() && !abstractMethodDeclaration.isConstructor()) {
                int lineNumber = Util.getLineNumber(abstractMethodDeclaration.bodyStart, iArr, 0, i10);
                this.lineNumberStart = lineNumber;
                if (lineNumber > i10) {
                    this.lineNumberEnd = lineNumber;
                } else {
                    int lineNumber2 = Util.getLineNumber(abstractMethodDeclaration.bodyEnd, iArr, lineNumber - 1, i10);
                    if (lineNumber2 < i10) {
                        length = lineNumber2;
                    }
                    this.lineNumberEnd = length != 0 ? length : 1;
                }
            } else {
                this.lineNumberStart = 1;
                if (length == 0) {
                    length = 1;
                }
                this.lineNumberEnd = length;
            }
        }
        this.preserveUnusedLocals = abstractMethodDeclaration.scope.compilerOptions().preserveAllLocalVariables;
        initializeMaxLocals(abstractMethodDeclaration.binding);
    }

    public void resetForCodeGenUnusedLocals() {
    }

    public void resetForProblemClinit(ClassFile classFile) {
        init(classFile);
        initializeMaxLocals(null);
    }

    public void resetInWideMode() {
        this.wideMode = true;
    }

    public final void ret(int i10) {
        this.countLabels = 0;
        if (i10 <= 255) {
            if (this.classFileOffset + 1 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position += 2;
            byte[] bArr = this.bCodeStream;
            int i11 = this.classFileOffset;
            int i12 = i11 + 1;
            this.classFileOffset = i12;
            bArr[i11] = Opcodes.OPC_ret;
            this.classFileOffset = i11 + 2;
            bArr[i12] = (byte) i10;
            return;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i13 = this.classFileOffset;
        int i14 = i13 + 1;
        this.classFileOffset = i14;
        bArr2[i13] = Opcodes.OPC_wide;
        this.classFileOffset = i13 + 2;
        bArr2[i14] = Opcodes.OPC_ret;
        writeUnsignedShort(i10);
    }

    public void return_() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        int i10 = this.position + 1;
        this.position = i10;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_return;
        this.lastAbruptCompletion = i10;
    }

    public void saload() {
        this.countLabels = 0;
        this.stackDepth--;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_saload;
    }

    public void sastore() {
        this.countLabels = 0;
        this.stackDepth -= 3;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_sastore;
    }

    public void sendOperator(int i10, int i11) {
        switch (i11) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
                if (i10 == 2) {
                    iand();
                    return;
                }
                if (i10 == 3) {
                    ior();
                    return;
                }
                if (i10 == 19) {
                    iushr();
                    return;
                }
                switch (i10) {
                    case 8:
                        ixor();
                        return;
                    case 9:
                        idiv();
                        return;
                    case 10:
                        ishl();
                        return;
                    default:
                        switch (i10) {
                            case 13:
                                isub();
                                return;
                            case 14:
                                iadd();
                                return;
                            case 15:
                                imul();
                                return;
                            case 16:
                                irem();
                                return;
                            case 17:
                                ishr();
                                return;
                            default:
                                return;
                        }
                }
            case 6:
            default:
                return;
            case 7:
                if (i10 == 2) {
                    land();
                    return;
                }
                if (i10 == 3) {
                    lor();
                    return;
                }
                if (i10 == 19) {
                    lushr();
                    return;
                }
                switch (i10) {
                    case 8:
                        lxor();
                        return;
                    case 9:
                        ldiv();
                        return;
                    case 10:
                        lshl();
                        return;
                    default:
                        switch (i10) {
                            case 13:
                                lsub();
                                return;
                            case 14:
                                ladd();
                                return;
                            case 15:
                                lmul();
                                return;
                            case 16:
                                lrem();
                                return;
                            case 17:
                                lshr();
                                return;
                            default:
                                return;
                        }
                }
            case 8:
                if (i10 == 9) {
                    ddiv();
                    return;
                }
                switch (i10) {
                    case 13:
                        dsub();
                        return;
                    case 14:
                        dadd();
                        return;
                    case 15:
                        dmul();
                        return;
                    case 16:
                        drem();
                        return;
                    default:
                        return;
                }
            case 9:
                if (i10 == 9) {
                    fdiv();
                    return;
                }
                switch (i10) {
                    case 13:
                        fsub();
                        return;
                    case 14:
                        fadd();
                        return;
                    case 15:
                        fmul();
                        return;
                    case 16:
                        frem();
                        return;
                    default:
                        return;
                }
        }
    }

    public void sipush(int i10) {
        this.countLabels = 0;
        int i11 = this.stackDepth + 1;
        this.stackDepth = i11;
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i12 = this.classFileOffset;
        this.classFileOffset = i12 + 1;
        bArr[i12] = 17;
        writeSignedShort(i10);
    }

    public void store(LocalVariableBinding localVariableBinding, boolean z10) {
        int i10 = localVariableBinding.resolvedPosition;
        switch (localVariableBinding.type.f102482id) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
                if (z10) {
                    dup();
                }
                if (i10 == 0) {
                    istore_0();
                    return;
                }
                if (i10 == 1) {
                    istore_1();
                    return;
                }
                if (i10 == 2) {
                    istore_2();
                    return;
                } else if (i10 != 3) {
                    istore(i10);
                    return;
                } else {
                    istore_3();
                    return;
                }
            case 6:
            default:
                if (z10) {
                    dup();
                }
                if (i10 == 0) {
                    astore_0();
                    return;
                }
                if (i10 == 1) {
                    astore_1();
                    return;
                }
                if (i10 == 2) {
                    astore_2();
                    return;
                } else if (i10 != 3) {
                    astore(i10);
                    return;
                } else {
                    astore_3();
                    return;
                }
            case 7:
                if (z10) {
                    dup2();
                }
                if (i10 == 0) {
                    lstore_0();
                    return;
                }
                if (i10 == 1) {
                    lstore_1();
                    return;
                }
                if (i10 == 2) {
                    lstore_2();
                    return;
                } else if (i10 != 3) {
                    lstore(i10);
                    return;
                } else {
                    lstore_3();
                    return;
                }
            case 8:
                if (z10) {
                    dup2();
                }
                if (i10 == 0) {
                    dstore_0();
                    return;
                }
                if (i10 == 1) {
                    dstore_1();
                    return;
                }
                if (i10 == 2) {
                    dstore_2();
                    return;
                } else if (i10 != 3) {
                    dstore(i10);
                    return;
                } else {
                    dstore_3();
                    return;
                }
            case 9:
                if (z10) {
                    dup();
                }
                if (i10 == 0) {
                    fstore_0();
                    return;
                }
                if (i10 == 1) {
                    fstore_1();
                    return;
                }
                if (i10 == 2) {
                    fstore_2();
                    return;
                } else if (i10 != 3) {
                    fstore(i10);
                    return;
                } else {
                    fstore_3();
                    return;
                }
        }
    }

    public void tableswitch(CaseLabel caseLabel, int i10, int i11, int[] iArr, int[] iArr2, int[] iArr3, CaseLabel[] caseLabelArr) {
        this.countLabels = 0;
        this.stackDepth--;
        int i12 = this.position;
        caseLabel.placeInstruction();
        for (CaseLabel caseLabel2 : caseLabelArr) {
            caseLabel2.placeInstruction();
        }
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i13 = this.classFileOffset;
        this.classFileOffset = i13 + 1;
        bArr[i13] = Opcodes.OPC_tableswitch;
        for (int i14 = 3 - (i12 & 3); i14 > 0; i14--) {
            if (this.classFileOffset >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position++;
            byte[] bArr2 = this.bCodeStream;
            int i15 = this.classFileOffset;
            this.classFileOffset = i15 + 1;
            bArr2[i15] = 0;
        }
        caseLabel.branch();
        writeSignedWord(i10);
        writeSignedWord(i11);
        int i16 = i10;
        int i17 = i16;
        while (true) {
            int i18 = iArr2[i16 - i10];
            if (iArr[i18] == i17) {
                caseLabelArr[iArr3[i18]].branch();
                i16++;
                if (i17 == i11) {
                    return;
                }
            } else {
                caseLabel.branch();
            }
            i17++;
        }
    }

    public void throwAnyException(LocalVariableBinding localVariableBinding) {
        load(localVariableBinding);
        athrow();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("( position:");
        stringBuffer.append(this.position);
        stringBuffer.append(",\nstackDepth:");
        stringBuffer.append(this.stackDepth);
        stringBuffer.append(",\nmaxStack:");
        stringBuffer.append(this.stackMax);
        stringBuffer.append(",\nmaxLocals:");
        stringBuffer.append(this.maxLocals);
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    public void writePosition(BranchLabel branchLabel) {
        int i10 = (branchLabel.position - this.position) + 1;
        if (Math.abs(i10) > 32767 && !this.wideMode) {
            throw new AbortMethod(RESTART_IN_WIDE_MODE, null);
        }
        writeSignedShort(i10);
        int[] forwardReferences = branchLabel.forwardReferences();
        int forwardReferenceCount = branchLabel.forwardReferenceCount();
        for (int i11 = 0; i11 < forwardReferenceCount; i11++) {
            writePosition(branchLabel, forwardReferences[i11]);
        }
    }

    public final void writeSignedWord(int i10) {
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 4;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        int i12 = i11 + 1;
        this.classFileOffset = i12;
        bArr[i11] = (byte) (((-16777216) & i10) >> 24);
        int i13 = i11 + 2;
        this.classFileOffset = i13;
        bArr[i12] = (byte) ((16711680 & i10) >> 16);
        int i14 = i11 + 3;
        this.classFileOffset = i14;
        bArr[i13] = (byte) ((65280 & i10) >> 8);
        this.classFileOffset = i11 + 4;
        bArr[i14] = (byte) (i10 & 255);
    }

    public void writeWidePosition(BranchLabel branchLabel) {
        int i10 = branchLabel.position;
        writeSignedWord((i10 - this.position) + 1);
        int[] forwardReferences = branchLabel.forwardReferences();
        int forwardReferenceCount = branchLabel.forwardReferenceCount();
        for (int i11 = 0; i11 < forwardReferenceCount; i11++) {
            int i12 = forwardReferences[i11];
            writeSignedWord(i12, (i10 - i12) + 1);
        }
    }

    public void instance_of(TypeReference typeReference, TypeBinding typeBinding) {
        this.countLabels = 0;
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_instanceof;
        writeUnsignedShort(this.constantPool.literalIndexForType(typeBinding));
    }

    public void invoke(byte b10, MethodBinding methodBinding, TypeBinding typeBinding) {
        invoke(b10, methodBinding, typeBinding, null);
    }

    public void invokeDynamic(int i10, int i11, int i12, char[] cArr, char[] cArr2, boolean z10, TypeReference typeReference, TypeReference[] typeReferenceArr) {
        if (this.classFileOffset + 4 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        int literalIndexForInvokeDynamic = this.constantPool.literalIndexForInvokeDynamic(i10, cArr, cArr2);
        this.position += 3;
        byte[] bArr = this.bCodeStream;
        int i13 = this.classFileOffset;
        this.classFileOffset = i13 + 1;
        bArr[i13] = Opcodes.OPC_invokedynamic;
        writeUnsignedShort(literalIndexForInvokeDynamic);
        byte[] bArr2 = this.bCodeStream;
        int i14 = this.classFileOffset;
        int i15 = i14 + 1;
        this.classFileOffset = i15;
        bArr2[i14] = 0;
        this.classFileOffset = i14 + 2;
        bArr2[i15] = 0;
        int i16 = this.stackDepth + (i12 - i11);
        this.stackDepth = i16;
        if (i16 > this.stackMax) {
            this.stackMax = i16;
        }
    }

    public final void load(TypeBinding typeBinding, int i10) {
        this.countLabels = 0;
        switch (typeBinding.f102482id) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
                if (i10 == 0) {
                    iload_0();
                    return;
                }
                if (i10 == 1) {
                    iload_1();
                    return;
                }
                if (i10 == 2) {
                    iload_2();
                    return;
                } else if (i10 != 3) {
                    iload(i10);
                    return;
                } else {
                    iload_3();
                    return;
                }
            case 6:
            default:
                if (i10 == 0) {
                    aload_0();
                    return;
                }
                if (i10 == 1) {
                    aload_1();
                    return;
                }
                if (i10 == 2) {
                    aload_2();
                    return;
                } else if (i10 != 3) {
                    aload(i10);
                    return;
                } else {
                    aload_3();
                    return;
                }
            case 7:
                if (i10 == 0) {
                    lload_0();
                    return;
                }
                if (i10 == 1) {
                    lload_1();
                    return;
                }
                if (i10 == 2) {
                    lload_2();
                    return;
                } else if (i10 != 3) {
                    lload(i10);
                    return;
                } else {
                    lload_3();
                    return;
                }
            case 8:
                if (i10 == 0) {
                    dload_0();
                    return;
                }
                if (i10 == 1) {
                    dload_1();
                    return;
                }
                if (i10 == 2) {
                    dload_2();
                    return;
                } else if (i10 != 3) {
                    dload(i10);
                    return;
                } else {
                    dload_3();
                    return;
                }
            case 9:
                if (i10 == 0) {
                    fload_0();
                    return;
                }
                if (i10 == 1) {
                    fload_1();
                    return;
                }
                if (i10 == 2) {
                    fload_2();
                    return;
                } else if (i10 != 3) {
                    fload(i10);
                    return;
                } else {
                    fload_3();
                    return;
                }
        }
    }

    public void newArray(TypeReference typeReference, ArrayAllocationExpression arrayAllocationExpression, ArrayBinding arrayBinding) {
        TypeBinding elementsType = arrayBinding.elementsType();
        switch (elementsType.f102482id) {
            case 2:
                newarray(5);
                return;
            case 3:
                newarray(8);
                return;
            case 4:
                newarray(9);
                return;
            case 5:
                newarray(4);
                return;
            case 6:
            default:
                anewarray(elementsType);
                return;
            case 7:
                newarray(11);
                return;
            case 8:
                newarray(7);
                return;
            case 9:
                newarray(6);
                return;
            case 10:
                newarray(10);
                return;
        }
    }

    public void new_(TypeReference typeReference, TypeBinding typeBinding) {
        this.countLabels = 0;
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_new;
        writeUnsignedShort(this.constantPool.literalIndexForType(typeBinding));
    }

    public void recordExpressionType(TypeBinding typeBinding, int i10, boolean z10) {
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void recordPositionsFrom(int i10, int i11, boolean z10) {
        int insertionIndex;
        int i12;
        if ((this.generateAttributes & 2) == 0 || i11 == 0) {
            return;
        }
        int i13 = this.position;
        if ((i10 != i13 || z10) && i10 <= i13) {
            int i14 = this.pcToSourceMapSize;
            int i15 = i14 + 4;
            int[] iArr = this.pcToSourceMap;
            if (i15 > iArr.length) {
                int[] iArr2 = new int[i14 << 1];
                this.pcToSourceMap = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i14);
            }
            int i16 = this.pcToSourceMapSize;
            if (i16 > 0) {
                int i17 = this.pcToSourceMap[i16 - 1];
                int i18 = this.lineNumberStart;
                int i19 = this.lineNumberEnd;
                if (i18 != i19) {
                    int[] iArr3 = this.lineSeparatorPositions;
                    int length = iArr3.length;
                    if (i17 == 1) {
                        if (i11 < iArr3[0]) {
                            i12 = 1;
                        } else {
                            if (length == 1 || i11 < iArr3[1]) {
                                i12 = 2;
                            }
                            i12 = -1;
                        }
                        i18 = i12 == -1 ? Util.getLineNumber(i11, iArr3, i18 - 1, i19 - 1) : i12;
                    } else if (i17 < length) {
                        if (iArr3[i17 - 2] < i11) {
                            if (i11 < iArr3[i17 - 1]) {
                                i12 = i17;
                            } else if (i11 < iArr3[i17]) {
                                i12 = i17 + 1;
                            }
                            if (i12 == -1) {
                            }
                        }
                        i12 = -1;
                        if (i12 == -1) {
                        }
                    } else {
                        if (iArr3[length - 1] < i11) {
                            i12 = length + 1;
                            if (i12 == -1) {
                            }
                        }
                        i12 = -1;
                        if (i12 == -1) {
                        }
                    }
                }
                if (i17 != i18) {
                    if (i10 <= this.lastEntryPC) {
                        int insertionIndex2 = insertionIndex(this.pcToSourceMap, this.pcToSourceMapSize, i10);
                        if (insertionIndex2 != -1) {
                            if (insertionIndex2 <= 1 || this.pcToSourceMap[insertionIndex2 - 1] != i18) {
                                int i20 = this.pcToSourceMapSize;
                                if (insertionIndex2 < i20) {
                                    int[] iArr4 = this.pcToSourceMap;
                                    if (iArr4[insertionIndex2 + 1] == i18) {
                                        iArr4[insertionIndex2] = i10;
                                    }
                                }
                                int[] iArr5 = this.pcToSourceMap;
                                System.arraycopy(iArr5, insertionIndex2, iArr5, insertionIndex2 + 2, i20 - insertionIndex2);
                                int[] iArr6 = this.pcToSourceMap;
                                iArr6[insertionIndex2] = i10;
                                iArr6[insertionIndex2 + 1] = i18;
                                this.pcToSourceMapSize += 2;
                            }
                        } else {
                            int i21 = this.position;
                            int i22 = this.lastEntryPC;
                            if (i21 != i22) {
                                if (i22 != i10) {
                                    int[] iArr7 = this.pcToSourceMap;
                                    int i23 = this.pcToSourceMapSize;
                                    if (i22 != iArr7[i23 - 2]) {
                                        int i24 = i23 + 1;
                                        this.pcToSourceMapSize = i24;
                                        iArr7[i23] = i22;
                                        this.pcToSourceMapSize = i23 + 2;
                                        iArr7[i24] = i18;
                                    }
                                }
                                this.pcToSourceMap[this.pcToSourceMapSize - 1] = i18;
                            } else {
                                int[] iArr8 = this.pcToSourceMap;
                                int i25 = this.pcToSourceMapSize;
                                if (iArr8[i25 - 1] < i18 && z10) {
                                    iArr8[i25 - 1] = i18;
                                }
                            }
                        }
                    } else {
                        int[] iArr9 = this.pcToSourceMap;
                        int i26 = this.pcToSourceMapSize;
                        int i27 = i26 + 1;
                        this.pcToSourceMapSize = i27;
                        iArr9[i26] = i10;
                        this.pcToSourceMapSize = i26 + 2;
                        iArr9[i27] = i18;
                    }
                } else {
                    int[] iArr10 = this.pcToSourceMap;
                    int i28 = this.pcToSourceMapSize;
                    if (i10 < iArr10[i28 - 2] && (insertionIndex = insertionIndex(iArr10, i28, i10)) != -1 && (insertionIndex <= 1 || this.pcToSourceMap[insertionIndex - 1] != i18)) {
                        int[] iArr11 = this.pcToSourceMap;
                        int i29 = insertionIndex + 1;
                        if (iArr11[i29] != i18) {
                            System.arraycopy(iArr11, insertionIndex, iArr11, insertionIndex + 2, this.pcToSourceMapSize - insertionIndex);
                            int[] iArr12 = this.pcToSourceMap;
                            iArr12[insertionIndex] = i10;
                            iArr12[i29] = i18;
                            this.pcToSourceMapSize += 2;
                        } else {
                            iArr11[insertionIndex] = i10;
                        }
                    }
                }
                this.lastEntryPC = this.position;
                return;
            }
            int i30 = this.lineNumberStart;
            int i31 = this.lineNumberEnd;
            if (i30 != i31) {
                i30 = Util.getLineNumber(i11, this.lineSeparatorPositions, i30 - 1, i31 - 1);
            }
            int[] iArr13 = this.pcToSourceMap;
            int i32 = this.pcToSourceMapSize;
            int i33 = i32 + 1;
            this.pcToSourceMapSize = i33;
            iArr13[i32] = i10;
            this.pcToSourceMapSize = i32 + 2;
            iArr13[i33] = i30;
            this.lastEntryPC = this.position;
        }
    }

    public void generateInlinedValue(byte b10) {
        switch (b10) {
            case -1:
                iconst_m1();
                return;
            case 0:
                iconst_0();
                return;
            case 1:
                iconst_1();
                return;
            case 2:
                iconst_2();
                return;
            case 3:
                iconst_3();
                return;
            case 4:
                iconst_4();
                return;
            case 5:
                iconst_5();
                return;
            default:
                if (Byte.MIN_VALUE > b10 || b10 > Byte.MAX_VALUE) {
                    return;
                }
                bipush(b10);
                return;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void invoke(byte b10, MethodBinding methodBinding, TypeBinding typeBinding, TypeReference[] typeReferenceArr) {
        int i10;
        int length;
        TypeBinding typeBinding2 = typeBinding == null ? methodBinding.declaringClass : typeBinding;
        if ((typeBinding2.tagBits & 2048) != 0) {
            Util.recordNestedType(this.classFile, typeBinding2);
        }
        switch (b10) {
            case -73:
                if (methodBinding.isConstructor()) {
                    if (typeBinding2.isNestedType()) {
                        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding2;
                        i10 = referenceBinding.getEnclosingInstancesSlotSize() + 1;
                        SyntheticArgumentBinding[] syntheticOuterLocalVariables = referenceBinding.syntheticOuterLocalVariables();
                        if (syntheticOuterLocalVariables != null) {
                            for (SyntheticArgumentBinding syntheticArgumentBinding : syntheticOuterLocalVariables) {
                                int i11 = syntheticArgumentBinding.f102483id;
                                i10 = (i11 == 7 || i11 == 8) ? i10 + 2 : i10 + 1;
                            }
                        }
                    } else {
                        i10 = 1;
                    }
                    if (typeBinding2.isEnum()) {
                        i10 += 2;
                    }
                    for (length = methodBinding.parameters.length - 1; length >= 0; length--) {
                        int i12 = methodBinding.parameters[length].f102482id;
                        i10 = (i12 == 7 || i12 == 8) ? i10 + 2 : i10 + 1;
                    }
                    int i13 = methodBinding.returnType.f102482id;
                    invoke18(b10, i10, i13 != 6 ? (i13 == 7 || i13 == 8) ? 2 : 1 : 0, typeBinding2.constantPoolName(), typeBinding2.isInterface(), methodBinding.selector, methodBinding.signature(this.classFile));
                    return;
                }
            case -74:
            case -71:
                i10 = 1;
                while (length >= 0) {
                }
                int i132 = methodBinding.returnType.f102482id;
                invoke18(b10, i10, i132 != 6 ? (i132 == 7 || i132 == 8) ? 2 : 1 : 0, typeBinding2.constantPoolName(), typeBinding2.isInterface(), methodBinding.selector, methodBinding.signature(this.classFile));
                return;
            case -72:
                i10 = 0;
                while (length >= 0) {
                }
                int i1322 = methodBinding.returnType.f102482id;
                invoke18(b10, i10, i1322 != 6 ? (i1322 == 7 || i1322 == 8) ? 2 : 1 : 0, typeBinding2.constantPoolName(), typeBinding2.isInterface(), methodBinding.selector, methodBinding.signature(this.classFile));
                return;
            default:
                return;
        }
    }

    private final void writeSignedShort(int i10, int i11) {
        int i12 = this.startingClassFileOffset + i10;
        int i13 = i12 + 1;
        if (i13 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        byte[] bArr = this.bCodeStream;
        bArr[i12] = (byte) (i11 >> 8);
        bArr[i13] = (byte) i11;
    }

    private void fieldAccess(byte b10, int i10, char[] cArr, char[] cArr2, char[] cArr3) {
        this.countLabels = 0;
        switch (b10) {
            case -78:
                if (i10 == 2) {
                    this.stackDepth += 2;
                    break;
                } else {
                    this.stackDepth++;
                    break;
                }
            case -77:
                if (i10 == 2) {
                    this.stackDepth -= 2;
                    break;
                } else {
                    this.stackDepth--;
                    break;
                }
            case -76:
                if (i10 == 2) {
                    this.stackDepth++;
                    break;
                }
                break;
            case -75:
                if (i10 == 2) {
                    this.stackDepth -= 3;
                    break;
                } else {
                    this.stackDepth -= 2;
                    break;
                }
        }
        int i11 = this.stackDepth;
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i12 = this.classFileOffset;
        this.classFileOffset = i12 + 1;
        bArr[i12] = b10;
        writeUnsignedShort(this.constantPool.literalIndexForField(cArr, cArr2, cArr3));
    }

    public void swap() {
        this.countLabels = 0;
        if (this.classFileOffset >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i10 = this.classFileOffset;
        this.classFileOffset = i10 + 1;
        bArr[i10] = Opcodes.OPC_swap;
    }

    public void exitUserScope(BlockScope blockScope, LocalVariableBinding localVariableBinding) {
        if ((this.generateAttributes & 28) == 0) {
            return;
        }
        int i10 = this.visibleLocalsCount - 1;
        while (i10 >= 0) {
            LocalVariableBinding localVariableBinding2 = this.visibleLocals[i10];
            if (localVariableBinding2 == null || localVariableBinding2.declaringScope != blockScope || localVariableBinding2 == localVariableBinding) {
                i10--;
            } else {
                if (localVariableBinding2.initializationCount > 0) {
                    localVariableBinding2.recordInitializationEndPC(this.position);
                }
                this.visibleLocals[i10] = null;
                i10--;
            }
        }
    }

    public void writePosition(BranchLabel branchLabel, int i10) {
        int i11 = (branchLabel.position - i10) + 1;
        if (Math.abs(i11) > 32767 && !this.wideMode) {
            throw new AbortMethod(RESTART_IN_WIDE_MODE, null);
        }
        if (this.wideMode) {
            if ((branchLabel.tagBits & 1) != 0) {
                writeSignedWord(i10, i11);
                return;
            } else {
                writeSignedShort(i10, i11);
                return;
            }
        }
        writeSignedShort(i10, i11);
    }

    public void writeSignedWord(int i10, int i11) {
        int i12 = this.startingClassFileOffset + i10;
        if (i12 + 3 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        byte[] bArr = this.bCodeStream;
        bArr[i12] = (byte) (((-16777216) & i11) >> 24);
        bArr[i12 + 1] = (byte) ((16711680 & i11) >> 16);
        bArr[i12 + 2] = (byte) ((65280 & i11) >> 8);
        bArr[i12 + 3] = (byte) (i11 & 255);
    }

    public static TypeBinding getConstantPoolDeclaringClass(Scope scope, MethodBinding methodBinding, TypeBinding typeBinding, boolean z10) {
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        if (ArrayBinding.isArrayClone(typeBinding, methodBinding)) {
            return scope.compilerOptions().sourceLevel > ClassFileConstants.JDK1_4 ? typeBinding.erasure() : referenceBinding;
        }
        if (!TypeBinding.notEquals(referenceBinding, typeBinding.erasure()) || typeBinding.isArrayType()) {
            return referenceBinding;
        }
        CompilerOptions compilerOptions = scope.compilerOptions();
        if ((compilerOptions.targetJDK < ClassFileConstants.JDK1_2 || ((compilerOptions.complianceLevel < ClassFileConstants.JDK1_4 && z10 && methodBinding.isStatic()) || methodBinding.declaringClass.f102482id == 1)) && methodBinding.declaringClass.canBeSeenBy(scope)) {
            return referenceBinding;
        }
        if (typeBinding.isIntersectionType18()) {
            ReferenceBinding[] intersectingTypes = ((IntersectionTypeBinding18) typeBinding).getIntersectingTypes();
            for (int i10 = 0; i10 < intersectingTypes.length; i10++) {
                if (intersectingTypes[i10].findSuperTypeOriginatingFrom(referenceBinding) != null) {
                    return intersectingTypes[i10].erasure();
                }
            }
            return referenceBinding;
        }
        return typeBinding.erasure();
    }

    public void generateInlinedValue(char c10) {
        if (c10 == 0) {
            iconst_0();
            return;
        }
        if (c10 == 1) {
            iconst_1();
            return;
        }
        if (c10 == 2) {
            iconst_2();
            return;
        }
        if (c10 == 3) {
            iconst_3();
            return;
        }
        if (c10 == 4) {
            iconst_4();
            return;
        }
        if (c10 == 5) {
            iconst_5();
            return;
        }
        if (6 <= c10 && c10 <= '\u007f') {
            bipush((byte) c10);
        } else if ('\u0080' <= c10 && c10 <= '\u7fff') {
            sipush(c10);
        } else {
            ldc((int) c10);
        }
    }

    public void ldc2_w(long j10) {
        this.countLabels = 0;
        int literalIndex = this.constantPool.literalIndex(j10);
        int i10 = this.stackDepth + 2;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = 20;
        writeUnsignedShort(literalIndex);
    }

    public void checkcast(TypeBinding typeBinding) {
        checkcast(null, typeBinding, -1);
    }

    public void checkcast(TypeReference typeReference, TypeBinding typeBinding, int i10) {
        this.countLabels = 0;
        if (this.classFileOffset + 2 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position++;
        byte[] bArr = this.bCodeStream;
        int i11 = this.classFileOffset;
        this.classFileOffset = i11 + 1;
        bArr[i11] = Opcodes.OPC_checkcast;
        writeUnsignedShort(this.constantPool.literalIndexForType(typeBinding));
    }

    public void ldc(int i10) {
        this.countLabels = 0;
        int literalIndex = this.constantPool.literalIndex(i10);
        int i11 = this.stackDepth + 1;
        this.stackDepth = i11;
        if (i11 > this.stackMax) {
            this.stackMax = i11;
        }
        if (literalIndex > 255) {
            if (this.classFileOffset + 2 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position++;
            byte[] bArr = this.bCodeStream;
            int i12 = this.classFileOffset;
            this.classFileOffset = i12 + 1;
            bArr[i12] = 19;
            writeUnsignedShort(literalIndex);
            return;
        }
        if (this.classFileOffset + 1 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i13 = this.classFileOffset;
        int i14 = i13 + 1;
        this.classFileOffset = i14;
        bArr2[i13] = 18;
        this.classFileOffset = i13 + 2;
        bArr2[i14] = (byte) literalIndex;
    }

    public void reset(LambdaExpression lambdaExpression, ClassFile classFile) {
        init(classFile);
        this.lambdaExpression = lambdaExpression;
        this.methodDeclaration = null;
        int[] iArr = this.lineSeparatorPositions;
        if (iArr != null) {
            int length = iArr.length;
            int i10 = length - 1;
            int lineNumber = Util.getLineNumber(lambdaExpression.body().sourceStart, iArr, 0, i10);
            this.lineNumberStart = lineNumber;
            if (lineNumber > i10) {
                this.lineNumberEnd = lineNumber;
            } else {
                int lineNumber2 = Util.getLineNumber(lambdaExpression.body().sourceEnd, iArr, lineNumber - 1, i10);
                if (lineNumber2 < i10) {
                    length = lineNumber2;
                }
                this.lineNumberEnd = length != 0 ? length : 1;
            }
        }
        this.preserveUnusedLocals = lambdaExpression.scope.compilerOptions().preserveAllLocalVariables;
        initializeMaxLocals(lambdaExpression.binding);
    }

    public void generateInlinedValue(double d10) {
        if (d10 == 0.0d) {
            if (Double.doubleToLongBits(d10) != 0) {
                ldc2_w(d10);
                return;
            } else {
                dconst_0();
                return;
            }
        }
        if (d10 == 1.0d) {
            dconst_1();
        } else {
            ldc2_w(d10);
        }
    }

    public void generateInlinedValue(float f10) {
        if (f10 == 0.0f) {
            if (Float.floatToIntBits(f10) != 0) {
                ldc(f10);
                return;
            } else {
                fconst_0();
                return;
            }
        }
        if (f10 == 1.0f) {
            fconst_1();
        } else if (f10 == 2.0f) {
            fconst_2();
        } else {
            ldc(f10);
        }
    }

    public void reset(ClassFile classFile) {
        SourceTypeBinding sourceTypeBinding;
        this.targetLevel = classFile.targetJDK;
        int i10 = classFile.produceAttributes;
        this.generateAttributes = i10;
        if ((i10 & 2) != 0 && (sourceTypeBinding = classFile.referenceBinding) != null) {
            this.lineSeparatorPositions = sourceTypeBinding.scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions();
        } else {
            this.lineSeparatorPositions = null;
        }
    }

    public void generateInlinedValue(int i10) {
        switch (i10) {
            case -1:
                iconst_m1();
                return;
            case 0:
                iconst_0();
                return;
            case 1:
                iconst_1();
                return;
            case 2:
                iconst_2();
                return;
            case 3:
                iconst_3();
                return;
            case 4:
                iconst_4();
                return;
            case 5:
                iconst_5();
                return;
            default:
                if (-128 <= i10 && i10 <= 127) {
                    bipush((byte) i10);
                    return;
                } else if (-32768 <= i10 && i10 <= 32767) {
                    sipush(i10);
                    return;
                } else {
                    ldc(i10);
                    return;
                }
        }
    }

    public void ldc(String str) {
        this.countLabels = 0;
        int i10 = this.position;
        char[] charArray = str.toCharArray();
        int literalIndexForLdc = this.constantPool.literalIndexForLdc(charArray);
        if (literalIndexForLdc > 0) {
            ldcForIndex(literalIndexForLdc);
            return;
        }
        this.position = i10;
        int length = str.length();
        int i11 = 65535;
        byte[] bArr = new byte[Math.min(length + 100, 65535)];
        int i12 = 0;
        int i13 = 0;
        while (i12 < 65532 && i13 < length) {
            char c10 = charArray[i13];
            int i14 = i12 + 3;
            int length2 = bArr.length;
            if (i14 > length2) {
                byte[] bArr2 = new byte[Math.min(length2 + 100, 65535)];
                System.arraycopy(bArr, 0, bArr2, 0, i12);
                bArr = bArr2;
            }
            if (c10 >= 1 && c10 <= '\u007f') {
                bArr[i12] = (byte) c10;
                i12++;
            } else if (c10 > '\u07ff') {
                bArr[i12] = (byte) (((c10 >> '\f') & 15) | 224);
                int i15 = i12 + 2;
                bArr[i12 + 1] = (byte) (((c10 >> 6) & 63) | 128);
                i12 += 3;
                bArr[i15] = (byte) ((c10 & '?') | 128);
            } else {
                int i16 = i12 + 1;
                bArr[i12] = (byte) (((c10 >> 6) & 31) | 192);
                i12 += 2;
                bArr[i16] = (byte) ((c10 & '?') | 128);
            }
            i13++;
        }
        newStringContatenation();
        dup();
        char[] cArr = new char[i13];
        System.arraycopy(charArray, 0, cArr, 0, i13);
        byte[] bArr3 = new byte[i12];
        System.arraycopy(bArr, 0, bArr3, 0, i12);
        ldcForIndex(this.constantPool.literalIndex(cArr, bArr3));
        invokeStringConcatenationStringConstructor();
        while (i13 < length) {
            byte[] bArr4 = new byte[Math.min((length - i13) + 100, i11)];
            int i17 = 0;
            int i18 = i13;
            while (i17 < 65532 && i18 < length) {
                char c11 = charArray[i18];
                int i19 = i17 + 3;
                int length3 = bArr4.length;
                if (i19 > length3) {
                    byte[] bArr5 = new byte[Math.min(length3 + 100, i11)];
                    System.arraycopy(bArr4, 0, bArr5, 0, i17);
                    bArr4 = bArr5;
                }
                if (c11 >= 1 && c11 <= '\u007f') {
                    bArr4[i17] = (byte) c11;
                    i17++;
                } else if (c11 > '\u07ff') {
                    bArr4[i17] = (byte) (((c11 >> '\f') & 15) | 224);
                    int i20 = i17 + 2;
                    bArr4[i17 + 1] = (byte) (((c11 >> 6) & 63) | 128);
                    i17 += 3;
                    bArr4[i20] = (byte) ((c11 & '?') | 128);
                } else {
                    int i21 = i17 + 1;
                    bArr4[i17] = (byte) (((c11 >> 6) & 31) | 192);
                    i17 += 2;
                    bArr4[i21] = (byte) ((c11 & '?') | 128);
                }
                i18++;
                i11 = 65535;
            }
            int i22 = i18 - i13;
            char[] cArr2 = new char[i22];
            System.arraycopy(charArray, i13, cArr2, 0, i22);
            byte[] bArr6 = new byte[i17];
            System.arraycopy(bArr4, 0, bArr6, 0, i17);
            ldcForIndex(this.constantPool.literalIndex(cArr2, bArr6));
            invokeStringConcatenationAppendForType(11);
            i13 = i18;
            i11 = 65535;
        }
        invokeStringConcatenationToString();
        invokeStringIntern();
    }

    public void generateInlinedValue(long j10) {
        if (j10 == 0) {
            lconst_0();
        } else if (j10 == 1) {
            lconst_1();
        } else {
            ldc2_w(j10);
        }
    }

    public void generateInlinedValue(short s10) {
        switch (s10) {
            case -1:
                iconst_m1();
                return;
            case 0:
                iconst_0();
                return;
            case 1:
                iconst_1();
                return;
            case 2:
                iconst_2();
                return;
            case 3:
                iconst_3();
                return;
            case 4:
                iconst_4();
                return;
            case 5:
                iconst_5();
                return;
            default:
                if (-128 <= s10 && s10 <= 127) {
                    bipush((byte) s10);
                    return;
                } else {
                    sipush(s10);
                    return;
                }
        }
    }

    public void ldc(TypeBinding typeBinding) {
        this.countLabels = 0;
        int literalIndexForType = this.constantPool.literalIndexForType(typeBinding);
        int i10 = this.stackDepth + 1;
        this.stackDepth = i10;
        if (i10 > this.stackMax) {
            this.stackMax = i10;
        }
        if (literalIndexForType > 255) {
            if (this.classFileOffset + 2 >= this.bCodeStream.length) {
                resizeByteArray();
            }
            this.position++;
            byte[] bArr = this.bCodeStream;
            int i11 = this.classFileOffset;
            this.classFileOffset = i11 + 1;
            bArr[i11] = 19;
            writeUnsignedShort(literalIndexForType);
            return;
        }
        if (this.classFileOffset + 1 >= this.bCodeStream.length) {
            resizeByteArray();
        }
        this.position += 2;
        byte[] bArr2 = this.bCodeStream;
        int i12 = this.classFileOffset;
        int i13 = i12 + 1;
        this.classFileOffset = i13;
        bArr2[i12] = 18;
        this.classFileOffset = i12 + 2;
        bArr2[i13] = (byte) literalIndexForType;
    }
}
