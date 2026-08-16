package org.eclipse.jdt.internal.compiler;

import android.bluetooth.BluetoothClass;
import android.bluetooth.le.AdvertisingSetParameters;
import android.media.MediaPlayer;
import com.jme3.texture.FrameBuffer;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FunctionalExpression;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.OpensStatement;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.Receiver;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.AnnotationContext;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.codegen.StackMapFrame;
import org.eclipse.jdt.internal.compiler.codegen.StackMapFrameCodeStream;
import org.eclipse.jdt.internal.compiler.codegen.TypeAnnotationCodeStream;
import org.eclipse.jdt.internal.compiler.codegen.VerificationTypeInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.StringConstant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolymorphicMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceModuleBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeIds;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.ShouldNotImplement;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class ClassFile implements TypeConstants, TypeIds {
    public static final int INITIAL_CONTENTS_SIZE = 400;
    public static final int INITIAL_HEADER_SIZE = 1500;
    public static final int INNER_CLASSES_SIZE = 5;
    public static final int NESTED_MEMBER_SIZE = 5;
    public List bootstrapMethods;
    private byte[] bytes;
    public CodeStream codeStream;
    public ConstantPool constantPool;
    public int constantPoolOffset;
    public byte[] contents;
    public int contentsOffset;
    protected boolean creatingProblemType;
    public ClassFile enclosingClassFile;
    public byte[] header;
    public int headerOffset;
    public Map<TypeBinding, Boolean> innerClassesBindings;
    public boolean isNestedType;
    boolean isShared;
    public int methodCount;
    public int methodCountOffset;
    public List<TypeBinding> missingTypes;
    public int produceAttributes;
    public SourceTypeBinding referenceBinding;
    public long targetJDK;
    public Set visitedTypes;

    public ClassFile() {
        this.bootstrapMethods = null;
        this.isShared = false;
        this.missingTypes = null;
    }

    private void add(Map map, StackMapFrame stackMapFrame) {
        map.put(Integer.valueOf(stackMapFrame.f102475pc), stackMapFrame);
    }

    private int addFieldAttributes(FieldBinding fieldBinding, int i10) {
        FieldDeclaration sourceField;
        Constant constant = fieldBinding.constant();
        int generateConstantValueAttribute = constant != Constant.NotAConstant ? generateConstantValueAttribute(constant, fieldBinding, i10) : 0;
        if (this.targetJDK < ClassFileConstants.JDK1_5 && fieldBinding.isSynthetic()) {
            generateConstantValueAttribute += generateSyntheticAttribute();
        }
        if (fieldBinding.isDeprecated()) {
            generateConstantValueAttribute += generateDeprecatedAttribute();
        }
        char[] genericSignature = fieldBinding.genericSignature();
        if (genericSignature != null) {
            generateConstantValueAttribute += generateSignatureAttribute(genericSignature);
        }
        if (this.targetJDK >= ClassFileConstants.JDK1_4 && (sourceField = fieldBinding.sourceField()) != null) {
            Annotation[] annotationArr = sourceField.annotations;
            if (annotationArr != null) {
                generateConstantValueAttribute += generateRuntimeAnnotations(annotationArr, 137438953472L);
            }
            if ((this.produceAttributes & 32) != 0) {
                ArrayList arrayList = new ArrayList();
                if (annotationArr != null && (sourceField.bits & 1048576) != 0) {
                    sourceField.getAllAnnotationContexts(19, arrayList);
                }
                TypeReference typeReference = sourceField.type;
                if (typeReference != null && (typeReference.bits & 1048576) != 0) {
                    typeReference.getAllAnnotationContexts(19, arrayList);
                }
                int size = arrayList.size();
                if (size != 0) {
                    AnnotationContext[] annotationContextArr = new AnnotationContext[size];
                    arrayList.toArray(annotationContextArr);
                    int i11 = 0;
                    int i12 = 0;
                    for (int i13 = 0; i13 < size; i13++) {
                        AnnotationContext annotationContext = annotationContextArr[i13];
                        if ((annotationContext.visibility & 2) != 0) {
                            i12++;
                            arrayList.add(annotationContext);
                        } else {
                            i11++;
                            arrayList.add(annotationContext);
                        }
                    }
                    generateConstantValueAttribute += generateRuntimeTypeAnnotations(annotationContextArr, i11, i12);
                }
            }
        }
        if ((fieldBinding.tagBits & 128) != 0) {
            this.missingTypes = fieldBinding.type.collectMissingTypes(this.missingTypes);
        }
        return generateConstantValueAttribute;
    }

    private void addFieldInfo(FieldBinding fieldBinding) {
        if (this.contentsOffset + 8 >= this.contents.length) {
            resizeContents(8);
        }
        int accessFlags = fieldBinding.getAccessFlags();
        if (this.targetJDK < ClassFileConstants.JDK1_5) {
            accessFlags &= -4097;
        }
        byte[] bArr = this.contents;
        int i10 = this.contentsOffset;
        int i11 = i10 + 1;
        this.contentsOffset = i11;
        bArr[i10] = (byte) (accessFlags >> 8);
        this.contentsOffset = i10 + 2;
        bArr[i11] = (byte) accessFlags;
        int literalIndex = this.constantPool.literalIndex(fieldBinding.name);
        byte[] bArr2 = this.contents;
        int i12 = this.contentsOffset;
        int i13 = i12 + 1;
        this.contentsOffset = i13;
        bArr2[i12] = (byte) (literalIndex >> 8);
        this.contentsOffset = i12 + 2;
        bArr2[i13] = (byte) literalIndex;
        int literalIndex2 = this.constantPool.literalIndex(fieldBinding.type);
        byte[] bArr3 = this.contents;
        int i14 = this.contentsOffset;
        int i15 = i14 + 1;
        this.contentsOffset = i15;
        bArr3[i14] = (byte) (literalIndex2 >> 8);
        int i16 = i14 + 2;
        this.contentsOffset = i16;
        bArr3[i15] = (byte) literalIndex2;
        this.contentsOffset = i14 + 4;
        int addFieldAttributes = addFieldAttributes(fieldBinding, i16);
        if (this.contentsOffset + 2 >= this.contents.length) {
            resizeContents(2);
        }
        byte[] bArr4 = this.contents;
        bArr4[i16] = (byte) (addFieldAttributes >> 8);
        bArr4[i14 + 3] = (byte) addFieldAttributes;
    }

    private void addMissingAbstractProblemMethod(MethodDeclaration methodDeclaration, MethodBinding methodBinding, CategorizedProblem categorizedProblem, CompilationResult compilationResult) {
        generateMethodInfoHeader(methodBinding, methodBinding.modifiers & (-3329));
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(methodBinding) + 1;
        int i11 = this.contentsOffset;
        generateCodeAttributeHeader();
        StringBuffer stringBuffer = new StringBuffer(25);
        stringBuffer.append("\t" + categorizedProblem.getMessage() + "\n");
        stringBuffer.insert(0, Messages.compilation_unresolvedProblem);
        String stringBuffer2 = stringBuffer.toString();
        this.codeStream.init(this);
        CodeStream codeStream = this.codeStream;
        codeStream.preserveUnusedLocals = true;
        codeStream.initializeMaxLocals(methodBinding);
        this.codeStream.generateCodeAttributeForProblemMethod(stringBuffer2);
        completeCodeAttributeForMissingAbstractProblemMethod(methodBinding, i11, compilationResult.getLineSeparatorPositions(), categorizedProblem.getSourceLineNumber());
        completeMethodInfo(methodBinding, i10, generateMethodInfoAttributes);
    }

    private void addRealJumpTarget(Set set, int i10) {
        set.add(Integer.valueOf(i10));
    }

    private void completeArgumentAnnotationInfo(Argument[] argumentArr, List list) {
        int length = argumentArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Argument argument = argumentArr[i10];
            if ((argument.bits & 1048576) != 0) {
                argument.getAllAnnotationContexts(22, i10, list);
            }
        }
    }

    public static void createProblemType(TypeDeclaration typeDeclaration, CompilationResult compilationResult) {
        createProblemType(typeDeclaration, null, compilationResult);
    }

    private void dumpLocations(int[] iArr) {
        if (iArr == null) {
            if (this.contentsOffset + 1 >= this.contents.length) {
                resizeContents(1);
            }
            byte[] bArr = this.contents;
            int i10 = this.contentsOffset;
            this.contentsOffset = i10 + 1;
            bArr[i10] = 0;
            return;
        }
        int length = iArr.length;
        if (this.contentsOffset + length >= this.contents.length) {
            resizeContents(length + 1);
        }
        byte[] bArr2 = this.contents;
        int i11 = this.contentsOffset;
        this.contentsOffset = i11 + 1;
        bArr2[i11] = (byte) (iArr.length / 2);
        for (int i12 : iArr) {
            byte[] bArr3 = this.contents;
            int i13 = this.contentsOffset;
            this.contentsOffset = i13 + 1;
            bArr3[i13] = (byte) i12;
        }
    }

    private void dumpTargetTypeContents(int i10, AnnotationContext annotationContext) {
        if (i10 == 0 || i10 == 1) {
            byte[] bArr = this.contents;
            int i11 = this.contentsOffset;
            this.contentsOffset = i11 + 1;
            bArr[i11] = (byte) annotationContext.info;
            return;
        }
        if (i10 == 22) {
            byte[] bArr2 = this.contents;
            int i12 = this.contentsOffset;
            this.contentsOffset = i12 + 1;
            bArr2[i12] = (byte) annotationContext.info;
            return;
        }
        if (i10 != 23) {
            switch (i10) {
                case 16:
                    break;
                case 17:
                    byte[] bArr3 = this.contents;
                    int i13 = this.contentsOffset;
                    int i14 = i13 + 1;
                    this.contentsOffset = i14;
                    bArr3[i13] = (byte) annotationContext.info;
                    this.contentsOffset = i13 + 2;
                    bArr3[i14] = (byte) annotationContext.info2;
                    return;
                case 18:
                    byte[] bArr4 = this.contents;
                    int i15 = this.contentsOffset;
                    int i16 = i15 + 1;
                    this.contentsOffset = i16;
                    bArr4[i15] = (byte) annotationContext.info;
                    this.contentsOffset = i15 + 2;
                    bArr4[i16] = (byte) annotationContext.info2;
                    return;
                default:
                    switch (i10) {
                        case 64:
                        case 65:
                            int i17 = this.contentsOffset;
                            LocalVariableBinding localVariableBinding = annotationContext.variableBinding;
                            int i18 = localVariableBinding.initializationCount;
                            int i19 = (i18 * 6) + 2;
                            if (i17 + i19 >= this.contents.length) {
                                resizeContents(i19);
                            }
                            this.contentsOffset += 2;
                            int i20 = 0;
                            for (int i21 = 0; i21 < i18; i21++) {
                                int[] iArr = localVariableBinding.initializationPCs;
                                int i22 = i21 << 1;
                                int i23 = iArr[i22];
                                int i24 = iArr[i22 + 1];
                                if (i23 != i24) {
                                    i20++;
                                    byte[] bArr5 = this.contents;
                                    int i25 = this.contentsOffset;
                                    int i26 = i25 + 1;
                                    this.contentsOffset = i26;
                                    bArr5[i25] = (byte) (i23 >> 8);
                                    int i27 = i25 + 2;
                                    this.contentsOffset = i27;
                                    bArr5[i26] = (byte) i23;
                                    int i28 = i24 - i23;
                                    int i29 = i25 + 3;
                                    this.contentsOffset = i29;
                                    bArr5[i27] = (byte) (i28 >> 8);
                                    int i30 = i25 + 4;
                                    this.contentsOffset = i30;
                                    bArr5[i29] = (byte) i28;
                                    int i31 = localVariableBinding.resolvedPosition;
                                    int i32 = i25 + 5;
                                    this.contentsOffset = i32;
                                    bArr5[i30] = (byte) (i31 >> 8);
                                    this.contentsOffset = i25 + 6;
                                    bArr5[i32] = (byte) i31;
                                }
                            }
                            byte[] bArr6 = this.contents;
                            bArr6[i17] = (byte) (i20 >> 8);
                            bArr6[i17 + 1] = (byte) i20;
                            return;
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            byte[] bArr7 = this.contents;
                            int i33 = this.contentsOffset;
                            int i34 = i33 + 1;
                            this.contentsOffset = i34;
                            int i35 = annotationContext.info;
                            bArr7[i33] = (byte) (i35 >> 8);
                            this.contentsOffset = i33 + 2;
                            bArr7[i34] = (byte) i35;
                            return;
                        case 71:
                            byte[] bArr8 = this.contents;
                            int i36 = this.contentsOffset;
                            int i37 = i36 + 1;
                            this.contentsOffset = i37;
                            int i38 = annotationContext.info;
                            bArr8[i36] = (byte) (i38 >> 8);
                            int i39 = i36 + 2;
                            this.contentsOffset = i39;
                            bArr8[i37] = (byte) i38;
                            this.contentsOffset = i36 + 3;
                            bArr8[i39] = (byte) annotationContext.info2;
                            return;
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            byte[] bArr9 = this.contents;
                            int i40 = this.contentsOffset;
                            int i41 = i40 + 1;
                            this.contentsOffset = i41;
                            int i42 = annotationContext.info;
                            bArr9[i40] = (byte) (i42 >> 8);
                            int i43 = i40 + 2;
                            this.contentsOffset = i43;
                            bArr9[i41] = (byte) i42;
                            this.contentsOffset = i40 + 3;
                            bArr9[i43] = (byte) annotationContext.info2;
                            return;
                        default:
                            return;
                    }
            }
        }
        byte[] bArr10 = this.contents;
        int i44 = this.contentsOffset;
        int i45 = i44 + 1;
        this.contentsOffset = i45;
        int i46 = annotationContext.info;
        bArr10[i44] = (byte) (i46 >> 8);
        this.contentsOffset = i44 + 2;
        bArr10[i45] = (byte) i46;
    }

    private List filterFakeFrames(Set set, Map map, int i10) {
        set.remove(Integer.valueOf(i10));
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            StackMapFrame stackMapFrame = (StackMapFrame) map.get((Integer) it.next());
            if (stackMapFrame != null) {
                arrayList.add(stackMapFrame);
            }
        }
        Collections.sort(arrayList, new Comparator() {
            @Override
            public int compare(Object obj, Object obj2) {
                return ((StackMapFrame) obj).f102475pc - ((StackMapFrame) obj2).f102475pc;
            }
        });
        return arrayList;
    }

    private void generateAnnotation(Annotation annotation, int i10) {
        if (this.contentsOffset + 4 >= this.contents.length) {
            resizeContents(4);
        }
        TypeBinding typeBinding = annotation.resolvedType;
        if (typeBinding == null) {
            this.contentsOffset = i10;
            return;
        }
        if (typeBinding.isMemberType()) {
            recordInnerClasses(typeBinding);
        }
        int literalIndex = this.constantPool.literalIndex(typeBinding.signature());
        byte[] bArr = this.contents;
        int i11 = this.contentsOffset;
        int i12 = i11 + 1;
        this.contentsOffset = i12;
        bArr[i11] = (byte) (literalIndex >> 8);
        int i13 = i11 + 2;
        this.contentsOffset = i13;
        bArr[i12] = (byte) literalIndex;
        if (!(annotation instanceof NormalAnnotation)) {
            if (!(annotation instanceof SingleMemberAnnotation)) {
                int i14 = i11 + 3;
                this.contentsOffset = i14;
                bArr[i13] = 0;
                this.contentsOffset = i11 + 4;
                bArr[i14] = 0;
                return;
            }
            SingleMemberAnnotation singleMemberAnnotation = (SingleMemberAnnotation) annotation;
            int i15 = i11 + 3;
            this.contentsOffset = i15;
            bArr[i13] = 0;
            this.contentsOffset = i11 + 4;
            bArr[i15] = 1;
            if (i11 + 6 >= bArr.length) {
                resizeContents(2);
            }
            int literalIndex2 = this.constantPool.literalIndex(TypeConstants.VALUE);
            byte[] bArr2 = this.contents;
            int i16 = this.contentsOffset;
            int i17 = i16 + 1;
            this.contentsOffset = i17;
            bArr2[i16] = (byte) (literalIndex2 >> 8);
            this.contentsOffset = i16 + 2;
            bArr2[i17] = (byte) literalIndex2;
            MethodBinding methodBinding = singleMemberAnnotation.memberValuePairs()[0].binding;
            if (methodBinding == null) {
                this.contentsOffset = i10;
                return;
            }
            int i18 = this.contentsOffset;
            try {
                generateElementValue(singleMemberAnnotation.memberValue, methodBinding.returnType, i18);
                if (this.contentsOffset == i18) {
                    this.contentsOffset = i10;
                    return;
                }
                return;
            } catch (ClassCastException unused) {
                this.contentsOffset = i10;
                return;
            } catch (ShouldNotImplement unused2) {
                this.contentsOffset = i10;
                return;
            }
        }
        MemberValuePair[] memberValuePairArr = ((NormalAnnotation) annotation).memberValuePairs;
        if (memberValuePairArr == null) {
            int i19 = i11 + 3;
            this.contentsOffset = i19;
            bArr[i13] = 0;
            this.contentsOffset = i11 + 4;
            bArr[i19] = 0;
            return;
        }
        int i20 = i11 + 4;
        this.contentsOffset = i20;
        int i21 = 0;
        for (MemberValuePair memberValuePair : memberValuePairArr) {
            if (this.contentsOffset + 2 >= this.contents.length) {
                resizeContents(2);
            }
            int literalIndex3 = this.constantPool.literalIndex(memberValuePair.name);
            byte[] bArr3 = this.contents;
            int i22 = this.contentsOffset;
            int i23 = i22 + 1;
            this.contentsOffset = i23;
            bArr3[i22] = (byte) (literalIndex3 >> 8);
            this.contentsOffset = i22 + 2;
            bArr3[i23] = (byte) literalIndex3;
            MethodBinding methodBinding2 = memberValuePair.binding;
            if (methodBinding2 == null) {
                this.contentsOffset = i20;
            } else {
                try {
                    generateElementValue(memberValuePair.value, methodBinding2.returnType, i13);
                    int i24 = this.contentsOffset;
                    if (i24 == i13) {
                        byte[] bArr4 = this.contents;
                        int i25 = i24 + 1;
                        this.contentsOffset = i25;
                        bArr4[i24] = 0;
                        this.contentsOffset = i24 + 2;
                        bArr4[i25] = 0;
                        break;
                    }
                    i21++;
                    i20 = i24;
                } catch (ClassCastException unused3) {
                    this.contentsOffset = i20;
                } catch (ShouldNotImplement unused4) {
                    this.contentsOffset = i20;
                }
            }
        }
        byte[] bArr5 = this.contents;
        bArr5[i13] = (byte) (i21 >> 8);
        bArr5[i11 + 3] = (byte) i21;
    }

    private int generateAnnotationDefaultAttribute(AnnotationMethodDeclaration annotationMethodDeclaration, int i10) {
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.AnnotationDefaultName);
        if (this.contentsOffset + 6 >= this.contents.length) {
            resizeContents(6);
        }
        byte[] bArr = this.contents;
        int i11 = this.contentsOffset;
        int i12 = i11 + 1;
        this.contentsOffset = i12;
        bArr[i11] = (byte) (literalIndex >> 8);
        int i13 = i11 + 2;
        this.contentsOffset = i13;
        bArr[i12] = (byte) literalIndex;
        this.contentsOffset = i11 + 6;
        generateElementValue(annotationMethodDeclaration.defaultValue, annotationMethodDeclaration.binding.returnType, i10);
        int i14 = this.contentsOffset;
        if (i14 == i10) {
            return 0;
        }
        int i15 = (i14 - i13) - 4;
        byte[] bArr2 = this.contents;
        bArr2[i13] = (byte) (i15 >> 24);
        bArr2[i11 + 3] = (byte) (i15 >> 16);
        bArr2[i11 + 4] = (byte) (i15 >> 8);
        bArr2[i11 + 5] = (byte) i15;
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0094, code lost:
    
        if (r3 == null) goto L20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int generateBootstrapMethods(List list) {
        TypeBinding[] typeBindingArr;
        FunctionalExpression functionalExpression;
        ReferenceBinding referenceBinding;
        MethodBinding[] methodBindingArr;
        TypeBinding[] typeBindingArr2;
        FunctionalExpression functionalExpression2;
        ReferenceBinding javaLangInvokeMethodHandlesLookup = this.referenceBinding.scope.getJavaLangInvokeMethodHandlesLookup();
        byte b10 = 0;
        if (javaLangInvokeMethodHandlesLookup == null) {
            return 0;
        }
        recordInnerClasses(javaLangInvokeMethodHandlesLookup);
        ReferenceBinding javaLangInvokeLambdaMetafactory = this.referenceBinding.scope.getJavaLangInvokeLambdaMetafactory();
        int size = list.size();
        int i10 = this.contentsOffset;
        int i11 = (size * 10) + 8;
        if (i11 + i10 >= this.contents.length) {
            resizeContents(i11);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.BootstrapMethodsName);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        int i12 = i10 + 2;
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 6] = (byte) (size >> 8);
        bArr[i10 + 7] = (byte) size;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = i10 + 8;
        while (i13 < size) {
            FunctionalExpression functionalExpression3 = (FunctionalExpression) list.get(i13);
            MethodBinding[] requiredBridges = functionalExpression3.getRequiredBridges();
            if (functionalExpression3 instanceof LambdaExpression) {
                typeBindingArr = ((LambdaExpression) functionalExpression3).getMarkerInterfaces();
            } else {
                typeBindingArr = null;
            }
            if (requiredBridges == null && !functionalExpression3.isSerializable) {
                if (i16 + 10 >= this.contents.length) {
                    resizeContents(10);
                }
                if (i14 == 0) {
                    functionalExpression = functionalExpression3;
                    i14 = this.constantPool.literalIndexForMethodHandle(6, javaLangInvokeLambdaMetafactory, ConstantPool.METAFACTORY, ConstantPool.JAVA_LANG_INVOKE_LAMBDAMETAFACTORY_METAFACTORY_SIGNATURE, false);
                } else {
                    functionalExpression = functionalExpression3;
                }
                byte[] bArr2 = this.contents;
                bArr2[i16] = (byte) (i14 >> 8);
                bArr2[i16 + 1] = (byte) i14;
                bArr2[i16 + 2] = b10;
                bArr2[i16 + 3] = 3;
                FunctionalExpression functionalExpression4 = functionalExpression;
                int literalIndexForMethodType = this.constantPool.literalIndexForMethodType(functionalExpression4.descriptor.original().signature());
                byte[] bArr3 = this.contents;
                bArr3[i16 + 4] = (byte) (literalIndexForMethodType >> 8);
                int i17 = i16 + 6;
                bArr3[i16 + 5] = (byte) literalIndexForMethodType;
                ConstantPool constantPool = this.constantPool;
                MethodBinding methodBinding = functionalExpression4.binding;
                if (!(methodBinding instanceof PolymorphicMethodBinding)) {
                    methodBinding = methodBinding.original();
                }
                int literalIndexForMethodHandle = constantPool.literalIndexForMethodHandle(methodBinding);
                byte[] bArr4 = this.contents;
                bArr4[i17] = (byte) (literalIndexForMethodHandle >> 8);
                bArr4[i16 + 7] = (byte) literalIndexForMethodHandle;
                int literalIndexForMethodType2 = this.constantPool.literalIndexForMethodType(functionalExpression4.descriptor.signature());
                byte[] bArr5 = this.contents;
                int i18 = i16 + 9;
                bArr5[i16 + 8] = (byte) (literalIndexForMethodType2 >> 8);
                i16 += 10;
                bArr5[i18] = (byte) literalIndexForMethodType2;
                referenceBinding = javaLangInvokeLambdaMetafactory;
                i13++;
                javaLangInvokeLambdaMetafactory = referenceBinding;
                b10 = 0;
            }
            TypeBinding[] typeBindingArr3 = typeBindingArr;
            int length = typeBindingArr3 != null ? (typeBindingArr3.length * 2) + 4 : 2;
            if (requiredBridges != null) {
                length += (requiredBridges.length * 2) + 2;
            }
            int i19 = length + 10;
            if (i19 + i16 >= this.contents.length) {
                resizeContents(i19);
            }
            if (i15 == 0) {
                methodBindingArr = requiredBridges;
                typeBindingArr2 = typeBindingArr3;
                i15 = this.constantPool.literalIndexForMethodHandle(6, javaLangInvokeLambdaMetafactory, ConstantPool.ALTMETAFACTORY, ConstantPool.JAVA_LANG_INVOKE_LAMBDAMETAFACTORY_ALTMETAFACTORY_SIGNATURE, false);
                functionalExpression2 = functionalExpression3;
            } else {
                methodBindingArr = requiredBridges;
                typeBindingArr2 = typeBindingArr3;
                functionalExpression2 = functionalExpression3;
            }
            byte[] bArr6 = this.contents;
            bArr6[i16] = (byte) (i15 >> 8);
            bArr6[i16 + 1] = (byte) i15;
            int i20 = i16 + 3;
            bArr6[i16 + 2] = 0;
            int i21 = i16 + 4;
            MethodBinding[] methodBindingArr2 = methodBindingArr;
            referenceBinding = javaLangInvokeLambdaMetafactory;
            bArr6[i20] = (byte) ((typeBindingArr2 == null ? 0 : typeBindingArr2.length + 1) + 4 + (methodBindingArr2 == null ? 0 : methodBindingArr2.length + 1));
            int literalIndexForMethodType3 = this.constantPool.literalIndexForMethodType(functionalExpression2.descriptor.original().signature());
            byte[] bArr7 = this.contents;
            bArr7[i21] = (byte) (literalIndexForMethodType3 >> 8);
            bArr7[i16 + 5] = (byte) literalIndexForMethodType3;
            int literalIndexForMethodHandle2 = this.constantPool.literalIndexForMethodHandle(functionalExpression2.binding.original());
            byte[] bArr8 = this.contents;
            bArr8[i16 + 6] = (byte) (literalIndexForMethodHandle2 >> 8);
            bArr8[i16 + 7] = (byte) literalIndexForMethodHandle2;
            int literalIndexForMethodType4 = this.constantPool.literalIndexForMethodType(functionalExpression2.descriptor.signature());
            byte[] bArr9 = this.contents;
            bArr9[i16 + 8] = (byte) (literalIndexForMethodType4 >> 8);
            int i22 = i16 + 10;
            bArr9[i16 + 9] = (byte) literalIndexForMethodType4;
            boolean z10 = functionalExpression2.isSerializable;
            int i23 = z10;
            if (typeBindingArr2 != null) {
                i23 = (z10 ? 1 : 0) | 2;
            }
            if (methodBindingArr2 != null) {
                i23 = (i23 == true ? 1 : 0) | 4;
            }
            int literalIndex2 = this.constantPool.literalIndex(i23);
            byte[] bArr10 = this.contents;
            bArr10[i22] = (byte) (literalIndex2 >> 8);
            int i24 = i16 + 12;
            bArr10[i16 + 11] = (byte) literalIndex2;
            if (typeBindingArr2 != null) {
                int literalIndex3 = this.constantPool.literalIndex(typeBindingArr2.length);
                byte[] bArr11 = this.contents;
                bArr11[i24] = (byte) (literalIndex3 >> 8);
                bArr11[i16 + 13] = (byte) literalIndex3;
                i24 = i16 + 14;
                for (TypeBinding typeBinding : typeBindingArr2) {
                    int literalIndexForType = this.constantPool.literalIndexForType(typeBinding);
                    byte[] bArr12 = this.contents;
                    int i25 = i24 + 1;
                    bArr12[i24] = (byte) (literalIndexForType >> 8);
                    i24 += 2;
                    bArr12[i25] = (byte) literalIndexForType;
                }
            }
            if (methodBindingArr2 != null) {
                int literalIndex4 = this.constantPool.literalIndex(methodBindingArr2.length);
                byte[] bArr13 = this.contents;
                int i26 = i24 + 1;
                bArr13[i24] = (byte) (literalIndex4 >> 8);
                i24 += 2;
                bArr13[i26] = (byte) literalIndex4;
                for (MethodBinding methodBinding2 : methodBindingArr2) {
                    int literalIndexForMethodType5 = this.constantPool.literalIndexForMethodType(methodBinding2.signature());
                    byte[] bArr14 = this.contents;
                    int i27 = i24 + 1;
                    bArr14[i24] = (byte) (literalIndexForMethodType5 >> 8);
                    i24 += 2;
                    bArr14[i27] = (byte) literalIndexForMethodType5;
                }
            }
            i16 = i24;
            i13++;
            javaLangInvokeLambdaMetafactory = referenceBinding;
            b10 = 0;
        }
        int i28 = (i16 - i12) - 4;
        byte[] bArr15 = this.contents;
        bArr15[i12] = (byte) (i28 >> 24);
        bArr15[i10 + 3] = (byte) (i28 >> 16);
        bArr15[i10 + 4] = (byte) (i28 >> 8);
        bArr15[i10 + 5] = (byte) i28;
        this.contentsOffset = i16;
        return 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int generateConstantValueAttribute(Constant constant, FieldBinding fieldBinding, int i10) {
        int i11 = this.contentsOffset;
        if (i11 + 8 >= this.contents.length) {
            resizeContents(8);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.ConstantValueName);
        byte[] bArr = this.contents;
        bArr[i11] = (byte) (literalIndex >> 8);
        bArr[i11 + 1] = (byte) literalIndex;
        int i12 = 0;
        bArr[i11 + 2] = 0;
        bArr[i11 + 3] = 0;
        bArr[i11 + 4] = 0;
        int i13 = i11 + 6;
        bArr[i11 + 5] = 2;
        switch (constant.typeID()) {
            case 2:
            case 3:
            case 4:
            case 10:
                int literalIndex2 = this.constantPool.literalIndex(constant.intValue());
                byte[] bArr2 = this.contents;
                bArr2[i13] = (byte) (literalIndex2 >> 8);
                i13 = i11 + 8;
                bArr2[i11 + 7] = (byte) literalIndex2;
                i12 = 1;
                break;
            case 5:
                int literalIndex3 = this.constantPool.literalIndex(constant.booleanValue() ? 1 : 0);
                byte[] bArr3 = this.contents;
                bArr3[i13] = (byte) (literalIndex3 >> 8);
                i13 = i11 + 8;
                bArr3[i11 + 7] = (byte) literalIndex3;
                i12 = 1;
                break;
            case 6:
            default:
                i12 = 1;
                break;
            case 7:
                int literalIndex4 = this.constantPool.literalIndex(constant.longValue());
                byte[] bArr4 = this.contents;
                bArr4[i13] = (byte) (literalIndex4 >> 8);
                i13 = i11 + 8;
                bArr4[i11 + 7] = (byte) literalIndex4;
                i12 = 1;
                break;
            case 8:
                int literalIndex5 = this.constantPool.literalIndex(constant.doubleValue());
                byte[] bArr5 = this.contents;
                bArr5[i13] = (byte) (literalIndex5 >> 8);
                i13 = i11 + 8;
                bArr5[i11 + 7] = (byte) literalIndex5;
                i12 = 1;
                break;
            case 9:
                int literalIndex6 = this.constantPool.literalIndex(constant.floatValue());
                byte[] bArr6 = this.contents;
                bArr6[i13] = (byte) (literalIndex6 >> 8);
                i13 = i11 + 8;
                bArr6[i11 + 7] = (byte) literalIndex6;
                i12 = 1;
                break;
            case 11:
                int literalIndex7 = this.constantPool.literalIndex(((StringConstant) constant).stringValue());
                if (literalIndex7 != -1) {
                    byte[] bArr7 = this.contents;
                    bArr7[i13] = (byte) (literalIndex7 >> 8);
                    i13 = i11 + 8;
                    bArr7[i11 + 7] = (byte) literalIndex7;
                } else if (this.creatingProblemType) {
                    this.contentsOffset = i10;
                    break;
                } else {
                    TypeDeclaration typeDeclaration = this.referenceBinding.scope.referenceContext;
                    FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
                    int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                    while (i12 < length) {
                        if (fieldDeclarationArr[i12].binding == fieldBinding) {
                            typeDeclaration.scope.problemReporter().stringConstantIsExceedingUtf8Limit(fieldDeclarationArr[i12]);
                        }
                        i12++;
                    }
                }
                i12 = 1;
                break;
        }
        this.contentsOffset = i13;
        return i12;
    }

    private int generateDeprecatedAttribute() {
        int i10 = this.contentsOffset;
        if (i10 + 6 >= this.contents.length) {
            resizeContents(6);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.DeprecatedName);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        bArr[i10 + 4] = 0;
        bArr[i10 + 5] = 0;
        this.contentsOffset = i10 + 6;
        return 1;
    }

    private void generateElementValue(Expression expression, TypeBinding typeBinding, int i10) {
        Constant constant = expression.constant;
        TypeBinding typeBinding2 = expression.resolvedType;
        if (typeBinding2 == null) {
            this.contentsOffset = i10;
            return;
        }
        if (typeBinding2.isMemberType()) {
            recordInnerClasses(typeBinding2);
        }
        if (typeBinding.isMemberType()) {
            recordInnerClasses(typeBinding);
        }
        if (typeBinding.isArrayType() && !typeBinding2.isArrayType()) {
            if (this.contentsOffset + 3 >= this.contents.length) {
                resizeContents(3);
            }
            byte[] bArr = this.contents;
            int i11 = this.contentsOffset;
            int i12 = i11 + 1;
            this.contentsOffset = i12;
            bArr[i11] = 91;
            int i13 = i11 + 2;
            this.contentsOffset = i13;
            bArr[i12] = 0;
            this.contentsOffset = i11 + 3;
            bArr[i13] = 1;
        }
        if (constant != null && constant != Constant.NotAConstant) {
            generateElementValue(i10, expression, constant, typeBinding.leafComponentType());
        } else {
            generateElementValueForNonConstantExpression(expression, i10, typeBinding2);
        }
    }

    private void generateElementValueForNonConstantExpression(Expression expression, int i10, TypeBinding typeBinding) {
        FieldBinding fieldBinding;
        if (typeBinding == null) {
            this.contentsOffset = i10;
            return;
        }
        if (typeBinding.isEnum()) {
            if (this.contentsOffset + 5 >= this.contents.length) {
                resizeContents(5);
            }
            byte[] bArr = this.contents;
            int i11 = this.contentsOffset;
            this.contentsOffset = i11 + 1;
            bArr[i11] = 101;
            if (expression instanceof QualifiedNameReference) {
                fieldBinding = (FieldBinding) ((QualifiedNameReference) expression).binding;
            } else if (expression instanceof SingleNameReference) {
                fieldBinding = (FieldBinding) ((SingleNameReference) expression).binding;
            } else {
                this.contentsOffset = i10;
                fieldBinding = null;
            }
            if (fieldBinding != null) {
                int literalIndex = this.constantPool.literalIndex(fieldBinding.type.signature());
                int literalIndex2 = this.constantPool.literalIndex(fieldBinding.name);
                byte[] bArr2 = this.contents;
                int i12 = this.contentsOffset;
                int i13 = i12 + 1;
                this.contentsOffset = i13;
                bArr2[i12] = (byte) (literalIndex >> 8);
                int i14 = i12 + 2;
                this.contentsOffset = i14;
                bArr2[i13] = (byte) literalIndex;
                int i15 = i12 + 3;
                this.contentsOffset = i15;
                bArr2[i14] = (byte) (literalIndex2 >> 8);
                this.contentsOffset = i12 + 4;
                bArr2[i15] = (byte) literalIndex2;
                return;
            }
            return;
        }
        if (typeBinding.isAnnotationType()) {
            if (this.contentsOffset + 1 >= this.contents.length) {
                resizeContents(1);
            }
            byte[] bArr3 = this.contents;
            int i16 = this.contentsOffset;
            this.contentsOffset = i16 + 1;
            bArr3[i16] = 64;
            generateAnnotation((Annotation) expression, i10);
            return;
        }
        if (!typeBinding.isArrayType()) {
            if (this.contentsOffset + 3 >= this.contents.length) {
                resizeContents(3);
            }
            byte[] bArr4 = this.contents;
            int i17 = this.contentsOffset;
            this.contentsOffset = i17 + 1;
            bArr4[i17] = Opcodes.OPC_dadd;
            if (!(expression instanceof ClassLiteralAccess)) {
                this.contentsOffset = i10;
                return;
            }
            int literalIndex3 = this.constantPool.literalIndex(((ClassLiteralAccess) expression).targetType.signature());
            byte[] bArr5 = this.contents;
            int i18 = this.contentsOffset;
            int i19 = i18 + 1;
            this.contentsOffset = i19;
            bArr5[i18] = (byte) (literalIndex3 >> 8);
            this.contentsOffset = i18 + 2;
            bArr5[i19] = (byte) literalIndex3;
            return;
        }
        if (this.contentsOffset + 3 >= this.contents.length) {
            resizeContents(3);
        }
        byte[] bArr6 = this.contents;
        int i20 = this.contentsOffset;
        int i21 = i20 + 1;
        this.contentsOffset = i21;
        bArr6[i20] = 91;
        if (!(expression instanceof ArrayInitializer)) {
            this.contentsOffset = i10;
            return;
        }
        ArrayInitializer arrayInitializer = (ArrayInitializer) expression;
        Expression[] expressionArr = arrayInitializer.expressions;
        int length = expressionArr != null ? expressionArr.length : 0;
        int i22 = i20 + 2;
        this.contentsOffset = i22;
        bArr6[i21] = (byte) (length >> 8);
        this.contentsOffset = i20 + 3;
        bArr6[i22] = (byte) length;
        for (int i23 = 0; i23 < length; i23++) {
            generateElementValue(arrayInitializer.expressions[i23], typeBinding.leafComponentType(), i10);
        }
    }

    private int generateEnclosingMethodAttribute() {
        byte b10;
        MethodBinding methodBinding;
        int i10 = this.contentsOffset;
        if (i10 + 10 >= this.contents.length) {
            resizeContents(10);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.EnclosingMethodName);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        byte b11 = 0;
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        bArr[i10 + 4] = 0;
        bArr[i10 + 5] = 4;
        int literalIndexForType = this.constantPool.literalIndexForType(this.referenceBinding.enclosingType().constantPoolName());
        byte[] bArr2 = this.contents;
        bArr2[i10 + 6] = (byte) (literalIndexForType >> 8);
        int i11 = i10 + 8;
        bArr2[i10 + 7] = (byte) literalIndexForType;
        SourceTypeBinding sourceTypeBinding = this.referenceBinding;
        if (!(sourceTypeBinding instanceof LocalTypeBinding) || (methodBinding = ((LocalTypeBinding) sourceTypeBinding).enclosingMethod) == null) {
            b10 = 0;
        } else {
            int literalIndexForNameAndType = this.constantPool.literalIndexForNameAndType(methodBinding.selector, methodBinding.signature(this));
            b11 = (byte) (literalIndexForNameAndType >> 8);
            b10 = (byte) literalIndexForNameAndType;
        }
        byte[] bArr3 = this.contents;
        bArr3[i11] = b11;
        bArr3[i10 + 9] = b10;
        this.contentsOffset = i10 + 10;
        return 1;
    }

    private int generateExceptionsAttribute(ReferenceBinding[] referenceBindingArr) {
        int i10 = this.contentsOffset;
        int length = referenceBindingArr.length;
        int i11 = length * 2;
        int i12 = i11 + 8;
        if (i12 + i10 >= this.contents.length) {
            resizeContents(i12);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.ExceptionsName);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        int i13 = i11 + 2;
        bArr[i10 + 2] = (byte) (i13 >> 24);
        bArr[i10 + 3] = (byte) (i13 >> 16);
        bArr[i10 + 4] = (byte) (i13 >> 8);
        bArr[i10 + 5] = (byte) i13;
        int i14 = i10 + 7;
        bArr[i10 + 6] = (byte) (length >> 8);
        int i15 = i10 + 8;
        bArr[i14] = (byte) length;
        for (ReferenceBinding referenceBinding : referenceBindingArr) {
            int literalIndexForType = this.constantPool.literalIndexForType(referenceBinding);
            byte[] bArr2 = this.contents;
            int i16 = i15 + 1;
            bArr2[i15] = (byte) (literalIndexForType >> 8);
            i15 += 2;
            bArr2[i16] = (byte) literalIndexForType;
        }
        this.contentsOffset = i15;
        return 1;
    }

    private int generateHierarchyInconsistentAttribute() {
        int i10 = this.contentsOffset;
        if (i10 + 6 >= this.contents.length) {
            resizeContents(6);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.InconsistentHierarchy);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        bArr[i10 + 4] = 0;
        bArr[i10 + 5] = 0;
        this.contentsOffset = i10 + 6;
        return 1;
    }

    private int generateInnerClassAttribute(int i10, ReferenceBinding[] referenceBindingArr) {
        int i11;
        int i12;
        int i13 = this.contentsOffset;
        int i14 = (i10 * 8) + 8;
        if (i14 + i13 >= this.contents.length) {
            resizeContents(i14);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.InnerClassName);
        byte[] bArr = this.contents;
        bArr[i13] = (byte) (literalIndex >> 8);
        bArr[i13 + 1] = (byte) literalIndex;
        int i15 = (i10 << 3) + 2;
        bArr[i13 + 2] = (byte) (i15 >> 24);
        bArr[i13 + 3] = (byte) (i15 >> 16);
        bArr[i13 + 4] = (byte) (i15 >> 8);
        bArr[i13 + 5] = (byte) i15;
        int i16 = i13 + 7;
        bArr[i13 + 6] = (byte) (i10 >> 8);
        int i17 = i13 + 8;
        bArr[i16] = (byte) i10;
        for (int i18 = 0; i18 < i10; i18++) {
            ReferenceBinding referenceBinding = referenceBindingArr[i18];
            int accessFlags = referenceBinding.getAccessFlags();
            int literalIndexForType = this.constantPool.literalIndexForType(referenceBinding.constantPoolName());
            byte[] bArr2 = this.contents;
            bArr2[i17] = (byte) (literalIndexForType >> 8);
            int i19 = i17 + 2;
            bArr2[i17 + 1] = (byte) literalIndexForType;
            if (referenceBinding.isMemberType()) {
                int literalIndexForType2 = this.constantPool.literalIndexForType(referenceBinding.enclosingType().constantPoolName());
                byte[] bArr3 = this.contents;
                int i20 = i17 + 3;
                bArr3[i19] = (byte) (literalIndexForType2 >> 8);
                i11 = i17 + 4;
                bArr3[i20] = (byte) literalIndexForType2;
            } else {
                byte[] bArr4 = this.contents;
                int i21 = i17 + 3;
                bArr4[i19] = 0;
                i11 = i17 + 4;
                bArr4[i21] = 0;
            }
            if (referenceBinding.isAnonymousType()) {
                byte[] bArr5 = this.contents;
                int i22 = i11 + 1;
                bArr5[i11] = 0;
                i12 = i11 + 2;
                bArr5[i22] = 0;
            } else {
                int literalIndex2 = this.constantPool.literalIndex(referenceBinding.sourceName());
                byte[] bArr6 = this.contents;
                int i23 = i11 + 1;
                bArr6[i11] = (byte) (literalIndex2 >> 8);
                i12 = i11 + 2;
                bArr6[i23] = (byte) literalIndex2;
            }
            if (referenceBinding.isAnonymousType()) {
                accessFlags &= -17;
            } else if (referenceBinding.isMemberType() && referenceBinding.isInterface()) {
                accessFlags |= 8;
            }
            byte[] bArr7 = this.contents;
            int i24 = i12 + 1;
            bArr7[i12] = (byte) (accessFlags >> 8);
            i17 = i12 + 2;
            bArr7[i24] = (byte) accessFlags;
        }
        this.contentsOffset = i17;
        return 1;
    }

    private int generateLineNumberAttribute() {
        int i10 = this.contentsOffset;
        CodeStream codeStream = this.codeStream;
        int[] iArr = codeStream.pcToSourceMap;
        int i11 = 0;
        if (iArr != null && codeStream.pcToSourceMapSize != 0) {
            int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.LineNumberTableName);
            if (i10 + 8 >= this.contents.length) {
                resizeContents(8);
            }
            byte[] bArr = this.contents;
            bArr[i10] = (byte) (literalIndex >> 8);
            int i12 = i10 + 2;
            bArr[i10 + 1] = (byte) literalIndex;
            int i13 = i10 + 8;
            int i14 = this.codeStream.pcToSourceMapSize;
            int i15 = 0;
            while (i11 < i14) {
                if (i13 + 4 >= this.contents.length) {
                    resizeContents(4);
                }
                int i16 = i11 + 1;
                int i17 = iArr[i11];
                byte[] bArr2 = this.contents;
                bArr2[i13] = (byte) (i17 >> 8);
                bArr2[i13 + 1] = (byte) i17;
                i11 += 2;
                int i18 = iArr[i16];
                int i19 = i13 + 3;
                bArr2[i13 + 2] = (byte) (i18 >> 8);
                i13 += 4;
                bArr2[i19] = (byte) i18;
                i15++;
            }
            int i20 = (i15 * 4) + 2;
            byte[] bArr3 = this.contents;
            bArr3[i12] = (byte) (i20 >> 24);
            bArr3[i10 + 3] = (byte) (i20 >> 16);
            bArr3[i10 + 4] = (byte) (i20 >> 8);
            bArr3[i10 + 5] = (byte) i20;
            bArr3[i10 + 6] = (byte) (i15 >> 8);
            bArr3[i10 + 7] = (byte) i15;
            i11 = 1;
            i10 = i13;
        }
        this.contentsOffset = i10;
        return i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int generateLocalVariableTableAttribute(int i10, boolean z10, boolean z11) {
        int i11;
        SourceTypeBinding sourceTypeBinding;
        int i12;
        LocalVariableBinding[] localVariableBindingArr;
        int i13;
        int i14;
        int i15;
        SourceTypeBinding sourceTypeBinding2;
        int i16 = i10;
        int i17 = this.contentsOffset;
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.LocalVariableTableName);
        int i18 = ((!z10 ? 1 : 0) * 10) + 8;
        byte b10 = 0;
        int i19 = 0;
        while (true) {
            CodeStream codeStream = this.codeStream;
            if (i19 >= codeStream.allLocalsCounter) {
                break;
            }
            i18 += codeStream.locals[i19].initializationCount * 10;
            i19++;
            i16 = i10;
            b10 = 0;
        }
        if (i17 + i18 >= this.contents.length) {
            resizeContents(i18);
        }
        byte[] bArr = this.contents;
        bArr[i17] = (byte) (literalIndex >> 8);
        int i20 = i17 + 2;
        bArr[i17 + 1] = (byte) literalIndex;
        int i21 = i17 + 8;
        LocalVariableBinding[] localVariableBindingArr2 = null;
        if (z10 || z11) {
            i11 = b10;
            sourceTypeBinding = null;
        } else {
            bArr[i21] = b10;
            bArr[i17 + 9] = b10;
            bArr[i17 + 10] = (byte) (i16 >> 8);
            bArr[i17 + 11] = (byte) i16;
            int literalIndex2 = this.constantPool.literalIndex(ConstantPool.This);
            byte[] bArr2 = this.contents;
            bArr2[i17 + 12] = (byte) (literalIndex2 >> 8);
            int i22 = i17 + 14;
            bArr2[i17 + 13] = (byte) literalIndex2;
            CodeStream codeStream2 = this.codeStream;
            AbstractMethodDeclaration abstractMethodDeclaration = codeStream2.methodDeclaration;
            SourceTypeBinding sourceTypeBinding3 = (SourceTypeBinding) (abstractMethodDeclaration != null ? abstractMethodDeclaration.binding : codeStream2.lambdaExpression.binding).declaringClass;
            int literalIndex3 = this.constantPool.literalIndex(sourceTypeBinding3.signature());
            byte[] bArr3 = this.contents;
            bArr3[i22] = (byte) (literalIndex3 >> 8);
            bArr3[i17 + 15] = (byte) literalIndex3;
            bArr3[i17 + 16] = b10;
            i21 = i17 + 18;
            bArr3[i17 + 17] = b10;
            sourceTypeBinding = sourceTypeBinding3;
            i11 = 1;
        }
        int i23 = this.codeStream.allLocalsCounter;
        int i24 = b10;
        int i25 = i24;
        int i26 = i25;
        while (i25 < i23) {
            LocalVariableBinding localVariableBinding = this.codeStream.locals[i25];
            int i27 = localVariableBinding.initializationCount;
            if (i27 != 0 && localVariableBinding.declaration != null) {
                TypeBinding typeBinding = localVariableBinding.type;
                byte b11 = (typeBinding.isParameterizedType() || typeBinding.isTypeVariable()) ? (byte) 1 : b10;
                if (b11 != 0) {
                    if (localVariableBindingArr2 == null) {
                        localVariableBindingArr2 = new LocalVariableBinding[i23];
                    }
                    localVariableBindingArr2[i24] = localVariableBinding;
                    i13 = i24 + 1;
                    localVariableBindingArr = localVariableBindingArr2;
                } else {
                    localVariableBindingArr = localVariableBindingArr2;
                    i13 = i24;
                }
                int i28 = b10;
                while (i28 < i27) {
                    int[] iArr = localVariableBinding.initializationPCs;
                    int i29 = i28 << 1;
                    int i30 = iArr[i29];
                    int i31 = iArr[i29 + 1];
                    if (i30 != i31) {
                        if (i31 == -1) {
                            i14 = i17;
                            i15 = i20;
                            sourceTypeBinding2 = sourceTypeBinding;
                            localVariableBinding.declaringScope.problemReporter().abortDueToInternalError(Messages.bind(Messages.abort_invalidAttribute, new String(localVariableBinding.name)), (ASTNode) localVariableBinding.declaringScope.methodScope().referenceContext);
                        } else {
                            i14 = i17;
                            i15 = i20;
                            sourceTypeBinding2 = sourceTypeBinding;
                        }
                        if (b11 != 0) {
                            i26++;
                        }
                        i11++;
                        byte[] bArr4 = this.contents;
                        bArr4[i21] = (byte) (i30 >> 8);
                        bArr4[i21 + 1] = (byte) i30;
                        int i32 = i31 - i30;
                        bArr4[i21 + 2] = (byte) (i32 >> 8);
                        bArr4[i21 + 3] = (byte) i32;
                        int literalIndex4 = this.constantPool.literalIndex(localVariableBinding.name);
                        byte[] bArr5 = this.contents;
                        bArr5[i21 + 4] = (byte) (literalIndex4 >> 8);
                        bArr5[i21 + 5] = (byte) literalIndex4;
                        int literalIndex5 = this.constantPool.literalIndex(typeBinding.signature());
                        byte[] bArr6 = this.contents;
                        bArr6[i21 + 6] = (byte) (literalIndex5 >> 8);
                        bArr6[i21 + 7] = (byte) literalIndex5;
                        int i33 = localVariableBinding.resolvedPosition;
                        int i34 = i21 + 9;
                        bArr6[i21 + 8] = (byte) (i33 >> 8);
                        i21 += 10;
                        bArr6[i34] = (byte) i33;
                    } else {
                        i14 = i17;
                        i15 = i20;
                        sourceTypeBinding2 = sourceTypeBinding;
                    }
                    i28++;
                    i16 = i10;
                    i17 = i14;
                    i20 = i15;
                    sourceTypeBinding = sourceTypeBinding2;
                    b10 = 0;
                }
                localVariableBindingArr2 = localVariableBindingArr;
                i24 = i13;
            }
            i25++;
        }
        int i35 = (i11 * 10) + 2;
        byte[] bArr7 = this.contents;
        bArr7[i20] = (byte) (i35 >> 24);
        bArr7[i17 + 3] = (byte) (i35 >> 16);
        bArr7[i17 + 4] = (byte) (i35 >> 8);
        bArr7[i17 + 5] = (byte) i35;
        bArr7[i17 + 6] = (byte) (i11 >> 8);
        bArr7[i17 + 7] = (byte) i11;
        byte b12 = (z10 || sourceTypeBinding == null || sourceTypeBinding.typeVariables == Binding.NO_TYPE_VARIABLES) ? b10 : (byte) 1;
        if (i24 == 0 && b12 == 0) {
            i12 = 1;
        } else {
            int i36 = i26 + b12;
            int i37 = i36 * 10;
            int i38 = i37 + 8;
            if (i21 + i38 >= bArr7.length) {
                resizeContents(i38);
            }
            int literalIndex6 = this.constantPool.literalIndex(AttributeNamesConstants.LocalVariableTypeTableName);
            byte[] bArr8 = this.contents;
            bArr8[i21] = (byte) (literalIndex6 >> 8);
            bArr8[i21 + 1] = (byte) literalIndex6;
            int i39 = i37 + 2;
            bArr8[i21 + 2] = (byte) (i39 >> 24);
            bArr8[i21 + 3] = (byte) (i39 >> 16);
            bArr8[i21 + 4] = (byte) (i39 >> 8);
            bArr8[i21 + 5] = (byte) i39;
            bArr8[i21 + 6] = (byte) (i36 >> 8);
            int i40 = i21 + 8;
            bArr8[i21 + 7] = (byte) i36;
            if (b12 != 0) {
                bArr8[i40] = b10;
                bArr8[i21 + 9] = b10;
                bArr8[i21 + 10] = (byte) (i16 >> 8);
                bArr8[i21 + 11] = (byte) i16;
                int literalIndex7 = this.constantPool.literalIndex(ConstantPool.This);
                byte[] bArr9 = this.contents;
                bArr9[i21 + 12] = (byte) (literalIndex7 >> 8);
                bArr9[i21 + 13] = (byte) literalIndex7;
                int literalIndex8 = this.constantPool.literalIndex(sourceTypeBinding.genericTypeSignature());
                byte[] bArr10 = this.contents;
                bArr10[i21 + 14] = (byte) (literalIndex8 >> 8);
                bArr10[i21 + 15] = (byte) literalIndex8;
                bArr10[i21 + 16] = b10;
                i40 = i21 + 18;
                bArr10[i21 + 17] = b10;
            }
            i21 = i40;
            for (int i41 = b10; i41 < i24; i41++) {
                LocalVariableBinding localVariableBinding2 = localVariableBindingArr2[i41];
                for (int i42 = b10; i42 < localVariableBinding2.initializationCount; i42++) {
                    int[] iArr2 = localVariableBinding2.initializationPCs;
                    int i43 = i42 << 1;
                    int i44 = iArr2[i43];
                    int i45 = iArr2[i43 + 1];
                    if (i44 != i45) {
                        byte[] bArr11 = this.contents;
                        bArr11[i21] = (byte) (i44 >> 8);
                        bArr11[i21 + 1] = (byte) i44;
                        int i46 = i45 - i44;
                        bArr11[i21 + 2] = (byte) (i46 >> 8);
                        bArr11[i21 + 3] = (byte) i46;
                        int literalIndex9 = this.constantPool.literalIndex(localVariableBinding2.name);
                        byte[] bArr12 = this.contents;
                        bArr12[i21 + 4] = (byte) (literalIndex9 >> 8);
                        bArr12[i21 + 5] = (byte) literalIndex9;
                        int literalIndex10 = this.constantPool.literalIndex(localVariableBinding2.type.genericTypeSignature());
                        byte[] bArr13 = this.contents;
                        bArr13[i21 + 6] = (byte) (literalIndex10 >> 8);
                        bArr13[i21 + 7] = (byte) literalIndex10;
                        int i47 = localVariableBinding2.resolvedPosition;
                        int i48 = i21 + 9;
                        bArr13[i21 + 8] = (byte) (i47 >> 8);
                        i21 += 10;
                        bArr13[i48] = (byte) i47;
                    }
                }
            }
            i12 = 2;
        }
        this.contentsOffset = i21;
        return i12;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0190 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int generateMethodParameters(MethodBinding methodBinding) {
        int i10;
        boolean z10;
        Argument[] argumentArr;
        Argument argument;
        if (methodBinding.sourceLambda() != null) {
            return 0;
        }
        int i11 = this.contentsOffset;
        AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
        boolean isConstructor = methodBinding.isConstructor();
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        ReferenceBinding referenceBinding = methodBinding.declaringClass;
        int i12 = 4096;
        if (referenceBinding.isEnum()) {
            if (isConstructor) {
                i10 = writeArgumentName(ConstantPool.EnumOrdinal, 4096, writeArgumentName(ConstantPool.EnumName, 4096, 0));
            } else if ((methodBinding instanceof SyntheticMethodBinding) && CharOperation.equals(ConstantPool.ValueOf, methodBinding.selector)) {
                i10 = writeArgumentName(ConstantPool.Name, 32768, 0);
                typeBindingArr = Binding.NO_PARAMETERS;
            }
            z10 = !isConstructor && referenceBinding.isNestedType();
            if (z10) {
                boolean z11 = referenceBinding.isAnonymousType() && referenceBinding.superclass().isLocalType();
                boolean z12 = referenceBinding.isAnonymousType() && referenceBinding.superclass().isNestedType();
                boolean z13 = (!referenceBinding.isPrivate() || referenceBinding.isAnonymousType()) && !z11;
                ReferenceBinding[] syntheticEnclosingInstanceTypes = referenceBinding.syntheticEnclosingInstanceTypes();
                if (syntheticEnclosingInstanceTypes != null) {
                    int length = syntheticEnclosingInstanceTypes.length;
                    int i13 = 0;
                    while (i13 < length) {
                        i10 = writeArgumentName(CharOperation.concat(TypeConstants.SYNTHETIC_ENCLOSING_INSTANCE_PREFIX, String.valueOf(i13).toCharArray()), (((z12 ? referenceBinding.superclass().enclosingType().equals(syntheticEnclosingInstanceTypes[i13]) : true) && z13) ? 32768 : i12) | 16, i10);
                        i13++;
                        i12 = 4096;
                    }
                }
                if (methodBinding instanceof SyntheticMethodBinding) {
                    MethodBinding methodBinding2 = ((SyntheticMethodBinding) methodBinding).targetMethod;
                    typeBindingArr = methodBinding2.parameters;
                    sourceMethod = methodBinding2.sourceMethod();
                }
            }
            if (typeBindingArr != Binding.NO_PARAMETERS) {
                if (sourceMethod == null || (argumentArr = sourceMethod.arguments) == null) {
                    argumentArr = null;
                }
                int length2 = typeBindingArr.length;
                int length3 = argumentArr != null ? argumentArr.length : 0;
                int i14 = 0;
                while (i14 < length2) {
                    i10 = (length3 <= i14 || (argument = argumentArr[i14]) == null) ? writeArgumentName(null, 4096, i10) : writeArgumentName(argument.name, argument.binding.modifiers, i10);
                    i14++;
                }
            }
            if (z10) {
                SyntheticArgumentBinding[] syntheticOuterLocalVariables = referenceBinding.syntheticOuterLocalVariables();
                int length4 = syntheticOuterLocalVariables == null ? 0 : syntheticOuterLocalVariables.length;
                for (int i15 = 0; i15 < length4; i15++) {
                    SyntheticArgumentBinding syntheticArgumentBinding = syntheticOuterLocalVariables[i15];
                    i10 = writeArgumentName(syntheticArgumentBinding.name, syntheticArgumentBinding.modifiers | 4096, i10);
                }
                int length5 = methodBinding.parameters.length;
                for (int length6 = typeBindingArr.length; length6 < length5; length6++) {
                    i10 = writeArgumentName(methodBinding.parameters[length6].constantPoolName(), 4096, i10);
                }
            }
            if (i10 > 0) {
                return 0;
            }
            int i16 = i10 * 4;
            int i17 = i16 + 1;
            if (this.contentsOffset + 6 + i17 >= this.contents.length) {
                resizeContents(i16 + 7);
            }
            int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.MethodParametersName);
            byte[] bArr = this.contents;
            bArr[i11] = (byte) (literalIndex >> 8);
            bArr[i11 + 1] = (byte) literalIndex;
            bArr[i11 + 2] = (byte) (i17 >> 24);
            bArr[i11 + 3] = (byte) (i17 >> 16);
            bArr[i11 + 4] = (byte) (i17 >> 8);
            bArr[i11 + 5] = (byte) i17;
            bArr[i11 + 6] = (byte) i10;
            return 1;
        }
        i10 = 0;
        if (isConstructor) {
        }
        if (z10) {
        }
        if (typeBindingArr != Binding.NO_PARAMETERS) {
        }
        if (z10) {
        }
        if (i10 > 0) {
        }
    }

    private void generateMissingTypesAttribute() {
        int size = this.missingTypes.size();
        int[] iArr = new int[size];
        if (size > 1) {
            Collections.sort(this.missingTypes, new Comparator() {
                @Override
                public int compare(Object obj, Object obj2) {
                    return CharOperation.compareTo(((TypeBinding) obj).constantPoolName(), ((TypeBinding) obj2).constantPoolName());
                }
            });
        }
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            int literalIndexForType = this.constantPool.literalIndexForType(this.missingTypes.get(i12));
            if (i10 != literalIndexForType) {
                iArr[i11] = literalIndexForType;
                i11++;
                i10 = literalIndexForType;
            }
        }
        int i13 = i11 * 2;
        int i14 = i13 + 2;
        if (this.contentsOffset + i14 + 6 >= this.contents.length) {
            resizeContents(i13 + 8);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.MissingTypesName);
        byte[] bArr = this.contents;
        int i15 = this.contentsOffset;
        int i16 = i15 + 1;
        this.contentsOffset = i16;
        bArr[i15] = (byte) (literalIndex >> 8);
        int i17 = i15 + 2;
        this.contentsOffset = i17;
        bArr[i16] = (byte) literalIndex;
        int i18 = i15 + 3;
        this.contentsOffset = i18;
        bArr[i17] = (byte) (i14 >> 24);
        int i19 = i15 + 4;
        this.contentsOffset = i19;
        bArr[i18] = (byte) (i14 >> 16);
        int i20 = i15 + 5;
        this.contentsOffset = i20;
        bArr[i19] = (byte) (i14 >> 8);
        int i21 = i15 + 6;
        this.contentsOffset = i21;
        bArr[i20] = (byte) i14;
        int i22 = i15 + 7;
        this.contentsOffset = i22;
        bArr[i21] = (byte) (i11 >> 8);
        this.contentsOffset = i15 + 8;
        bArr[i22] = (byte) i11;
        for (int i23 = 0; i23 < i11; i23++) {
            int i24 = iArr[i23];
            byte[] bArr2 = this.contents;
            int i25 = this.contentsOffset;
            int i26 = i25 + 1;
            this.contentsOffset = i26;
            bArr2[i25] = (byte) (i24 >> 8);
            this.contentsOffset = i25 + 2;
            bArr2[i26] = (byte) i24;
        }
    }

    private int generateModuleAttribute(ModuleDeclaration moduleDeclaration) {
        char c10;
        char c11;
        ClassFile classFile = this;
        SourceModuleBinding sourceModuleBinding = moduleDeclaration.binding;
        int i10 = classFile.contentsOffset;
        if (i10 + 10 >= classFile.contents.length) {
            classFile.resizeContents(10);
        }
        int literalIndex = classFile.constantPool.literalIndex(AttributeNamesConstants.ModuleName);
        byte[] bArr = classFile.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        int i11 = i10 + 2;
        bArr[i10 + 1] = (byte) literalIndex;
        int literalIndexForModule = classFile.constantPool.literalIndexForModule(sourceModuleBinding.moduleName);
        byte[] bArr2 = classFile.contents;
        bArr2[i10 + 6] = (byte) (literalIndexForModule >> 8);
        bArr2[i10 + 7] = (byte) literalIndexForModule;
        int i12 = moduleDeclaration.modifiers & (-32769);
        bArr2[i10 + 8] = (byte) (i12 >> 8);
        bArr2[i10 + 9] = (byte) i12;
        int i13 = 0;
        byte b10 = (byte) 0;
        bArr2[i10 + 10] = b10;
        int i14 = i10 + 12;
        byte b11 = (byte) 0;
        bArr2[i10 + 11] = b11;
        int i15 = moduleDeclaration.requiresCount;
        int i16 = (i15 * 6) + 2;
        if (i14 + i16 >= bArr2.length) {
            classFile.resizeContents(i16);
        }
        int i17 = i10 + 14;
        ModuleBinding moduleBinding = null;
        int i18 = 0;
        while (i18 < moduleDeclaration.requiresCount) {
            RequiresStatement requiresStatement = moduleDeclaration.requires[i18];
            ModuleBinding moduleBinding2 = requiresStatement.resolvedBinding;
            if (CharOperation.equals(moduleBinding2.moduleName, TypeConstants.JAVA_BASE)) {
                moduleBinding = moduleBinding2;
            }
            int literalIndexForModule2 = classFile.constantPool.literalIndexForModule(moduleBinding2.moduleName);
            byte[] bArr3 = classFile.contents;
            bArr3[i17] = (byte) (literalIndexForModule2 >> 8);
            bArr3[i17 + 1] = (byte) literalIndexForModule2;
            int i19 = requiresStatement.modifiers;
            bArr3[i17 + 2] = (byte) (i19 >> 8);
            bArr3[i17 + 3] = (byte) i19;
            int i20 = i17 + 5;
            bArr3[i17 + 4] = b10;
            i17 += 6;
            bArr3[i20] = b11;
            i18++;
            i13 = 0;
            classFile = this;
        }
        int i21 = 6;
        if (!CharOperation.equals(sourceModuleBinding.moduleName, TypeConstants.JAVA_BASE) && moduleBinding == null) {
            if (i17 + 6 >= classFile.contents.length) {
                classFile.resizeContents(6);
            }
            int literalIndexForModule3 = classFile.constantPool.literalIndexForModule(sourceModuleBinding.environment.javaBaseModule().moduleName);
            byte[] bArr4 = classFile.contents;
            bArr4[i17] = (byte) (literalIndexForModule3 >> 8);
            bArr4[i17 + 1] = (byte) literalIndexForModule3;
            bArr4[i17 + 2] = (byte) 128;
            bArr4[i17 + 3] = (byte) 32768;
            int i22 = i17 + 5;
            bArr4[i17 + 4] = b10;
            i17 += 6;
            bArr4[i22] = b11;
            i15++;
        }
        byte[] bArr5 = classFile.contents;
        bArr5[i14] = (byte) (i15 >> 8);
        bArr5[i10 + 13] = (byte) i15;
        int i23 = (i15 * 6) + 8;
        int i24 = (moduleDeclaration.exportsCount * 6) + 2;
        if (i17 + i24 >= bArr5.length) {
            classFile.resizeContents(i24);
        }
        byte[] bArr6 = classFile.contents;
        int i25 = i17 + 1;
        int i26 = moduleDeclaration.exportsCount;
        bArr6[i17] = (byte) (i26 >> 8);
        int i27 = i17 + 2;
        bArr6[i25] = (byte) i26;
        int i28 = i13;
        while (true) {
            int i29 = moduleDeclaration.exportsCount;
            c10 = '/';
            c11 = '.';
            if (i28 >= i29) {
                break;
            }
            ExportsStatement exportsStatement = moduleDeclaration.exports[i28];
            if (i27 + 6 >= classFile.contents.length) {
                classFile.resizeContents((i29 - i28) * i21);
            }
            int literalIndexForPackage = classFile.constantPool.literalIndexForPackage(CharOperation.replaceOnCopy(exportsStatement.pkgName, '.', '/'));
            byte[] bArr7 = classFile.contents;
            bArr7[i27] = (byte) (literalIndexForPackage >> 8);
            bArr7[i27 + 1] = (byte) literalIndexForPackage;
            bArr7[i27 + 2] = 0;
            int i30 = i27 + 4;
            bArr7[i27 + 3] = 0;
            int length = exportsStatement.isQualified() ? exportsStatement.targets.length : 0;
            byte[] bArr8 = classFile.contents;
            int i31 = i27 + 5;
            bArr8[i30] = (byte) (length >> 8);
            i27 += 6;
            bArr8[i31] = (byte) length;
            if (length > 0) {
                int i32 = length * 2;
                if (i27 + i32 >= bArr8.length) {
                    classFile.resizeContents(i32);
                }
                for (int i33 = 0; i33 < length; i33++) {
                    int literalIndexForModule4 = classFile.constantPool.literalIndexForModule(exportsStatement.targets[i33].moduleName);
                    byte[] bArr9 = classFile.contents;
                    int i34 = i27 + 1;
                    bArr9[i27] = (byte) (literalIndexForModule4 >> 8);
                    i27 += 2;
                    bArr9[i34] = (byte) literalIndexForModule4;
                }
                i23 += i32;
            }
            i28++;
            i13 = 0;
            i21 = 6;
        }
        int i35 = i23 + i24;
        int i36 = (moduleDeclaration.opensCount * i21) + 2;
        if (i27 + i36 >= classFile.contents.length) {
            classFile.resizeContents(i36);
        }
        byte[] bArr10 = classFile.contents;
        int i37 = i27 + 1;
        int i38 = moduleDeclaration.opensCount;
        bArr10[i27] = (byte) (i38 >> 8);
        int i39 = i27 + 2;
        bArr10[i37] = (byte) i38;
        int i40 = i13;
        while (true) {
            int i41 = moduleDeclaration.opensCount;
            if (i40 >= i41) {
                break;
            }
            OpensStatement opensStatement = moduleDeclaration.opens[i40];
            if (i39 + 6 >= classFile.contents.length) {
                classFile.resizeContents((i41 - i40) * i21);
            }
            int literalIndexForPackage2 = classFile.constantPool.literalIndexForPackage(CharOperation.replaceOnCopy(opensStatement.pkgName, c11, c10));
            byte[] bArr11 = classFile.contents;
            bArr11[i39] = (byte) (literalIndexForPackage2 >> 8);
            bArr11[i39 + 1] = (byte) literalIndexForPackage2;
            bArr11[i39 + 2] = 0;
            int i42 = i39 + 4;
            bArr11[i39 + 3] = 0;
            int length2 = opensStatement.isQualified() ? opensStatement.targets.length : 0;
            byte[] bArr12 = classFile.contents;
            int i43 = i39 + 5;
            bArr12[i42] = (byte) (length2 >> 8);
            i39 += 6;
            bArr12[i43] = (byte) length2;
            if (length2 > 0) {
                int i44 = length2 * 2;
                if (i39 + i44 >= bArr12.length) {
                    classFile.resizeContents(i44);
                }
                for (int i45 = 0; i45 < length2; i45++) {
                    int literalIndexForModule5 = classFile.constantPool.literalIndexForModule(opensStatement.targets[i45].moduleName);
                    byte[] bArr13 = classFile.contents;
                    int i46 = i39 + 1;
                    bArr13[i39] = (byte) (literalIndexForModule5 >> 8);
                    i39 += 2;
                    bArr13[i46] = (byte) literalIndexForModule5;
                }
                i35 += i44;
            }
            i40++;
            i13 = 0;
            c10 = '/';
            c11 = '.';
        }
        int i47 = i35 + i36;
        int i48 = (moduleDeclaration.usesCount * 2) + 2;
        if (i39 + i48 >= classFile.contents.length) {
            classFile.resizeContents(i48);
        }
        byte[] bArr14 = classFile.contents;
        int i49 = i39 + 1;
        int i50 = moduleDeclaration.usesCount;
        bArr14[i39] = (byte) (i50 >> 8);
        int i51 = i39 + 2;
        bArr14[i49] = (byte) i50;
        int i52 = i13;
        while (i52 < moduleDeclaration.usesCount) {
            int literalIndexForType = classFile.constantPool.literalIndexForType(moduleDeclaration.uses[i52].serviceInterface.resolvedType.constantPoolName());
            byte[] bArr15 = classFile.contents;
            int i53 = i51 + 1;
            bArr15[i51] = (byte) (literalIndexForType >> 8);
            i51 += 2;
            bArr15[i53] = (byte) literalIndexForType;
            i52++;
            i13 = 0;
        }
        int i54 = i47 + i48;
        int i55 = (moduleDeclaration.servicesCount * 4) + 2;
        if (i51 + i55 >= classFile.contents.length) {
            classFile.resizeContents(i55);
        }
        byte[] bArr16 = classFile.contents;
        int i56 = i51 + 1;
        int i57 = moduleDeclaration.servicesCount;
        bArr16[i51] = (byte) (i57 >> 8);
        int i58 = i51 + 2;
        bArr16[i56] = (byte) i57;
        int i59 = i13;
        int i60 = i54;
        while (true) {
            int i61 = moduleDeclaration.servicesCount;
            if (i59 >= i61) {
                int i62 = i60 + i55;
                byte[] bArr17 = classFile.contents;
                bArr17[i11] = (byte) (i62 >> 24);
                bArr17[i10 + 3] = (byte) (i62 >> 16);
                bArr17[i10 + 4] = (byte) (i62 >> 8);
                bArr17[i10 + 5] = (byte) i62;
                classFile.contentsOffset = i58;
                return 1;
            }
            if (i58 + 4 >= classFile.contents.length) {
                classFile.resizeContents((i61 - i59) * 4);
            }
            int literalIndexForType2 = classFile.constantPool.literalIndexForType(moduleDeclaration.services[i59].serviceInterface.resolvedType.constantPoolName());
            byte[] bArr18 = classFile.contents;
            bArr18[i58] = (byte) (literalIndexForType2 >> 8);
            bArr18[i58 + 1] = (byte) literalIndexForType2;
            TypeReference[] typeReferenceArr = moduleDeclaration.services[i59].implementations;
            int length3 = typeReferenceArr.length;
            int i63 = i58 + 3;
            bArr18[i58 + 2] = (byte) (length3 >> 8);
            i58 += 4;
            bArr18[i63] = (byte) length3;
            int i64 = length3 * 2;
            if (i58 + i64 >= bArr18.length) {
                classFile.resizeContents(i64);
            }
            int i65 = i13;
            while (i65 < length3) {
                int literalIndexForType3 = classFile.constantPool.literalIndexForType(typeReferenceArr[i65].resolvedType.constantPoolName());
                byte[] bArr19 = classFile.contents;
                int i66 = i58 + 1;
                bArr19[i58] = (byte) (literalIndexForType3 >> 8);
                i58 += 2;
                bArr19[i66] = (byte) literalIndexForType3;
                i65++;
                i13 = 0;
            }
            i60 += i64;
            i59++;
        }
    }

    private int generateModuleMainClassAttribute(char[] cArr) {
        int i10 = this.contentsOffset;
        if (i10 + 8 >= this.contents.length) {
            resizeContents(8);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.ModuleMainClass);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 2] = (byte) 0;
        bArr[i10 + 3] = (byte) 0;
        bArr[i10 + 4] = (byte) 0;
        bArr[i10 + 5] = (byte) 2;
        int literalIndexForType = this.constantPool.literalIndexForType(cArr);
        byte[] bArr2 = this.contents;
        bArr2[i10 + 6] = (byte) (literalIndexForType >> 8);
        bArr2[i10 + 7] = (byte) literalIndexForType;
        this.contentsOffset = i10 + 8;
        return 1;
    }

    private int generateModulePackagesAttribute(char[][] cArr) {
        int i10 = this.contentsOffset;
        int length = (cArr.length * 2) + 6;
        if (i10 + length >= this.contents.length) {
            resizeContents(length);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.ModulePackages);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        int i11 = i10 + 2;
        bArr[i10 + 1] = (byte) literalIndex;
        int i12 = i10 + 6;
        int i13 = i10 + 8;
        int i14 = 0;
        for (char[] cArr2 : cArr) {
            if (cArr2 != null && cArr2.length != 0) {
                int literalIndexForPackage = this.constantPool.literalIndexForPackage(cArr2);
                byte[] bArr2 = this.contents;
                int i15 = i13 + 1;
                bArr2[i13] = (byte) (literalIndexForPackage >> 8);
                i13 += 2;
                bArr2[i15] = (byte) literalIndexForPackage;
                i14++;
            }
        }
        byte[] bArr3 = this.contents;
        bArr3[i12] = (byte) (i14 >> 8);
        bArr3[i10 + 7] = (byte) i14;
        int i16 = (i14 * 2) + 2;
        bArr3[i11] = (byte) (i16 >> 24);
        bArr3[i10 + 3] = (byte) (i16 >> 16);
        bArr3[i10 + 4] = (byte) (i16 >> 8);
        bArr3[i10 + 5] = (byte) i16;
        this.contentsOffset = i13;
        return 1;
    }

    private int generateNestAttributes() {
        return generateNestMembersAttribute() + generateNestHostAttribute();
    }

    private int generateNestHostAttribute() {
        SourceTypeBinding nestHost = this.referenceBinding.getNestHost();
        if (nestHost == null) {
            return 0;
        }
        int i10 = this.contentsOffset;
        if (i10 + 10 >= this.contents.length) {
            resizeContents(10);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.NestHost);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        bArr[i10 + 4] = 0;
        bArr[i10 + 5] = 2;
        int literalIndexForType = this.constantPool.literalIndexForType(nestHost.constantPoolName());
        byte[] bArr2 = this.contents;
        bArr2[i10 + 6] = (byte) (literalIndexForType >> 8);
        bArr2[i10 + 7] = (byte) literalIndexForType;
        this.contentsOffset = i10 + 8;
        return 1;
    }

    private int generateNestMembersAttribute() {
        int i10 = this.contentsOffset;
        List<String> nestMembers = this.referenceBinding.getNestMembers();
        int size = nestMembers != null ? nestMembers.size() : 0;
        if (size == 0) {
            return 0;
        }
        int i11 = (size * 2) + 8;
        if (i11 + i10 >= this.contents.length) {
            resizeContents(i11);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.NestMembers);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        int i12 = (size << 1) + 2;
        bArr[i10 + 2] = (byte) (i12 >> 24);
        bArr[i10 + 3] = (byte) (i12 >> 16);
        bArr[i10 + 4] = (byte) (i12 >> 8);
        bArr[i10 + 5] = (byte) i12;
        int i13 = i10 + 7;
        bArr[i10 + 6] = (byte) (size >> 8);
        int i14 = i10 + 8;
        bArr[i13] = (byte) size;
        for (int i15 = 0; i15 < size; i15++) {
            int literalIndexForType = this.constantPool.literalIndexForType(nestMembers.get(i15).toCharArray());
            byte[] bArr2 = this.contents;
            int i16 = i14 + 1;
            bArr2[i14] = (byte) (literalIndexForType >> 8);
            i14 += 2;
            bArr2[i16] = (byte) literalIndexForType;
        }
        this.contentsOffset = i14;
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0178 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int generateRuntimeAnnotations(Annotation[] annotationArr, long j10) {
        int i10;
        int length = annotationArr.length;
        int i11 = 0;
        int i12 = 0;
        for (Annotation annotation : annotationArr) {
            Annotation persistibleAnnotation = annotation.getPersistibleAnnotation();
            if (persistibleAnnotation != null) {
                TypeBinding typeBinding = persistibleAnnotation.resolvedType;
                long annotationTagBits = typeBinding != null ? typeBinding.getAnnotationTagBits() & TagBits.AnnotationTargetMASK : 0L;
                if (annotationTagBits == 0 || (annotationTagBits & j10) != 0 || jdk16packageInfoAnnotation(annotationTagBits, j10)) {
                    if (persistibleAnnotation.isRuntimeInvisible() || persistibleAnnotation.isRuntimeTypeInvisible()) {
                        i11++;
                    } else if (persistibleAnnotation.isRuntimeVisible() || persistibleAnnotation.isRuntimeTypeVisible()) {
                        i12++;
                    }
                }
            }
        }
        int i13 = this.contentsOffset;
        if (i11 != 0) {
            if (i13 + 10 >= this.contents.length) {
                resizeContents(10);
            }
            int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.RuntimeInvisibleAnnotationsName);
            byte[] bArr = this.contents;
            int i14 = this.contentsOffset;
            int i15 = i14 + 1;
            this.contentsOffset = i15;
            bArr[i14] = (byte) (literalIndex >> 8);
            int i16 = i14 + 2;
            this.contentsOffset = i16;
            bArr[i15] = (byte) literalIndex;
            int i17 = i14 + 6;
            this.contentsOffset = i14 + 8;
            int i18 = 0;
            for (int i19 = 0; i19 < length && i11 != 0; i19++) {
                Annotation persistibleAnnotation2 = annotationArr[i19].getPersistibleAnnotation();
                if (persistibleAnnotation2 != null) {
                    TypeBinding typeBinding2 = persistibleAnnotation2.resolvedType;
                    long annotationTagBits2 = typeBinding2 != null ? typeBinding2.getAnnotationTagBits() & TagBits.AnnotationTargetMASK : 0L;
                    if ((annotationTagBits2 == 0 || (annotationTagBits2 & j10) != 0 || jdk16packageInfoAnnotation(annotationTagBits2, j10)) && (persistibleAnnotation2.isRuntimeInvisible() || persistibleAnnotation2.isRuntimeTypeInvisible())) {
                        int i20 = this.contentsOffset;
                        generateAnnotation(persistibleAnnotation2, i20);
                        i11--;
                        if (this.contentsOffset != i20) {
                            i18++;
                        }
                    }
                }
            }
            if (i18 != 0) {
                byte[] bArr2 = this.contents;
                bArr2[i17] = (byte) (i18 >> 8);
                bArr2[i14 + 7] = (byte) i18;
                int i21 = (this.contentsOffset - i16) - 4;
                bArr2[i16] = (byte) (i21 >> 24);
                bArr2[i14 + 3] = (byte) (i21 >> 16);
                bArr2[i14 + 4] = (byte) (i21 >> 8);
                bArr2[i14 + 5] = (byte) i21;
                i10 = 1;
                int i22 = this.contentsOffset;
                if (i12 != 0) {
                    return i10;
                }
                if (i22 + 10 >= this.contents.length) {
                    resizeContents(10);
                }
                int literalIndex2 = this.constantPool.literalIndex(AttributeNamesConstants.RuntimeVisibleAnnotationsName);
                byte[] bArr3 = this.contents;
                int i23 = this.contentsOffset;
                int i24 = i23 + 1;
                this.contentsOffset = i24;
                bArr3[i23] = (byte) (literalIndex2 >> 8);
                int i25 = i23 + 2;
                this.contentsOffset = i25;
                bArr3[i24] = (byte) literalIndex2;
                int i26 = i23 + 6;
                this.contentsOffset = i23 + 8;
                int i27 = i12;
                int i28 = 0;
                for (int i29 = 0; i29 < length && i27 != 0; i29++) {
                    Annotation persistibleAnnotation3 = annotationArr[i29].getPersistibleAnnotation();
                    if (persistibleAnnotation3 != null) {
                        TypeBinding typeBinding3 = persistibleAnnotation3.resolvedType;
                        long annotationTagBits3 = typeBinding3 != null ? typeBinding3.getAnnotationTagBits() & TagBits.AnnotationTargetMASK : 0L;
                        if ((annotationTagBits3 == 0 || (annotationTagBits3 & j10) != 0 || jdk16packageInfoAnnotation(annotationTagBits3, j10)) && (persistibleAnnotation3.isRuntimeVisible() || persistibleAnnotation3.isRuntimeTypeVisible())) {
                            i27--;
                            int i30 = this.contentsOffset;
                            generateAnnotation(persistibleAnnotation3, i30);
                            if (this.contentsOffset != i30) {
                                i28++;
                            }
                        }
                    }
                }
                if (i28 == 0) {
                    this.contentsOffset = i22;
                    return i10;
                }
                byte[] bArr4 = this.contents;
                bArr4[i26] = (byte) (i28 >> 8);
                bArr4[i23 + 7] = (byte) i28;
                int i31 = (this.contentsOffset - i25) - 4;
                bArr4[i25] = (byte) (i31 >> 24);
                bArr4[i23 + 3] = (byte) (i31 >> 16);
                bArr4[i23 + 4] = (byte) (i31 >> 8);
                bArr4[i23 + 5] = (byte) i31;
                return i10 + 1;
            }
            this.contentsOffset = i13;
        }
        i10 = 0;
        int i222 = this.contentsOffset;
        if (i12 != 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x0217 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int generateRuntimeAnnotationsForParameters(Argument[] argumentArr) {
        int i10;
        int i11;
        int i12;
        int i13;
        Annotation[] annotationArr;
        long j10;
        long j11;
        int length = argumentArr.length;
        int i14 = 2;
        int i15 = 1;
        byte b10 = 0;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, length, 2);
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < length) {
            int i19 = length;
            Annotation[] annotationArr2 = argumentArr[i16].annotations;
            if (annotationArr2 != null) {
                for (Annotation annotation : annotationArr2) {
                    Annotation persistibleAnnotation = annotation.getPersistibleAnnotation();
                    if (persistibleAnnotation != null) {
                        TypeBinding typeBinding = persistibleAnnotation.resolvedType;
                        if (typeBinding != null) {
                            j11 = typeBinding.getAnnotationTagBits() & TagBits.AnnotationTargetMASK;
                            j10 = 0;
                        } else {
                            j10 = 0;
                            j11 = 0;
                        }
                        if (j11 == j10 || (j11 & 549755813888L) != j10) {
                            if (persistibleAnnotation.isRuntimeInvisible()) {
                                int[] iArr2 = iArr[i16];
                                iArr2[1] = iArr2[1] + 1;
                                i17++;
                            } else if (persistibleAnnotation.isRuntimeVisible()) {
                                int[] iArr3 = iArr[i16];
                                iArr3[0] = iArr3[0] + 1;
                                i18++;
                            }
                        }
                    }
                }
            }
            i16++;
            i15 = 1;
            b10 = 0;
            length = i19;
            i14 = 2;
        }
        int i20 = this.contentsOffset;
        if (i17 != 0) {
            if (i20 + 7 >= this.contents.length) {
                resizeContents(7);
            }
            int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.RuntimeInvisibleParameterAnnotationsName);
            byte[] bArr = this.contents;
            int i21 = this.contentsOffset;
            int i22 = i21 + 1;
            this.contentsOffset = i22;
            bArr[i21] = (byte) (literalIndex >> 8);
            int i23 = i21 + 2;
            this.contentsOffset = i23;
            bArr[i22] = (byte) literalIndex;
            this.contentsOffset = i21 + 7;
            bArr[i21 + 6] = (byte) length;
            int i24 = b10;
            int i25 = i24;
            byte b11 = b10;
            while (i24 < length) {
                if (this.contentsOffset + i14 >= this.contents.length) {
                    resizeContents(i14);
                }
                if (i17 == 0) {
                    byte[] bArr2 = this.contents;
                    int i26 = this.contentsOffset;
                    int i27 = i26 + 1;
                    this.contentsOffset = i27;
                    bArr2[i26] = b11;
                    this.contentsOffset = i26 + i14;
                    bArr2[i27] = b11;
                } else {
                    int i28 = iArr[i24][1];
                    int i29 = this.contentsOffset;
                    this.contentsOffset = i29 + 2;
                    if (i28 != 0) {
                        Annotation[] annotationArr3 = argumentArr[i24].annotations;
                        int length2 = annotationArr3.length;
                        int i30 = b11;
                        for (int i31 = b11; i31 < length2; i31++) {
                            Annotation persistibleAnnotation2 = annotationArr3[i31].getPersistibleAnnotation();
                            if (persistibleAnnotation2 == null) {
                                annotationArr = annotationArr3;
                            } else {
                                annotationArr = annotationArr3;
                                TypeBinding typeBinding2 = persistibleAnnotation2.resolvedType;
                                long annotationTagBits = typeBinding2 != null ? typeBinding2.getAnnotationTagBits() & TagBits.AnnotationTargetMASK : 0L;
                                if ((annotationTagBits == 0 || (annotationTagBits & 549755813888L) != 0) && persistibleAnnotation2.isRuntimeInvisible()) {
                                    int i32 = this.contentsOffset;
                                    generateAnnotation(persistibleAnnotation2, i32);
                                    if (this.contentsOffset != i32) {
                                        i30++;
                                        i25++;
                                    }
                                    i17--;
                                }
                            }
                            annotationArr3 = annotationArr;
                        }
                        i13 = i30;
                    } else {
                        i13 = 0;
                    }
                    byte[] bArr3 = this.contents;
                    bArr3[i29] = (byte) (i13 >> 8);
                    bArr3[i29 + 1] = (byte) i13;
                }
                i24++;
                i14 = 2;
                i15 = 1;
                b11 = 0;
            }
            if (i25 != 0) {
                int i33 = (this.contentsOffset - i23) - 4;
                byte[] bArr4 = this.contents;
                bArr4[i23] = (byte) (i33 >> 24);
                bArr4[i21 + 3] = (byte) (i33 >> 16);
                bArr4[i21 + 4] = (byte) (i33 >> 8);
                bArr4[i21 + 5] = (byte) i33;
                if (i18 != 0) {
                    return i15;
                }
                if (this.contentsOffset + 7 >= this.contents.length) {
                    resizeContents(7);
                }
                int literalIndex2 = this.constantPool.literalIndex(AttributeNamesConstants.RuntimeVisibleParameterAnnotationsName);
                byte[] bArr5 = this.contents;
                int i34 = this.contentsOffset;
                int i35 = i34 + 1;
                this.contentsOffset = i35;
                bArr5[i34] = (byte) (literalIndex2 >> 8);
                int i36 = i34 + 2;
                this.contentsOffset = i36;
                bArr5[i35] = (byte) literalIndex2;
                this.contentsOffset = i34 + 7;
                bArr5[i34 + 6] = (byte) length;
                int i37 = 0;
                int i38 = 0;
                while (i37 < length) {
                    if (this.contentsOffset + 2 >= this.contents.length) {
                        resizeContents(2);
                    }
                    if (i18 == 0) {
                        byte[] bArr6 = this.contents;
                        int i39 = this.contentsOffset;
                        int i40 = i39 + 1;
                        this.contentsOffset = i40;
                        bArr6[i39] = 0;
                        this.contentsOffset = i39 + 2;
                        bArr6[i40] = 0;
                        i10 = length;
                    } else {
                        int i41 = iArr[i37][0];
                        int i42 = this.contentsOffset;
                        this.contentsOffset = i42 + 2;
                        if (i41 != 0) {
                            Annotation[] annotationArr4 = argumentArr[i37].annotations;
                            int length3 = annotationArr4.length;
                            int i43 = 0;
                            int i44 = 0;
                            while (i43 < length3) {
                                Annotation persistibleAnnotation3 = annotationArr4[i43].getPersistibleAnnotation();
                                if (persistibleAnnotation3 == null) {
                                    i12 = length;
                                } else {
                                    i12 = length;
                                    TypeBinding typeBinding3 = persistibleAnnotation3.resolvedType;
                                    long annotationTagBits2 = typeBinding3 != null ? typeBinding3.getAnnotationTagBits() & TagBits.AnnotationTargetMASK : 0L;
                                    if ((annotationTagBits2 == 0 || (annotationTagBits2 & 549755813888L) != 0) && persistibleAnnotation3.isRuntimeVisible()) {
                                        int i45 = this.contentsOffset;
                                        generateAnnotation(persistibleAnnotation3, i45);
                                        if (this.contentsOffset != i45) {
                                            i44++;
                                            i38++;
                                        }
                                        i18--;
                                    }
                                }
                                i43++;
                                length = i12;
                            }
                            i10 = length;
                            i11 = i44;
                        } else {
                            i10 = length;
                            i11 = 0;
                        }
                        byte[] bArr7 = this.contents;
                        bArr7[i42] = (byte) (i11 >> 8);
                        bArr7[i42 + 1] = (byte) i11;
                    }
                    i37++;
                    length = i10;
                }
                if (i38 == 0) {
                    this.contentsOffset = i20;
                    return i15;
                }
                int i46 = (this.contentsOffset - i36) - 4;
                byte[] bArr8 = this.contents;
                bArr8[i36] = (byte) (i46 >> 24);
                bArr8[i34 + 3] = (byte) (i46 >> 16);
                bArr8[i34 + 4] = (byte) (i46 >> 8);
                bArr8[i34 + 5] = (byte) i46;
                return i15 + 1;
            }
            this.contentsOffset = i20;
        }
        i15 = 0;
        if (i18 != 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0103 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int generateRuntimeTypeAnnotations(AnnotationContext[] annotationContextArr, int i10, int i11) {
        int i12;
        int length = annotationContextArr.length;
        int i13 = this.contentsOffset;
        if (i11 != 0) {
            if (i13 + 10 >= this.contents.length) {
                resizeContents(10);
            }
            int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.RuntimeInvisibleTypeAnnotationsName);
            byte[] bArr = this.contents;
            int i14 = this.contentsOffset;
            int i15 = i14 + 1;
            this.contentsOffset = i15;
            bArr[i14] = (byte) (literalIndex >> 8);
            int i16 = i14 + 2;
            this.contentsOffset = i16;
            bArr[i15] = (byte) literalIndex;
            int i17 = i14 + 6;
            this.contentsOffset = i14 + 8;
            int i18 = 0;
            for (int i19 = 0; i19 < length && i11 != 0; i19++) {
                AnnotationContext annotationContext = annotationContextArr[i19];
                if ((annotationContext.visibility & 2) != 0) {
                    int i20 = this.contentsOffset;
                    generateTypeAnnotation(annotationContext, i20);
                    i11--;
                    if (this.contentsOffset != i20) {
                        i18++;
                    }
                }
            }
            if (i18 != 0) {
                byte[] bArr2 = this.contents;
                bArr2[i17] = (byte) (i18 >> 8);
                bArr2[i14 + 7] = (byte) i18;
                int i21 = (this.contentsOffset - i16) - 4;
                bArr2[i16] = (byte) (i21 >> 24);
                bArr2[i14 + 3] = (byte) (i21 >> 16);
                bArr2[i14 + 4] = (byte) (i21 >> 8);
                bArr2[i14 + 5] = (byte) i21;
                i12 = 1;
                int i22 = this.contentsOffset;
                if (i10 != 0) {
                    return i12;
                }
                if (i22 + 10 >= this.contents.length) {
                    resizeContents(10);
                }
                int literalIndex2 = this.constantPool.literalIndex(AttributeNamesConstants.RuntimeVisibleTypeAnnotationsName);
                byte[] bArr3 = this.contents;
                int i23 = this.contentsOffset;
                int i24 = i23 + 1;
                this.contentsOffset = i24;
                bArr3[i23] = (byte) (literalIndex2 >> 8);
                int i25 = i23 + 2;
                this.contentsOffset = i25;
                bArr3[i24] = (byte) literalIndex2;
                int i26 = i23 + 6;
                this.contentsOffset = i23 + 8;
                int i27 = 0;
                for (int i28 = 0; i28 < length && i10 != 0; i28++) {
                    AnnotationContext annotationContext2 = annotationContextArr[i28];
                    if ((annotationContext2.visibility & 1) != 0) {
                        i10--;
                        int i29 = this.contentsOffset;
                        generateTypeAnnotation(annotationContext2, i29);
                        if (this.contentsOffset != i29) {
                            i27++;
                        }
                    }
                }
                if (i27 == 0) {
                    this.contentsOffset = i22;
                    return i12;
                }
                byte[] bArr4 = this.contents;
                bArr4[i26] = (byte) (i27 >> 8);
                bArr4[i23 + 7] = (byte) i27;
                int i30 = (this.contentsOffset - i25) - 4;
                bArr4[i25] = (byte) (i30 >> 24);
                bArr4[i23 + 3] = (byte) (i30 >> 16);
                bArr4[i23 + 4] = (byte) (i30 >> 8);
                bArr4[i23 + 5] = (byte) i30;
                return i12 + 1;
            }
            this.contentsOffset = i13;
        }
        i12 = 0;
        int i222 = this.contentsOffset;
        if (i10 != 0) {
        }
    }

    private int generateSignatureAttribute(char[] cArr) {
        int i10 = this.contentsOffset;
        if (i10 + 8 >= this.contents.length) {
            resizeContents(8);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.SignatureName);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        bArr[i10 + 4] = 0;
        bArr[i10 + 5] = 2;
        int literalIndex2 = this.constantPool.literalIndex(cArr);
        byte[] bArr2 = this.contents;
        bArr2[i10 + 6] = (byte) (literalIndex2 >> 8);
        bArr2[i10 + 7] = (byte) literalIndex2;
        this.contentsOffset = i10 + 8;
        return 1;
    }

    private int generateSourceAttribute(String str) {
        int i10 = this.contentsOffset;
        if (i10 + 8 >= this.contents.length) {
            resizeContents(8);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.SourceName);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        bArr[i10 + 4] = 0;
        bArr[i10 + 5] = 2;
        int literalIndex2 = this.constantPool.literalIndex(str.toCharArray());
        byte[] bArr2 = this.contents;
        bArr2[i10 + 6] = (byte) (literalIndex2 >> 8);
        bArr2[i10 + 7] = (byte) literalIndex2;
        this.contentsOffset = i10 + 8;
        return 1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:71:0x020a. Please report as an issue. */
    private int generateStackMapAttribute(MethodBinding methodBinding, int i10, int i11, int i12, boolean z10) {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = this.contentsOffset;
        StackMapFrameCodeStream stackMapFrameCodeStream = (StackMapFrameCodeStream) this.codeStream;
        stackMapFrameCodeStream.removeFramePosition(i10);
        int i19 = 0;
        if (stackMapFrameCodeStream.hasFramePositions()) {
            List traverse = traverse(z10 ? null : methodBinding, i12, this.contents, i11 + 14, i10, new HashMap(), z10);
            int size = traverse.size();
            int i20 = 1;
            if (size > 1) {
                if (i18 + 8 >= this.contents.length) {
                    resizeContents(8);
                }
                int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.StackMapName);
                byte[] bArr = this.contents;
                bArr[i18] = (byte) (literalIndex >> 8);
                int i21 = i18 + 2;
                bArr[i18 + 1] = (byte) literalIndex;
                int i22 = i18 + 6;
                int i23 = 4;
                if (i18 + 10 >= bArr.length) {
                    resizeContents(4);
                }
                int i24 = i18 + 8;
                if (i18 + 10 >= this.contents.length) {
                    resizeContents(2);
                }
                int i25 = 1;
                while (i25 < size) {
                    StackMapFrame stackMapFrame = (StackMapFrame) traverse.get(i25);
                    int i26 = stackMapFrame.f102475pc;
                    if (i24 + 5 >= this.contents.length) {
                        resizeContents(5);
                    }
                    byte[] bArr2 = this.contents;
                    bArr2[i24] = (byte) (i26 >> 8);
                    int i27 = i24 + 2;
                    bArr2[i24 + 1] = (byte) i26;
                    int i28 = i24 + 4;
                    int numberOfLocals = stackMapFrame.getNumberOfLocals();
                    VerificationTypeInfo[] verificationTypeInfoArr = stackMapFrame.locals;
                    int length = verificationTypeInfoArr == null ? i19 : verificationTypeInfoArr.length;
                    int i29 = i19;
                    int i30 = i29;
                    int i31 = i30;
                    while (i30 < length && i29 < numberOfLocals) {
                        List list = traverse;
                        if (i28 + 3 >= this.contents.length) {
                            resizeContents(3);
                        }
                        VerificationTypeInfo verificationTypeInfo = stackMapFrame.locals[i30];
                        if (verificationTypeInfo == null) {
                            this.contents[i28] = 0;
                            i14 = size;
                            i15 = i22;
                            i28++;
                            i17 = 1;
                        } else {
                            switch (verificationTypeInfo.id()) {
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 10:
                                    i14 = size;
                                    i15 = i22;
                                    i16 = i28 + 1;
                                    i17 = 1;
                                    this.contents[i28] = 1;
                                    break;
                                case 6:
                                case 11:
                                default:
                                    byte[] bArr3 = this.contents;
                                    i16 = i28 + 1;
                                    i14 = size;
                                    int i32 = verificationTypeInfo.tag;
                                    i15 = i22;
                                    bArr3[i28] = (byte) i32;
                                    if (i32 != 7) {
                                        if (i32 == 8) {
                                            int i33 = verificationTypeInfo.offset;
                                            bArr3[i16] = (byte) (i33 >> 8);
                                            i16 = i28 + 3;
                                            bArr3[i28 + 2] = (byte) i33;
                                            break;
                                        }
                                    } else {
                                        int literalIndexForType = this.constantPool.literalIndexForType(verificationTypeInfo.constantPoolName());
                                        byte[] bArr4 = this.contents;
                                        bArr4[i16] = (byte) (literalIndexForType >> 8);
                                        i16 = i28 + 3;
                                        bArr4[i28 + 2] = (byte) literalIndexForType;
                                        break;
                                    }
                                    break;
                                case 7:
                                    i14 = size;
                                    i15 = i22;
                                    i16 = i28 + 1;
                                    this.contents[i28] = 4;
                                    i30++;
                                    break;
                                case 8:
                                    i14 = size;
                                    i15 = i22;
                                    this.contents[i28] = 3;
                                    i30++;
                                    i16 = i28 + 1;
                                    break;
                                case 9:
                                    i14 = size;
                                    i15 = i22;
                                    i16 = i28 + 1;
                                    this.contents[i28] = 2;
                                    break;
                                case 12:
                                    i14 = size;
                                    i15 = i22;
                                    i16 = i28 + 1;
                                    this.contents[i28] = 5;
                                    break;
                            }
                            i17 = 1;
                            i29++;
                            i28 = i16;
                        }
                        i31++;
                        i30 += i17;
                        traverse = list;
                        size = i14;
                        i22 = i15;
                    }
                    List list2 = traverse;
                    int i34 = size;
                    int i35 = i22;
                    int i36 = i31;
                    if (i28 + 4 >= this.contents.length) {
                        resizeContents(4);
                    }
                    byte[] bArr5 = this.contents;
                    bArr5[i27] = (byte) (i36 >> 8);
                    bArr5[i24 + 3] = (byte) i36;
                    int i37 = stackMapFrame.numberOfStackItems;
                    bArr5[i28] = (byte) (i37 >> 8);
                    bArr5[i28 + 1] = (byte) i37;
                    i24 = i28 + 2;
                    for (int i38 = 0; i38 < i37; i38++) {
                        if (i24 + 3 >= this.contents.length) {
                            resizeContents(3);
                        }
                        VerificationTypeInfo verificationTypeInfo2 = stackMapFrame.stackItems[i38];
                        if (verificationTypeInfo2 == null) {
                            this.contents[i24] = 0;
                            i24++;
                        } else {
                            switch (verificationTypeInfo2.id()) {
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 10:
                                    this.contents[i24] = 1;
                                    i24++;
                                    break;
                                case 6:
                                case 11:
                                default:
                                    byte[] bArr6 = this.contents;
                                    int i39 = i24 + 1;
                                    int i40 = verificationTypeInfo2.tag;
                                    bArr6[i24] = (byte) i40;
                                    if (i40 == 7) {
                                        int literalIndexForType2 = this.constantPool.literalIndexForType(verificationTypeInfo2.constantPoolName());
                                        byte[] bArr7 = this.contents;
                                        int i41 = i24 + 2;
                                        bArr7[i39] = (byte) (literalIndexForType2 >> 8);
                                        i24 += 3;
                                        bArr7[i41] = (byte) literalIndexForType2;
                                    } else if (i40 != 8) {
                                        i24 = i39;
                                    } else {
                                        int i42 = verificationTypeInfo2.offset;
                                        int i43 = i24 + 2;
                                        bArr6[i39] = (byte) (i42 >> 8);
                                        i24 += 3;
                                        bArr6[i43] = (byte) i42;
                                    }
                                    break;
                                case 7:
                                    this.contents[i24] = 4;
                                    i24++;
                                    break;
                                case 8:
                                    this.contents[i24] = 3;
                                    i24++;
                                    break;
                                case 9:
                                    this.contents[i24] = 2;
                                    i24++;
                                    break;
                                case 12:
                                    this.contents[i24] = 5;
                                    i24++;
                                    break;
                            }
                        }
                    }
                    i25++;
                    traverse = list2;
                    size = i34;
                    i22 = i35;
                    i20 = 1;
                    i19 = 0;
                    i23 = 4;
                }
                int i44 = size - 1;
                if (i44 != 0) {
                    byte[] bArr8 = this.contents;
                    bArr8[i22] = (byte) (i44 >> 8);
                    bArr8[i18 + 7] = (byte) i44;
                    int i45 = (i24 - i21) - i23;
                    bArr8[i21] = (byte) (i45 >> 24);
                    bArr8[i18 + 3] = (byte) (i45 >> 16);
                    bArr8[i18 + 4] = (byte) (i45 >> 8);
                    bArr8[i18 + 5] = (byte) i45;
                    i13 = i20;
                    i18 = i24;
                    this.contentsOffset = i18;
                    return i13;
                }
            }
        }
        i13 = i19;
        this.contentsOffset = i18;
        return i13;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:114:0x02ab. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:138:0x0350. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:170:0x044c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x0129. Please report as an issue. */
    private int generateStackMapTableAttribute(MethodBinding methodBinding, int i10, int i11, int i12, boolean z10) {
        List list;
        int i13;
        int i14;
        int i15;
        char c10;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30 = this.contentsOffset;
        StackMapFrameCodeStream stackMapFrameCodeStream = (StackMapFrameCodeStream) this.codeStream;
        stackMapFrameCodeStream.removeFramePosition(i10);
        int i31 = 0;
        if (stackMapFrameCodeStream.hasFramePositions()) {
            List traverse = traverse(z10 ? null : methodBinding, i12, this.contents, i11 + 14, i10, new HashMap(), z10);
            int size = traverse.size();
            int i32 = 1;
            if (size > 1) {
                if (i30 + 8 >= this.contents.length) {
                    resizeContents(8);
                }
                int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.StackMapTableName);
                byte[] bArr = this.contents;
                bArr[i30] = (byte) (literalIndex >> 8);
                int i33 = i30 + 2;
                bArr[i30 + 1] = (byte) literalIndex;
                int i34 = i30 + 6;
                int i35 = 4;
                if (i30 + 10 >= bArr.length) {
                    resizeContents(4);
                }
                int i36 = i30 + 8;
                int i37 = 2;
                if (i30 + 10 >= this.contents.length) {
                    resizeContents(2);
                }
                StackMapFrame stackMapFrame = (StackMapFrame) traverse.get(0);
                int i38 = 1;
                while (i38 < size) {
                    StackMapFrame stackMapFrame2 = (StackMapFrame) traverse.get(i38);
                    int offsetDelta = stackMapFrame2.getOffsetDelta(stackMapFrame);
                    int frameType = stackMapFrame2.getFrameType(stackMapFrame);
                    if (frameType != 0) {
                        if (frameType != i32) {
                            int i39 = 6;
                            if (frameType != i37) {
                                if (frameType == 3) {
                                    list = traverse;
                                    i13 = size;
                                    i14 = i34;
                                    if (i36 + 3 >= this.contents.length) {
                                        resizeContents(3);
                                    }
                                    byte[] bArr2 = this.contents;
                                    bArr2[i36] = -5;
                                    int i40 = i36 + 2;
                                    bArr2[i36 + 1] = (byte) (offsetDelta >> 8);
                                    i36 += 3;
                                    bArr2[i40] = (byte) offsetDelta;
                                } else if (frameType == 5) {
                                    list = traverse;
                                    i13 = size;
                                    i14 = i34;
                                    if (i36 + 4 >= this.contents.length) {
                                        resizeContents(4);
                                    }
                                    byte[] bArr3 = this.contents;
                                    int i41 = i36 + 1;
                                    bArr3[i36] = (byte) (offsetDelta + 64);
                                    i20 = 0;
                                    VerificationTypeInfo verificationTypeInfo = stackMapFrame2.stackItems[0];
                                    if (verificationTypeInfo != null) {
                                        switch (verificationTypeInfo.id()) {
                                            case 2:
                                            case 3:
                                            case 4:
                                            case 5:
                                            case 10:
                                                i36 += 2;
                                                i21 = 1;
                                                this.contents[i41] = 1;
                                                i17 = i21;
                                                i15 = 2;
                                                i31 = 0;
                                                c10 = '\b';
                                                i16 = 4;
                                                break;
                                            case 6:
                                            case 11:
                                            default:
                                                VerificationTypeInfo verificationTypeInfo2 = stackMapFrame2.stackItems[0];
                                                byte b10 = (byte) verificationTypeInfo2.tag;
                                                byte[] bArr4 = this.contents;
                                                i24 = i36 + 2;
                                                bArr4[i41] = b10;
                                                if (b10 != 7) {
                                                    if (b10 == 8) {
                                                        int i42 = verificationTypeInfo2.offset;
                                                        int i43 = i36 + 3;
                                                        bArr4[i24] = (byte) (i42 >> 8);
                                                        i36 += 4;
                                                        bArr4[i43] = (byte) i42;
                                                        break;
                                                    }
                                                } else {
                                                    int literalIndexForType = this.constantPool.literalIndexForType(verificationTypeInfo2.constantPoolName());
                                                    byte[] bArr5 = this.contents;
                                                    bArr5[i24] = (byte) (literalIndexForType >> 8);
                                                    i24 = i36 + 4;
                                                    bArr5[i36 + 3] = (byte) literalIndexForType;
                                                }
                                                i36 = i24;
                                                break;
                                            case 7:
                                                i36 += 2;
                                                i22 = 4;
                                                this.contents[i41] = 4;
                                                i16 = i22;
                                                i17 = 1;
                                                i15 = 2;
                                                i31 = 0;
                                                c10 = '\b';
                                                break;
                                            case 8:
                                                i36 += 2;
                                                this.contents[i41] = 3;
                                                break;
                                            case 9:
                                                i36 += 2;
                                                i23 = 2;
                                                this.contents[i41] = 2;
                                                i15 = i23;
                                                i17 = 1;
                                                i31 = 0;
                                                c10 = '\b';
                                                i16 = 4;
                                                break;
                                            case 12:
                                                i36 += 2;
                                                this.contents[i41] = 5;
                                                break;
                                        }
                                    } else {
                                        i36 += 2;
                                        bArr3[i41] = 0;
                                        i31 = i20;
                                        i17 = 1;
                                        i15 = 2;
                                        c10 = '\b';
                                        i16 = 4;
                                    }
                                } else if (frameType == 6) {
                                    list = traverse;
                                    i13 = size;
                                    i14 = i34;
                                    if (i36 + 6 >= this.contents.length) {
                                        resizeContents(6);
                                    }
                                    byte[] bArr6 = this.contents;
                                    bArr6[i36] = -9;
                                    bArr6[i36 + 1] = (byte) (offsetDelta >> 8);
                                    int i44 = i36 + 3;
                                    bArr6[i36 + 2] = (byte) offsetDelta;
                                    i20 = 0;
                                    VerificationTypeInfo verificationTypeInfo3 = stackMapFrame2.stackItems[0];
                                    if (verificationTypeInfo3 != null) {
                                        switch (verificationTypeInfo3.id()) {
                                            case 2:
                                            case 3:
                                            case 4:
                                            case 5:
                                            case 10:
                                                i36 += 4;
                                                i21 = 1;
                                                this.contents[i44] = 1;
                                                i17 = i21;
                                                i15 = 2;
                                                i31 = 0;
                                                c10 = '\b';
                                                i16 = 4;
                                                break;
                                            case 6:
                                            case 11:
                                            default:
                                                VerificationTypeInfo verificationTypeInfo4 = stackMapFrame2.stackItems[0];
                                                byte b11 = (byte) verificationTypeInfo4.tag;
                                                byte[] bArr7 = this.contents;
                                                i24 = i36 + 4;
                                                bArr7[i44] = b11;
                                                if (b11 != 7) {
                                                    if (b11 == 8) {
                                                        int i45 = verificationTypeInfo4.offset;
                                                        int i46 = i36 + 5;
                                                        bArr7[i24] = (byte) (i45 >> 8);
                                                        i36 += 6;
                                                        bArr7[i46] = (byte) i45;
                                                        break;
                                                    }
                                                } else {
                                                    int literalIndexForType2 = this.constantPool.literalIndexForType(verificationTypeInfo4.constantPoolName());
                                                    byte[] bArr8 = this.contents;
                                                    bArr8[i24] = (byte) (literalIndexForType2 >> 8);
                                                    i24 = i36 + 6;
                                                    bArr8[i36 + 5] = (byte) literalIndexForType2;
                                                }
                                                i36 = i24;
                                                break;
                                            case 7:
                                                i36 += 4;
                                                i22 = 4;
                                                this.contents[i44] = 4;
                                                i16 = i22;
                                                i17 = 1;
                                                i15 = 2;
                                                i31 = 0;
                                                c10 = '\b';
                                                break;
                                            case 8:
                                                i36 += 4;
                                                this.contents[i44] = 3;
                                                break;
                                            case 9:
                                                i36 += 4;
                                                i23 = 2;
                                                this.contents[i44] = 2;
                                                i15 = i23;
                                                i17 = 1;
                                                i31 = 0;
                                                c10 = '\b';
                                                i16 = 4;
                                                break;
                                            case 12:
                                                i36 += 4;
                                                this.contents[i44] = 5;
                                                break;
                                        }
                                    } else {
                                        i36 += 4;
                                        bArr6[i44] = 0;
                                        i31 = i20;
                                        i17 = 1;
                                        i15 = 2;
                                        c10 = '\b';
                                        i16 = 4;
                                    }
                                } else {
                                    if (i36 + 5 >= this.contents.length) {
                                        resizeContents(5);
                                    }
                                    byte[] bArr9 = this.contents;
                                    bArr9[i36] = -1;
                                    bArr9[i36 + 1] = (byte) (offsetDelta >> 8);
                                    int i47 = i36 + 3;
                                    bArr9[i36 + 2] = (byte) offsetDelta;
                                    int i48 = i36 + 5;
                                    int numberOfLocals = stackMapFrame2.getNumberOfLocals();
                                    VerificationTypeInfo[] verificationTypeInfoArr = stackMapFrame2.locals;
                                    int length = verificationTypeInfoArr == null ? 0 : verificationTypeInfoArr.length;
                                    int i49 = 0;
                                    int i50 = 0;
                                    int i51 = 0;
                                    while (i49 < length && i50 < numberOfLocals) {
                                        List list2 = traverse;
                                        if (i48 + 3 >= this.contents.length) {
                                            resizeContents(3);
                                        }
                                        VerificationTypeInfo verificationTypeInfo5 = stackMapFrame2.locals[i49];
                                        if (verificationTypeInfo5 == null) {
                                            this.contents[i48] = 0;
                                            i26 = size;
                                            i27 = i34;
                                            i48++;
                                            i29 = 1;
                                        } else {
                                            switch (verificationTypeInfo5.id()) {
                                                case 2:
                                                case 3:
                                                case 4:
                                                case 5:
                                                case 10:
                                                    i26 = size;
                                                    i27 = i34;
                                                    i28 = i48 + 1;
                                                    i29 = 1;
                                                    this.contents[i48] = 1;
                                                    break;
                                                case 6:
                                                case 11:
                                                default:
                                                    byte[] bArr10 = this.contents;
                                                    i28 = i48 + 1;
                                                    i26 = size;
                                                    int i52 = verificationTypeInfo5.tag;
                                                    i27 = i34;
                                                    bArr10[i48] = (byte) i52;
                                                    if (i52 == 7) {
                                                        int literalIndexForType3 = this.constantPool.literalIndexForType(verificationTypeInfo5.constantPoolName());
                                                        byte[] bArr11 = this.contents;
                                                        bArr11[i28] = (byte) (literalIndexForType3 >> 8);
                                                        i28 = i48 + 3;
                                                        bArr11[i48 + 2] = (byte) literalIndexForType3;
                                                    } else if (i52 == 8) {
                                                        int i53 = verificationTypeInfo5.offset;
                                                        bArr10[i28] = (byte) (i53 >> 8);
                                                        i28 = i48 + 3;
                                                        bArr10[i48 + 2] = (byte) i53;
                                                    }
                                                    i29 = 1;
                                                    break;
                                                case 7:
                                                    i26 = size;
                                                    i27 = i34;
                                                    i28 = i48 + 1;
                                                    this.contents[i48] = 4;
                                                    i49++;
                                                    i29 = 1;
                                                    break;
                                                case 8:
                                                    i26 = size;
                                                    i27 = i34;
                                                    i28 = i48 + 1;
                                                    this.contents[i48] = 3;
                                                    i49++;
                                                    i29 = 1;
                                                    break;
                                                case 9:
                                                    i26 = size;
                                                    i27 = i34;
                                                    i28 = i48 + 1;
                                                    this.contents[i48] = 2;
                                                    i29 = 1;
                                                    break;
                                                case 12:
                                                    i26 = size;
                                                    i27 = i34;
                                                    i28 = i48 + 1;
                                                    this.contents[i48] = 5;
                                                    i29 = 1;
                                                    break;
                                            }
                                            i50++;
                                            i48 = i28;
                                        }
                                        i51++;
                                        i49 += i29;
                                        traverse = list2;
                                        size = i26;
                                        i34 = i27;
                                    }
                                    list = traverse;
                                    i13 = size;
                                    i14 = i34;
                                    int i54 = i51;
                                    if (i48 + 4 >= this.contents.length) {
                                        resizeContents(4);
                                    }
                                    byte[] bArr12 = this.contents;
                                    bArr12[i47] = (byte) (i54 >> 8);
                                    bArr12[i36 + 4] = (byte) i54;
                                    int i55 = stackMapFrame2.numberOfStackItems;
                                    int i56 = i48 + 1;
                                    bArr12[i48] = (byte) (i55 >> 8);
                                    int i57 = i48 + 2;
                                    bArr12[i56] = (byte) i55;
                                    for (int i58 = 0; i58 < i55; i58++) {
                                        if (i57 + 3 >= this.contents.length) {
                                            resizeContents(3);
                                        }
                                        VerificationTypeInfo verificationTypeInfo6 = stackMapFrame2.stackItems[i58];
                                        if (verificationTypeInfo6 != null) {
                                            switch (verificationTypeInfo6.id()) {
                                                case 2:
                                                case 3:
                                                case 4:
                                                case 5:
                                                case 10:
                                                    i25 = i57 + 1;
                                                    this.contents[i57] = 1;
                                                    break;
                                                case 6:
                                                case 11:
                                                default:
                                                    byte[] bArr13 = this.contents;
                                                    int i59 = i57 + 1;
                                                    int i60 = verificationTypeInfo6.tag;
                                                    bArr13[i57] = (byte) i60;
                                                    if (i60 != 7) {
                                                        if (i60 != 8) {
                                                            i57 = i59;
                                                            break;
                                                        } else {
                                                            int i61 = verificationTypeInfo6.offset;
                                                            int i62 = i57 + 2;
                                                            bArr13[i59] = (byte) (i61 >> 8);
                                                            i57 += 3;
                                                            bArr13[i62] = (byte) i61;
                                                            break;
                                                        }
                                                    } else {
                                                        int literalIndexForType4 = this.constantPool.literalIndexForType(verificationTypeInfo6.constantPoolName());
                                                        byte[] bArr14 = this.contents;
                                                        int i63 = i57 + 2;
                                                        bArr14[i59] = (byte) (literalIndexForType4 >> 8);
                                                        i57 += 3;
                                                        bArr14[i63] = (byte) literalIndexForType4;
                                                        break;
                                                    }
                                                case 7:
                                                    i25 = i57 + 1;
                                                    this.contents[i57] = 4;
                                                    break;
                                                case 8:
                                                    i25 = i57 + 1;
                                                    this.contents[i57] = 3;
                                                    break;
                                                case 9:
                                                    i25 = i57 + 1;
                                                    this.contents[i57] = 2;
                                                    break;
                                                case 12:
                                                    i25 = i57 + 1;
                                                    this.contents[i57] = 5;
                                                    break;
                                            }
                                        } else {
                                            i25 = i57 + 1;
                                            this.contents[i57] = 0;
                                        }
                                        i57 = i25;
                                    }
                                    i36 = i57;
                                }
                                i17 = 1;
                                i15 = 2;
                                i31 = 0;
                                c10 = '\b';
                                i16 = 4;
                            } else {
                                list = traverse;
                                i13 = size;
                                i14 = i34;
                                if (i36 + 3 >= this.contents.length) {
                                    resizeContents(3);
                                }
                                int numberOfDifferentLocals = stackMapFrame2.numberOfDifferentLocals(stackMapFrame);
                                byte[] bArr15 = this.contents;
                                bArr15[i36] = (byte) (numberOfDifferentLocals + 251);
                                int i64 = i36 + 2;
                                bArr15[i36 + 1] = (byte) (offsetDelta >> 8);
                                i36 += 3;
                                bArr15[i64] = (byte) offsetDelta;
                                int indexOfDifferentLocals = stackMapFrame2.getIndexOfDifferentLocals(numberOfDifferentLocals);
                                stackMapFrame2.getNumberOfLocals();
                                while (indexOfDifferentLocals < stackMapFrame2.locals.length && numberOfDifferentLocals > 0) {
                                    if (i36 + 6 >= this.contents.length) {
                                        resizeContents(i39);
                                    }
                                    VerificationTypeInfo verificationTypeInfo7 = stackMapFrame2.locals[indexOfDifferentLocals];
                                    if (verificationTypeInfo7 == null) {
                                        this.contents[i36] = 0;
                                        i36++;
                                        i19 = 1;
                                    } else {
                                        switch (verificationTypeInfo7.id()) {
                                            case 2:
                                            case 3:
                                            case 4:
                                            case 5:
                                            case 10:
                                                i18 = i36 + 1;
                                                i19 = 1;
                                                this.contents[i36] = 1;
                                                break;
                                            case 6:
                                            case 11:
                                            default:
                                                byte[] bArr16 = this.contents;
                                                i18 = i36 + 1;
                                                int i65 = verificationTypeInfo7.tag;
                                                bArr16[i36] = (byte) i65;
                                                if (i65 == 7) {
                                                    int literalIndexForType5 = this.constantPool.literalIndexForType(verificationTypeInfo7.constantPoolName());
                                                    byte[] bArr17 = this.contents;
                                                    bArr17[i18] = (byte) (literalIndexForType5 >> 8);
                                                    i18 = i36 + 3;
                                                    bArr17[i36 + 2] = (byte) literalIndexForType5;
                                                } else if (i65 == 8) {
                                                    int i66 = verificationTypeInfo7.offset;
                                                    bArr16[i18] = (byte) (i66 >> 8);
                                                    i18 = i36 + 3;
                                                    bArr16[i36 + 2] = (byte) i66;
                                                }
                                                i19 = 1;
                                                break;
                                            case 7:
                                                i18 = i36 + 1;
                                                this.contents[i36] = 4;
                                                indexOfDifferentLocals++;
                                                i19 = 1;
                                                break;
                                            case 8:
                                                i18 = i36 + 1;
                                                this.contents[i36] = 3;
                                                indexOfDifferentLocals++;
                                                i19 = 1;
                                                break;
                                            case 9:
                                                i18 = i36 + 1;
                                                this.contents[i36] = 2;
                                                i19 = 1;
                                                break;
                                            case 12:
                                                i18 = i36 + 1;
                                                this.contents[i36] = 5;
                                                i19 = 1;
                                                break;
                                        }
                                        numberOfDifferentLocals--;
                                        i36 = i18;
                                    }
                                    indexOfDifferentLocals += i19;
                                    i39 = 6;
                                }
                                i15 = 2;
                                i31 = 0;
                                c10 = '\b';
                                i16 = 4;
                            }
                        } else {
                            list = traverse;
                            i13 = size;
                            i14 = i34;
                            i15 = i37;
                            i31 = 0;
                            c10 = '\b';
                            i16 = 4;
                            if (i36 + 3 >= this.contents.length) {
                                resizeContents(3);
                            }
                            int i67 = -stackMapFrame2.numberOfDifferentLocals(stackMapFrame);
                            byte[] bArr18 = this.contents;
                            bArr18[i36] = (byte) (251 - i67);
                            int i68 = i36 + 2;
                            bArr18[i36 + 1] = (byte) (offsetDelta >> 8);
                            i36 += 3;
                            bArr18[i68] = (byte) offsetDelta;
                        }
                        i17 = 1;
                    } else {
                        list = traverse;
                        i13 = size;
                        i14 = i34;
                        i15 = i37;
                        c10 = '\b';
                        i16 = 4;
                        int i69 = i36 + 1;
                        if (i69 >= this.contents.length) {
                            i17 = 1;
                            resizeContents(1);
                        } else {
                            i17 = 1;
                        }
                        this.contents[i36] = (byte) offsetDelta;
                        i36 = i69;
                    }
                    i38++;
                    i32 = i17;
                    i37 = i15;
                    stackMapFrame = stackMapFrame2;
                    i35 = i16;
                    traverse = list;
                    size = i13;
                    i34 = i14;
                }
                int i70 = size - 1;
                if (i70 != 0) {
                    byte[] bArr19 = this.contents;
                    bArr19[i34] = (byte) (i70 >> 8);
                    bArr19[i30 + 7] = (byte) i70;
                    int i71 = (i36 - i33) - i35;
                    bArr19[i33] = (byte) (i71 >> 24);
                    bArr19[i30 + 3] = (byte) (i71 >> 16);
                    bArr19[i30 + 4] = (byte) (i71 >> 8);
                    bArr19[i30 + 5] = (byte) i71;
                    i31 = i32;
                    i30 = i36;
                }
            }
        }
        this.contentsOffset = i30;
        return i31;
    }

    private int generateSyntheticAttribute() {
        int i10 = this.contentsOffset;
        if (i10 + 6 >= this.contents.length) {
            resizeContents(6);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.SyntheticName);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        bArr[i10 + 4] = 0;
        bArr[i10 + 5] = 0;
        this.contentsOffset = i10 + 6;
        return 1;
    }

    private void generateTypeAnnotation(AnnotationContext annotationContext, int i10) {
        Annotation persistibleAnnotation = annotationContext.annotation.getPersistibleAnnotation();
        if (persistibleAnnotation == null || persistibleAnnotation.resolvedType == null) {
            return;
        }
        int i11 = annotationContext.targetType;
        int[] locations = Annotation.getLocations(annotationContext.typeReference, annotationContext.annotation);
        if (this.contentsOffset + 5 >= this.contents.length) {
            resizeContents(5);
        }
        byte[] bArr = this.contents;
        int i12 = this.contentsOffset;
        this.contentsOffset = i12 + 1;
        bArr[i12] = (byte) i11;
        dumpTargetTypeContents(i11, annotationContext);
        dumpLocations(locations);
        generateAnnotation(persistibleAnnotation, i10);
    }

    private int generateTypeAnnotationAttributeForTypeDeclaration() {
        TypeDeclaration typeDeclaration = this.referenceBinding.scope.referenceContext;
        if ((typeDeclaration.bits & 1048576) == 0) {
            return 0;
        }
        TypeReference typeReference = typeDeclaration.superclass;
        ArrayList arrayList = new ArrayList();
        if (typeReference != null && (typeReference.bits & 1048576) != 0) {
            typeReference.getAllAnnotationContexts(16, -1, arrayList);
        }
        TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
        if (typeReferenceArr != null) {
            for (int i10 = 0; i10 < typeReferenceArr.length; i10++) {
                TypeReference typeReference2 = typeReferenceArr[i10];
                if ((typeReference2.bits & 1048576) != 0) {
                    typeReference2.getAllAnnotationContexts(16, i10, arrayList);
                }
            }
        }
        TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
        if (typeParameterArr != null) {
            int length = typeParameterArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                TypeParameter typeParameter = typeParameterArr[i11];
                if ((typeParameter.bits & 1048576) != 0) {
                    typeParameter.getAllAnnotationContexts(0, i11, arrayList);
                }
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return 0;
        }
        AnnotationContext[] annotationContextArr = new AnnotationContext[size];
        arrayList.toArray(annotationContextArr);
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < size; i14++) {
            AnnotationContext annotationContext = annotationContextArr[i14];
            if ((annotationContext.visibility & 2) != 0) {
                i13++;
                arrayList.add(annotationContext);
            } else {
                i12++;
                arrayList.add(annotationContext);
            }
        }
        return generateRuntimeTypeAnnotations(annotationContextArr, i12, i13);
    }

    private int generateVarargsAttribute() {
        int i10 = this.contentsOffset;
        if (i10 + 6 >= this.contents.length) {
            resizeContents(6);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.VarargsName);
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (literalIndex >> 8);
        bArr[i10 + 1] = (byte) literalIndex;
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        bArr[i10 + 4] = 0;
        bArr[i10 + 5] = 0;
        this.contentsOffset = i10 + 6;
        return 1;
    }

    public static ClassFile getNewInstance(SourceTypeBinding sourceTypeBinding) {
        return sourceTypeBinding.scope.environment().classFilePool.acquire(sourceTypeBinding);
    }

    private int getParametersCount(char[] cArr) {
        int indexOf = CharOperation.indexOf('(', cArr) + 1;
        int i10 = 0;
        if (cArr[indexOf] == ')') {
            return 0;
        }
        while (true) {
            char c10 = cArr[indexOf];
            if (c10 == ')') {
                return i10;
            }
            if (c10 != 'F') {
                if (c10 == 'L') {
                    indexOf = CharOperation.indexOf(';', cArr, indexOf + 1);
                } else if (c10 != 'S' && c10 != 'I' && c10 != 'J' && c10 != 'Z') {
                    if (c10 != '[') {
                        switch (c10) {
                            case 'B':
                            case 'C':
                            case 'D':
                                break;
                            default:
                                throw new IllegalArgumentException("Invalid starting type character : " + c10);
                        }
                    } else {
                        indexOf = scanType(cArr, indexOf + 1);
                    }
                }
            }
            i10++;
            indexOf++;
        }
    }

    private char[] getReturnType(char[] cArr) {
        return CharOperation.subarray(cArr, CharOperation.lastIndexOf(')', cArr) + 1, cArr.length);
    }

    private final int i2At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        return (bArr[i12] << 8) + (bArr[i12 + 1] & 255);
    }

    private final int i4At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = i12 + 2;
        return ((bArr[i12] & 255) << 24) + ((bArr[i12 + 1] & 255) << 16) + ((bArr[i13] & 255) << 8) + (bArr[i12 + 3] & 255);
    }

    private void initializeDefaultLocals(StackMapFrame stackMapFrame, MethodBinding methodBinding, int i10, int i11) {
        int i12;
        if (i10 != 0) {
            boolean isConstructor = methodBinding.isConstructor();
            if (isConstructor || !methodBinding.isStatic()) {
                LocalVariableBinding localVariableBinding = new LocalVariableBinding(ConstantPool.This, (TypeBinding) methodBinding.declaringClass, 0, false);
                localVariableBinding.resolvedPosition = 0;
                this.codeStream.record(localVariableBinding);
                localVariableBinding.recordInitializationStartPC(0);
                localVariableBinding.recordInitializationEndPC(i11);
                stackMapFrame.putLocal(0, new VerificationTypeInfo(isConstructor ? 6 : 7, methodBinding.declaringClass));
                i12 = 1;
            } else {
                i12 = 0;
            }
            if (!isConstructor) {
                TypeBinding[] typeBindingArr = methodBinding.parameters;
                if (typeBindingArr != null) {
                    int length = typeBindingArr.length;
                    for (int i13 = 0; i13 < length; i13++) {
                        TypeBinding typeBinding = typeBindingArr[i13];
                        LocalVariableBinding localVariableBinding2 = new LocalVariableBinding((" synthetic" + i13).toCharArray(), typeBinding, 0, true);
                        localVariableBinding2.resolvedPosition = i13;
                        this.codeStream.record(localVariableBinding2);
                        localVariableBinding2.recordInitializationStartPC(0);
                        localVariableBinding2.recordInitializationEndPC(i11);
                        stackMapFrame.putLocal(i12, new VerificationTypeInfo(typeBinding));
                        int i14 = typeBinding.f102482id;
                        i12 = (i14 == 7 || i14 == 8) ? i12 + 2 : i12 + 1;
                    }
                    return;
                }
                return;
            }
            if (methodBinding.declaringClass.isEnum()) {
                LocalVariableBinding localVariableBinding3 = new LocalVariableBinding(" name".toCharArray(), (TypeBinding) this.referenceBinding.scope.getJavaLangString(), 0, false);
                localVariableBinding3.resolvedPosition = i12;
                this.codeStream.record(localVariableBinding3);
                localVariableBinding3.recordInitializationStartPC(0);
                localVariableBinding3.recordInitializationEndPC(i11);
                stackMapFrame.putLocal(i12, new VerificationTypeInfo(11, ConstantPool.JavaLangStringConstantPoolName));
                int i15 = i12 + 1;
                char[] charArray = " ordinal".toCharArray();
                BaseTypeBinding baseTypeBinding = TypeBinding.INT;
                LocalVariableBinding localVariableBinding4 = new LocalVariableBinding(charArray, (TypeBinding) baseTypeBinding, 0, false);
                localVariableBinding4.resolvedPosition = i15;
                this.codeStream.record(localVariableBinding4);
                localVariableBinding4.recordInitializationStartPC(0);
                localVariableBinding4.recordInitializationEndPC(i11);
                stackMapFrame.putLocal(i15, new VerificationTypeInfo(baseTypeBinding));
                i12 += 2;
            }
            if (!methodBinding.declaringClass.isNestedType()) {
                TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                if (typeBindingArr2 != null) {
                    for (TypeBinding typeBinding2 : typeBindingArr2) {
                        stackMapFrame.putLocal(i12, new VerificationTypeInfo(typeBinding2));
                        int i16 = typeBinding2.f102482id;
                        i12 = (i16 == 7 || i16 == 8) ? i12 + 2 : i12 + 1;
                    }
                    return;
                }
                return;
            }
            ReferenceBinding[] syntheticEnclosingInstanceTypes = methodBinding.declaringClass.syntheticEnclosingInstanceTypes();
            if (syntheticEnclosingInstanceTypes != null) {
                int length2 = syntheticEnclosingInstanceTypes.length;
                for (int i17 = 0; i17 < length2; i17++) {
                    LocalVariableBinding localVariableBinding5 = new LocalVariableBinding((" enclosingType" + i17).toCharArray(), (TypeBinding) syntheticEnclosingInstanceTypes[i17], 0, false);
                    localVariableBinding5.resolvedPosition = i12;
                    this.codeStream.record(localVariableBinding5);
                    localVariableBinding5.recordInitializationStartPC(0);
                    localVariableBinding5.recordInitializationEndPC(i11);
                    stackMapFrame.putLocal(i12, new VerificationTypeInfo(syntheticEnclosingInstanceTypes[i17]));
                    i12++;
                }
            }
            TypeBinding[] typeBindingArr3 = methodBinding.parameters;
            if (typeBindingArr3 != null) {
                for (TypeBinding typeBinding3 : typeBindingArr3) {
                    stackMapFrame.putLocal(i12, new VerificationTypeInfo(typeBinding3));
                    int i18 = typeBinding3.f102482id;
                    i12 = (i18 == 7 || i18 == 8) ? i12 + 2 : i12 + 1;
                }
            }
            SyntheticArgumentBinding[] syntheticOuterLocalVariables = methodBinding.declaringClass.syntheticOuterLocalVariables();
            if (syntheticOuterLocalVariables != null) {
                int length3 = syntheticOuterLocalVariables.length;
                for (int i19 = 0; i19 < length3; i19++) {
                    TypeBinding typeBinding4 = syntheticOuterLocalVariables[i19].type;
                    LocalVariableBinding localVariableBinding6 = new LocalVariableBinding((" synthetic" + i19).toCharArray(), typeBinding4, 0, false);
                    localVariableBinding6.resolvedPosition = i12;
                    this.codeStream.record(localVariableBinding6);
                    localVariableBinding6.recordInitializationStartPC(0);
                    localVariableBinding6.recordInitializationEndPC(i11);
                    stackMapFrame.putLocal(i12, new VerificationTypeInfo(typeBinding4));
                    int i20 = typeBinding4.f102482id;
                    i12 = (i20 == 7 || i20 == 8) ? i12 + 2 : i12 + 1;
                }
            }
        }
    }

    private void initializeHeader(ClassFile classFile, int i10) {
        byte[] bArr = this.header;
        int i11 = this.headerOffset;
        int i12 = i11 + 1;
        this.headerOffset = i12;
        bArr[i11] = -54;
        int i13 = i11 + 2;
        this.headerOffset = i13;
        bArr[i12] = -2;
        int i14 = i11 + 3;
        this.headerOffset = i14;
        bArr[i13] = Opcodes.OPC_invokedynamic;
        int i15 = i11 + 4;
        this.headerOffset = i15;
        bArr[i14] = Opcodes.OPC_arraylength;
        long j10 = this.targetJDK;
        int i16 = i11 + 5;
        this.headerOffset = i16;
        bArr[i15] = (byte) (j10 >> 8);
        int i17 = i11 + 6;
        this.headerOffset = i17;
        bArr[i16] = (byte) j10;
        int i18 = i11 + 7;
        this.headerOffset = i18;
        bArr[i17] = (byte) (j10 >> 24);
        int i19 = i11 + 8;
        this.headerOffset = i19;
        bArr[i18] = (byte) (j10 >> 16);
        this.constantPoolOffset = i19;
        this.headerOffset = i11 + 10;
        this.constantPool.initialize(this);
        this.enclosingClassFile = classFile;
        byte[] bArr2 = this.contents;
        int i20 = this.contentsOffset;
        int i21 = i20 + 1;
        this.contentsOffset = i21;
        bArr2[i20] = (byte) (i10 >> 8);
        this.contentsOffset = i20 + 2;
        bArr2[i21] = (byte) i10;
    }

    private void initializeLocals(boolean z10, int i10, StackMapFrame stackMapFrame) {
        VerificationTypeInfo[] verificationTypeInfoArr = stackMapFrame.locals;
        int length = verificationTypeInfoArr.length;
        for (int i11 = !z10 ? 1 : 0; i11 < length; i11++) {
            verificationTypeInfoArr[i11] = null;
        }
        int i12 = this.codeStream.allLocalsCounter;
        for (int i13 = 0; i13 < i12; i13++) {
            LocalVariableBinding localVariableBinding = this.codeStream.locals[i13];
            if (localVariableBinding != null) {
                int i14 = localVariableBinding.resolvedPosition;
                TypeBinding typeBinding = localVariableBinding.type;
                int i15 = 0;
                while (true) {
                    if (i15 >= localVariableBinding.initializationCount) {
                        break;
                    }
                    int[] iArr = localVariableBinding.initializationPCs;
                    int i16 = i15 << 1;
                    int i17 = iArr[i16];
                    int i18 = iArr[i16 + 1];
                    if (i10 >= i17 && i10 < i18) {
                        VerificationTypeInfo[] verificationTypeInfoArr2 = stackMapFrame.locals;
                        if (verificationTypeInfoArr2[i14] == null) {
                            verificationTypeInfoArr2[i14] = new VerificationTypeInfo(typeBinding);
                        }
                    } else {
                        i15++;
                    }
                }
            }
        }
    }

    private boolean jdk16packageInfoAnnotation(long j10, long j11) {
        return this.targetJDK <= ClassFileConstants.JDK1_6 && j11 == 8796093022208L && j10 != 0 && (j10 & 8796093022208L) == 0;
    }

    private final void resizeContents(int i10) {
        byte[] bArr = this.contents;
        int length = bArr.length;
        if (length >= i10) {
            i10 = length;
        }
        byte[] bArr2 = new byte[i10 + length];
        this.contents = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, length);
    }

    private VerificationTypeInfo retrieveLocal(int i10, int i11) {
        int i12 = this.codeStream.allLocalsCounter;
        for (int i13 = 0; i13 < i12; i13++) {
            LocalVariableBinding localVariableBinding = this.codeStream.locals[i13];
            if (localVariableBinding != null && i11 == localVariableBinding.resolvedPosition) {
                for (int i14 = 0; i14 < localVariableBinding.initializationCount; i14++) {
                    int[] iArr = localVariableBinding.initializationPCs;
                    int i15 = i14 << 1;
                    int i16 = iArr[i15];
                    int i17 = iArr[i15 + 1];
                    if (i10 >= i16 && i10 < i17) {
                        return new VerificationTypeInfo(localVariableBinding.type);
                    }
                }
            }
        }
        return null;
    }

    private int scanType(char[] cArr, int i10) {
        char c10 = cArr[i10];
        if (c10 != 'F') {
            if (c10 == 'L') {
                return CharOperation.indexOf(';', cArr, i10 + 1);
            }
            if (c10 != 'S' && c10 != 'I' && c10 != 'J' && c10 != 'Z') {
                if (c10 == '[') {
                    return scanType(cArr, i10 + 1);
                }
                switch (c10) {
                    case 'B':
                    case 'C':
                    case 'D':
                        break;
                    default:
                        throw new IllegalArgumentException();
                }
            }
        }
        return i10;
    }

    private final int u1At(byte[] bArr, int i10, int i11) {
        return bArr[i10 + i11] & 255;
    }

    private final int u2At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        return ((bArr[i12] & 255) << 8) + (bArr[i12 + 1] & 255);
    }

    private final long u4At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11 + 2;
        return ((bArr[r7] & 255) << 24) + ((bArr[r7 + 1] & 255) << 16) + ((bArr[i12] & 255) << 8) + (bArr[r7 + 3] & 255);
    }

    private int writeArgumentName(char[] cArr, int i10, int i11) {
        int i12;
        if (i11 == 0) {
            this.contentsOffset += 7;
            i12 = 11;
        } else {
            i12 = 4;
        }
        if (this.contentsOffset + i12 > this.contents.length) {
            resizeContents(i12);
        }
        int literalIndex = cArr == null ? 0 : this.constantPool.literalIndex(cArr);
        byte[] bArr = this.contents;
        int i13 = this.contentsOffset;
        int i14 = i13 + 1;
        this.contentsOffset = i14;
        bArr[i13] = (byte) (literalIndex >> 8);
        int i15 = i13 + 2;
        this.contentsOffset = i15;
        bArr[i14] = (byte) literalIndex;
        int i16 = 36880 & i10;
        int i17 = i13 + 3;
        this.contentsOffset = i17;
        bArr[i15] = (byte) (i16 >> 8);
        this.contentsOffset = i13 + 4;
        bArr[i17] = (byte) i16;
        return i11 + 1;
    }

    public void addAbstractMethod(AbstractMethodDeclaration abstractMethodDeclaration, MethodBinding methodBinding) {
        generateMethodInfoHeader(methodBinding);
        completeMethodInfo(methodBinding, this.contentsOffset, generateMethodInfoAttributes(methodBinding));
    }

    public void addAttributes() {
        int i10;
        TypeDeclaration typeDeclaration;
        Annotation[] annotationArr;
        byte[] bArr = this.contents;
        int i11 = this.methodCountOffset;
        int i12 = i11 + 1;
        this.methodCountOffset = i12;
        int i13 = this.methodCount;
        bArr[i11] = (byte) (i13 >> 8);
        bArr[i12] = (byte) i13;
        int i14 = this.contentsOffset;
        this.contentsOffset = i14 + 2;
        if ((this.produceAttributes & 1) != 0) {
            String replace = new String(this.referenceBinding.scope.referenceCompilationUnit().getFileName()).replace(JavaElement.JEM_ESCAPE, '/');
            int lastIndexOf = replace.lastIndexOf(47);
            if (lastIndexOf != -1) {
                replace = replace.substring(lastIndexOf + 1, replace.length());
            }
            i10 = generateSourceAttribute(replace);
        } else {
            i10 = 0;
        }
        if (this.referenceBinding.isDeprecated()) {
            i10 += generateDeprecatedAttribute();
        }
        char[] genericSignature = this.referenceBinding.genericSignature();
        if (genericSignature != null) {
            i10 += generateSignatureAttribute(genericSignature);
        }
        if (this.targetJDK >= ClassFileConstants.JDK1_5 && this.referenceBinding.isNestedType() && !this.referenceBinding.isMemberType()) {
            i10 += generateEnclosingMethodAttribute();
        }
        if (this.targetJDK >= ClassFileConstants.JDK1_4 && (typeDeclaration = this.referenceBinding.scope.referenceContext) != null && (annotationArr = typeDeclaration.annotations) != null) {
            i10 += generateRuntimeAnnotations(annotationArr, typeDeclaration.isPackageInfo() ? 8796093022208L : this.referenceBinding.isAnnotationType() ? 4466765987840L : 9007267974217728L);
        }
        if (this.referenceBinding.isHierarchyInconsistent()) {
            ReferenceBinding referenceBinding = this.referenceBinding.superclass;
            if (referenceBinding != null) {
                this.missingTypes = referenceBinding.collectMissingTypes(this.missingTypes);
            }
            for (ReferenceBinding referenceBinding2 : this.referenceBinding.superInterfaces()) {
                this.missingTypes = referenceBinding2.collectMissingTypes(this.missingTypes);
            }
            i10 += generateHierarchyInconsistentAttribute();
        }
        List list = this.bootstrapMethods;
        if (list != null && !list.isEmpty()) {
            i10 += generateBootstrapMethods(this.bootstrapMethods);
        }
        Map<TypeBinding, Boolean> map = this.innerClassesBindings;
        int size = map != null ? map.size() : 0;
        if (size != 0) {
            ReferenceBinding[] referenceBindingArr = new ReferenceBinding[size];
            this.innerClassesBindings.o().toArray(referenceBindingArr);
            Arrays.sort(referenceBindingArr, new Comparator() {
                @Override
                public int compare(Object obj, Object obj2) {
                    TypeBinding typeBinding = (TypeBinding) obj;
                    TypeBinding typeBinding2 = (TypeBinding) obj2;
                    Boolean bool = ClassFile.this.innerClassesBindings.get(obj);
                    Boolean bool2 = ClassFile.this.innerClassesBindings.get(obj2);
                    if (bool.booleanValue()) {
                        if (!bool2.booleanValue()) {
                            return 1;
                        }
                    } else if (bool2.booleanValue()) {
                        return -1;
                    }
                    return CharOperation.compareTo(typeBinding.constantPoolName(), typeBinding2.constantPoolName());
                }
            });
            i10 += generateInnerClassAttribute(size, referenceBindingArr);
        }
        if (this.missingTypes != null) {
            generateMissingTypesAttribute();
            i10++;
        }
        int generateTypeAnnotationAttributeForTypeDeclaration = i10 + generateTypeAnnotationAttributeForTypeDeclaration();
        if (this.targetJDK >= ClassFileConstants.JDK11) {
            generateTypeAnnotationAttributeForTypeDeclaration += generateNestAttributes();
        }
        if (i14 + 2 >= this.contents.length) {
            resizeContents(2);
        }
        byte[] bArr2 = this.contents;
        bArr2[i14] = (byte) (generateTypeAnnotationAttributeForTypeDeclaration >> 8);
        bArr2[i14 + 1] = (byte) generateTypeAnnotationAttributeForTypeDeclaration;
        ConstantPool constantPool = this.constantPool;
        byte[] bArr3 = constantPool.poolContent;
        this.header = bArr3;
        this.headerOffset = constantPool.currentOffset;
        int i15 = constantPool.currentIndex;
        int i16 = this.constantPoolOffset;
        int i17 = i16 + 1;
        this.constantPoolOffset = i17;
        bArr3[i16] = (byte) (i15 >> 8);
        bArr3[i17] = (byte) i15;
    }

    public void addDefaultAbstractMethods() {
        for (MethodBinding methodBinding : this.referenceBinding.getDefaultAbstractMethods()) {
            generateMethodInfoHeader(methodBinding);
            completeMethodInfo(methodBinding, this.contentsOffset, generateMethodInfoAttributes(methodBinding));
        }
    }

    public void addFieldInfos() {
        SourceTypeBinding sourceTypeBinding = this.referenceBinding;
        FieldBinding[] syntheticFields = sourceTypeBinding.syntheticFields();
        int fieldCount = sourceTypeBinding.fieldCount() + (syntheticFields == null ? 0 : syntheticFields.length);
        if (fieldCount > 65535) {
            this.referenceBinding.scope.problemReporter().tooManyFields(this.referenceBinding.scope.referenceType());
        }
        byte[] bArr = this.contents;
        int i10 = this.contentsOffset;
        int i11 = i10 + 1;
        this.contentsOffset = i11;
        bArr[i10] = (byte) (fieldCount >> 8);
        this.contentsOffset = i10 + 2;
        bArr[i11] = (byte) fieldCount;
        FieldDeclaration[] fieldDeclarationArr = sourceTypeBinding.scope.referenceContext.fields;
        int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            FieldBinding fieldBinding = fieldDeclarationArr[i12].binding;
            if (fieldBinding != null) {
                addFieldInfo(fieldBinding);
            }
        }
        if (syntheticFields != null) {
            for (FieldBinding fieldBinding2 : syntheticFields) {
                addFieldInfo(fieldBinding2);
            }
        }
    }

    public void addModuleAttributes(ModuleBinding moduleBinding, Annotation[] annotationArr, CompilationUnitDeclaration compilationUnitDeclaration) {
        int i10;
        int i11 = this.contentsOffset;
        this.contentsOffset = i11 + 2;
        if ((this.produceAttributes & 1) != 0) {
            String replace = new String(compilationUnitDeclaration.getFileName()).replace(JavaElement.JEM_ESCAPE, '/');
            int lastIndexOf = replace.lastIndexOf(47);
            if (lastIndexOf != -1) {
                replace = replace.substring(lastIndexOf + 1, replace.length());
            }
            i10 = generateSourceAttribute(replace);
        } else {
            i10 = 0;
        }
        int generateModuleAttribute = i10 + generateModuleAttribute(compilationUnitDeclaration.moduleDeclaration);
        if (annotationArr != null) {
            generateModuleAttribute += generateRuntimeAnnotations(annotationArr, 2305843009213693952L);
        }
        char[] cArr = compilationUnitDeclaration.moduleDeclaration.binding.mainClassName;
        if (cArr != null) {
            generateModuleAttribute += generateModuleMainClassAttribute(CharOperation.replaceOnCopy(cArr, '.', '/'));
        }
        char[][] packageNamesForClassFile = compilationUnitDeclaration.moduleDeclaration.binding.getPackageNamesForClassFile();
        if (packageNamesForClassFile != null) {
            generateModuleAttribute += generateModulePackagesAttribute(packageNamesForClassFile);
        }
        if (i11 + 2 >= this.contents.length) {
            resizeContents(2);
        }
        byte[] bArr = this.contents;
        bArr[i11] = (byte) (generateModuleAttribute >> 8);
        bArr[i11 + 1] = (byte) generateModuleAttribute;
        ConstantPool constantPool = this.constantPool;
        byte[] bArr2 = constantPool.poolContent;
        this.header = bArr2;
        this.headerOffset = constantPool.currentOffset;
        int i12 = constantPool.currentIndex;
        int i13 = this.constantPoolOffset;
        int i14 = i13 + 1;
        this.constantPoolOffset = i14;
        bArr2[i13] = (byte) (i12 >> 8);
        bArr2[i14] = (byte) i12;
    }

    public void addProblemClinit(CategorizedProblem[] categorizedProblemArr) {
        String str;
        int i10;
        generateMethodInfoHeaderForClinit();
        int i11 = this.contentsOffset;
        int i12 = i11 - 2;
        this.contentsOffset = i11;
        generateCodeAttributeHeader();
        this.codeStream.resetForProblemClinit(this);
        if (categorizedProblemArr != null) {
            int length = categorizedProblemArr.length;
            StringBuffer stringBuffer = new StringBuffer(25);
            int i13 = 0;
            i10 = 0;
            for (int i14 = 0; i14 < length; i14++) {
                CategorizedProblem categorizedProblem = categorizedProblemArr[i14];
                if (categorizedProblem != null && categorizedProblem.isError()) {
                    stringBuffer.append("\t" + categorizedProblem.getMessage() + "\n");
                    i13++;
                    if (i10 == 0) {
                        i10 = categorizedProblem.getSourceLineNumber();
                    }
                    categorizedProblemArr[i14] = null;
                }
            }
            if (i13 > 1) {
                stringBuffer.insert(0, Messages.compilation_unresolvedProblems);
            } else {
                stringBuffer.insert(0, Messages.compilation_unresolvedProblem);
            }
            str = stringBuffer.toString();
        } else {
            str = "";
            i10 = 0;
        }
        this.codeStream.generateCodeAttributeForProblemMethod(str);
        completeCodeAttributeForClinit(i11, i10);
        if (this.contentsOffset + 2 >= this.contents.length) {
            resizeContents(2);
        }
        byte[] bArr = this.contents;
        bArr[i12] = (byte) 0;
        bArr[i11 - 1] = (byte) 1;
    }

    public void addProblemConstructor(AbstractMethodDeclaration abstractMethodDeclaration, MethodBinding methodBinding, CategorizedProblem[] categorizedProblemArr) {
        String str;
        int i10;
        if (methodBinding.declaringClass.isInterface()) {
            abstractMethodDeclaration.abort(8, null);
        }
        generateMethodInfoHeader(methodBinding, methodBinding.modifiers & (-3329));
        int i11 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(methodBinding) + 1;
        int i12 = this.contentsOffset;
        generateCodeAttributeHeader();
        this.codeStream.reset(abstractMethodDeclaration, this);
        int i13 = 0;
        if (categorizedProblemArr != null) {
            int length = categorizedProblemArr.length;
            StringBuffer stringBuffer = new StringBuffer(25);
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            while (i14 < length) {
                CategorizedProblem categorizedProblem = categorizedProblemArr[i14];
                if (categorizedProblem != null && categorizedProblem.isError()) {
                    stringBuffer.append("\t" + categorizedProblem.getMessage() + "\n");
                    i15++;
                    if (i16 == 0) {
                        i16 = categorizedProblem.getSourceLineNumber();
                    }
                }
                i14++;
                i13 = 0;
            }
            if (i15 > 1) {
                stringBuffer.insert(i13, Messages.compilation_unresolvedProblems);
            } else {
                stringBuffer.insert(i13, Messages.compilation_unresolvedProblem);
            }
            str = stringBuffer.toString();
            i10 = i16;
        } else {
            str = "";
            i10 = 0;
        }
        this.codeStream.generateCodeAttributeForProblemMethod(str);
        completeCodeAttributeForProblemMethod(abstractMethodDeclaration, methodBinding, i12, ((SourceTypeBinding) methodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions(), i10);
        completeMethodInfo(methodBinding, i11, generateMethodInfoAttributes);
    }

    public void addProblemMethod(AbstractMethodDeclaration abstractMethodDeclaration, MethodBinding methodBinding, CategorizedProblem[] categorizedProblemArr) {
        String str;
        int i10;
        if (methodBinding.isAbstract() && methodBinding.declaringClass.isInterface()) {
            abstractMethodDeclaration.abort(8, null);
        }
        generateMethodInfoHeader(methodBinding, methodBinding.modifiers & (-3329));
        int i11 = this.contentsOffset;
        int i12 = 1;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(methodBinding) + 1;
        int i13 = this.contentsOffset;
        generateCodeAttributeHeader();
        this.codeStream.reset(abstractMethodDeclaration, this);
        int i14 = 0;
        if (categorizedProblemArr != null) {
            int length = categorizedProblemArr.length;
            StringBuffer stringBuffer = new StringBuffer(25);
            int i15 = 0;
            int i16 = 0;
            i10 = 0;
            while (i15 < length) {
                CategorizedProblem categorizedProblem = categorizedProblemArr[i15];
                if (categorizedProblem != null && categorizedProblem.isError() && categorizedProblem.getSourceStart() >= abstractMethodDeclaration.declarationSourceStart && categorizedProblem.getSourceEnd() <= abstractMethodDeclaration.declarationSourceEnd) {
                    stringBuffer.append("\t" + categorizedProblem.getMessage() + "\n");
                    i16++;
                    if (i10 == 0) {
                        i10 = categorizedProblem.getSourceLineNumber();
                    }
                    categorizedProblemArr[i15] = null;
                }
                i15++;
                i14 = 0;
                i12 = 1;
            }
            if (i16 > i12) {
                stringBuffer.insert(i14, Messages.compilation_unresolvedProblems);
            } else {
                stringBuffer.insert(i14, Messages.compilation_unresolvedProblem);
            }
            str = stringBuffer.toString();
        } else {
            str = "";
            i10 = 0;
        }
        this.codeStream.generateCodeAttributeForProblemMethod(str);
        completeCodeAttributeForProblemMethod(abstractMethodDeclaration, methodBinding, i13, ((SourceTypeBinding) methodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions(), i10);
        completeMethodInfo(methodBinding, i11, generateMethodInfoAttributes);
    }

    public void addSpecialMethods() {
        boolean z10;
        generateMissingAbstractMethods(this.referenceBinding.scope.referenceType().missingAbstractMethods, this.referenceBinding.scope.referenceCompilationUnit().compilationResult);
        for (MethodBinding methodBinding : this.referenceBinding.getDefaultAbstractMethods()) {
            generateMethodInfoHeader(methodBinding);
            completeMethodInfo(methodBinding, this.contentsOffset, generateMethodInfoAttributes(methodBinding));
        }
        SyntheticMethodBinding syntheticMethodBinding = null;
        int i10 = 0;
        boolean z11 = true;
        while (z11) {
            SyntheticMethodBinding[] syntheticMethods = this.referenceBinding.syntheticMethods();
            int length = syntheticMethods == null ? 0 : syntheticMethods.length;
            if (i10 != length) {
                boolean z12 = false;
                for (int i11 = i10; i11 < length; i11++) {
                    SyntheticMethodBinding syntheticMethodBinding2 = syntheticMethods[i11];
                    switch (syntheticMethodBinding2.purpose) {
                        case 1:
                        case 3:
                            addSyntheticFieldReadAccessMethod(syntheticMethodBinding2);
                            break;
                        case 2:
                        case 4:
                            addSyntheticFieldWriteAccessMethod(syntheticMethodBinding2);
                            break;
                        case 5:
                        case 7:
                        case 8:
                            addSyntheticMethodAccessMethod(syntheticMethodBinding2);
                            break;
                        case 6:
                            addSyntheticConstructorAccessMethod(syntheticMethodBinding2);
                            break;
                        case 9:
                            addSyntheticEnumValuesMethod(syntheticMethodBinding2);
                            break;
                        case 10:
                            addSyntheticEnumValueOfMethod(syntheticMethodBinding2);
                            break;
                        case 11:
                            addSyntheticSwitchTable(syntheticMethodBinding2);
                            break;
                        case 12:
                            addSyntheticEnumInitializationMethod(syntheticMethodBinding2);
                            break;
                        case 13:
                            syntheticMethodBinding2.lambda.generateCode(this.referenceBinding.scope, this);
                            z12 = true;
                            break;
                        case 14:
                            addSyntheticArrayConstructor(syntheticMethodBinding2);
                            break;
                        case 15:
                            addSyntheticArrayClone(syntheticMethodBinding2);
                            break;
                        case 16:
                            addSyntheticFactoryMethod(syntheticMethodBinding2);
                            break;
                        case 17:
                            syntheticMethodBinding = syntheticMethodBinding2;
                            break;
                    }
                }
                z11 = z12;
                i10 = length;
            } else {
                z11 = false;
            }
        }
        if (syntheticMethodBinding != null) {
            this.codeStream.wideMode = false;
            int i12 = 0;
            do {
                try {
                    i12 = this.contentsOffset;
                    addSyntheticDeserializeLambda(syntheticMethodBinding, this.referenceBinding.syntheticMethods());
                    z10 = false;
                } catch (AbortMethod e10) {
                    if (e10.compilationResult != CodeStream.RESTART_IN_WIDE_MODE) {
                        throw new AbortType(this.referenceBinding.scope.referenceContext.compilationResult, e10.problem);
                    }
                    this.contentsOffset = i12;
                    this.methodCount--;
                    this.codeStream.resetInWideMode();
                    z10 = true;
                }
            } while (z10);
        }
    }

    public void addSyntheticArrayClone(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForArrayClone(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticArrayConstructor(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForArrayConstructor(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticConstructorAccessMethod(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForConstructorAccess(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticDeserializeLambda(SyntheticMethodBinding syntheticMethodBinding, SyntheticMethodBinding[] syntheticMethodBindingArr) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForDeserializeLambda(syntheticMethodBinding, syntheticMethodBindingArr);
        if (this.codeStream.position > 65535) {
            this.referenceBinding.scope.problemReporter().bytecodeExceeds64KLimit(syntheticMethodBinding, this.referenceBinding.sourceStart(), this.referenceBinding.sourceEnd());
        }
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticEnumInitializationMethod(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForEnumInitializationMethod(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticEnumValueOfMethod(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForEnumValueOf(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        if ((this.produceAttributes & 64) != 0) {
            i12 += generateMethodParameters(syntheticMethodBinding);
        }
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticEnumValuesMethod(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForEnumValues(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticFactoryMethod(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForFactoryMethod(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticFieldReadAccessMethod(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForFieldReadAccess(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticFieldWriteAccessMethod(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForFieldWriteAccess(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticMethodAccessMethod(SyntheticMethodBinding syntheticMethodBinding) {
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForMethodAccess(syntheticMethodBinding);
        completeCodeAttributeForSyntheticMethod(syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    public void addSyntheticSwitchTable(SyntheticMethodBinding syntheticMethodBinding) {
        SwitchStatement switchStatement;
        generateMethodInfoHeader(syntheticMethodBinding);
        int i10 = this.contentsOffset;
        int generateMethodInfoAttributes = generateMethodInfoAttributes(syntheticMethodBinding);
        int i11 = this.contentsOffset;
        int i12 = generateMethodInfoAttributes + 1;
        generateCodeAttributeHeader();
        this.codeStream.init(this);
        this.codeStream.generateSyntheticBodyForSwitchTable(syntheticMethodBinding);
        if (this.codeStream.position > 65535 && (switchStatement = syntheticMethodBinding.switchStatement) != null) {
            switchStatement.scope.problemReporter().bytecodeExceeds64KLimit(switchStatement);
        }
        completeCodeAttributeForSyntheticMethod(true, syntheticMethodBinding, i11, ((SourceTypeBinding) syntheticMethodBinding.declaringClass).scope.referenceCompilationUnit().compilationResult.getLineSeparatorPositions());
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i12 >> 8);
        bArr[i10 + 1] = (byte) i12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11, types: [int] */
    /* JADX WARN: Type inference failed for: r11v12, types: [int] */
    public void completeCodeAttribute(int i10) {
        int i11;
        CodeStream codeStream = this.codeStream;
        this.contents = codeStream.bCodeStream;
        int i12 = codeStream.classFileOffset;
        int i13 = codeStream.position;
        if (i13 > 65535) {
            AbstractMethodDeclaration abstractMethodDeclaration = codeStream.methodDeclaration;
            if (abstractMethodDeclaration != null) {
                abstractMethodDeclaration.scope.problemReporter().bytecodeExceeds64KLimit(this.codeStream.methodDeclaration);
            } else {
                codeStream.lambdaExpression.scope.problemReporter().bytecodeExceeds64KLimit(this.codeStream.lambdaExpression);
            }
        }
        if (i12 + 20 >= this.contents.length) {
            resizeContents(20);
        }
        CodeStream codeStream2 = this.codeStream;
        int i14 = codeStream2.stackMax;
        byte[] bArr = this.contents;
        int i15 = i10 + 6;
        bArr[i15] = (byte) (i14 >> 8);
        bArr[i10 + 7] = (byte) i14;
        int i16 = codeStream2.maxLocals;
        bArr[i10 + 8] = (byte) (i16 >> 8);
        bArr[i10 + 9] = (byte) i16;
        bArr[i10 + 10] = (byte) (i13 >> 24);
        bArr[i10 + 11] = (byte) (i13 >> 16);
        bArr[i10 + 12] = (byte) (i13 >> 8);
        bArr[i10 + 13] = (byte) i13;
        boolean z10 = false;
        boolean z11 = (this.produceAttributes & 8) != 0;
        ExceptionLabel[] exceptionLabelArr = codeStream2.exceptionLabels;
        int i17 = codeStream2.exceptionLabelsCounter;
        int i18 = 0;
        int i19 = 0;
        while (true) {
            i11 = 2;
            if (i18 >= i17) {
                break;
            }
            i19 += this.codeStream.exceptionLabels[i18].getCount() / 2;
            i18++;
            exceptionLabelArr = exceptionLabelArr;
            z10 = false;
        }
        int i20 = (i19 * 8) + 2;
        if (i20 + i12 >= this.contents.length) {
            resizeContents(i20);
        }
        byte[] bArr2 = this.contents;
        bArr2[i12] = (byte) (i19 >> 8);
        bArr2[i12 + 1] = (byte) i19;
        int i21 = this.codeStream.exceptionLabelsCounter;
        int i22 = i12 + 2;
        for (?? r02 = z10; r02 < i21; r02++) {
            ExceptionLabel exceptionLabel = exceptionLabelArr[r02];
            if (exceptionLabel != null) {
                int count = exceptionLabel.getCount();
                if ((count & 1) != 0) {
                    CodeStream codeStream3 = this.codeStream;
                    AbstractMethodDeclaration abstractMethodDeclaration2 = codeStream3.methodDeclaration;
                    if (abstractMethodDeclaration2 != null) {
                        abstractMethodDeclaration2.scope.problemReporter().abortDueToInternalError(Messages.bind(Messages.abort_invalidExceptionAttribute, new String(this.codeStream.methodDeclaration.selector)), this.codeStream.methodDeclaration);
                    } else {
                        codeStream3.lambdaExpression.scope.problemReporter().abortDueToInternalError(Messages.bind(Messages.abort_invalidExceptionAttribute, new String(this.codeStream.lambdaExpression.binding.selector)), this.codeStream.lambdaExpression);
                    }
                }
                ?? r11 = z10;
                while (r11 < count) {
                    int[] iArr = exceptionLabel.ranges;
                    int i23 = r11 + 1;
                    int i24 = iArr[r11];
                    byte[] bArr3 = this.contents;
                    ExceptionLabel[] exceptionLabelArr2 = exceptionLabelArr;
                    bArr3[i22] = (byte) (i24 >> 8);
                    bArr3[i22 + 1] = (byte) i24;
                    r11 += 2;
                    int i25 = iArr[i23];
                    bArr3[i22 + 2] = (byte) (i25 >> 8);
                    int i26 = i22 + 4;
                    bArr3[i22 + 3] = (byte) i25;
                    int i27 = exceptionLabel.position;
                    if (z11) {
                        ((StackMapFrameCodeStream) this.codeStream).addFramePosition(i27);
                    }
                    byte[] bArr4 = this.contents;
                    bArr4[i26] = (byte) (i27 >> 8);
                    int i28 = i22 + 6;
                    bArr4[i22 + 5] = (byte) i27;
                    TypeBinding typeBinding = exceptionLabel.exceptionType;
                    if (typeBinding == null) {
                        int i29 = i22 + 7;
                        bArr4[i28] = 0;
                        i22 += 8;
                        bArr4[i29] = 0;
                        exceptionLabelArr = exceptionLabelArr2;
                    } else {
                        int literalIndexForType = typeBinding == TypeBinding.NULL ? this.constantPool.literalIndexForType(ConstantPool.JavaLangClassNotFoundExceptionConstantPoolName) : this.constantPool.literalIndexForType(typeBinding);
                        byte[] bArr5 = this.contents;
                        int i30 = i22 + 7;
                        bArr5[i28] = (byte) (literalIndexForType >> 8);
                        i22 += 8;
                        bArr5[i30] = (byte) literalIndexForType;
                        exceptionLabelArr = exceptionLabelArr2;
                    }
                }
            }
            exceptionLabelArr = exceptionLabelArr;
            z10 = false;
            i11 = 2;
        }
        int i31 = i22 + 2;
        if (i22 + 4 >= this.contents.length) {
            resizeContents(i11);
        }
        this.contentsOffset = i31;
        int generateLineNumberAttribute = (this.produceAttributes & i11) != 0 ? generateLineNumberAttribute() : z10;
        if ((this.produceAttributes & 4) != 0) {
            CodeStream codeStream4 = this.codeStream;
            AbstractMethodDeclaration abstractMethodDeclaration3 = codeStream4.methodDeclaration;
            generateLineNumberAttribute += generateLocalVariableTableAttribute(i13, abstractMethodDeclaration3 != null ? abstractMethodDeclaration3.isStatic() : codeStream4.lambdaExpression.binding.isStatic(), z10);
        }
        int i32 = generateLineNumberAttribute;
        if (z11) {
            CodeStream codeStream5 = this.codeStream;
            AbstractMethodDeclaration abstractMethodDeclaration4 = codeStream5.methodDeclaration;
            i32 += generateStackMapTableAttribute(abstractMethodDeclaration4 != null ? abstractMethodDeclaration4.binding : codeStream5.lambdaExpression.binding, i13, i10, i16, false);
        }
        if ((this.produceAttributes & 16) != 0) {
            CodeStream codeStream6 = this.codeStream;
            AbstractMethodDeclaration abstractMethodDeclaration5 = codeStream6.methodDeclaration;
            i32 += generateStackMapAttribute(abstractMethodDeclaration5 != null ? abstractMethodDeclaration5.binding : codeStream6.lambdaExpression.binding, i13, i10, i16, false);
        }
        if ((this.produceAttributes & 32) != 0) {
            i32 += generateTypeAnnotationsOnCodeAttribute();
        }
        byte[] bArr6 = this.contents;
        bArr6[i22] = (byte) (i32 >> 8);
        bArr6[i22 + 1] = (byte) i32;
        int i33 = this.contentsOffset - i15;
        bArr6[i10 + 2] = (byte) (i33 >> 24);
        bArr6[i10 + 3] = (byte) (i33 >> 16);
        bArr6[i10 + 4] = (byte) (i33 >> 8);
        bArr6[i10 + 5] = (byte) i33;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20, types: [int] */
    /* JADX WARN: Type inference failed for: r4v21, types: [int] */
    public void completeCodeAttributeForClinit(int i10) {
        int i11;
        int literalIndexForType;
        CodeStream codeStream = this.codeStream;
        this.contents = codeStream.bCodeStream;
        int i12 = codeStream.classFileOffset;
        int i13 = codeStream.position;
        if (i13 > 65535) {
            codeStream.methodDeclaration.scope.problemReporter().bytecodeExceeds64KLimit(this.codeStream.methodDeclaration.scope.referenceType());
        }
        if (i12 + 20 >= this.contents.length) {
            resizeContents(20);
        }
        CodeStream codeStream2 = this.codeStream;
        int i14 = codeStream2.stackMax;
        byte[] bArr = this.contents;
        int i15 = i10 + 6;
        bArr[i15] = (byte) (i14 >> 8);
        bArr[i10 + 7] = (byte) i14;
        int i16 = codeStream2.maxLocals;
        bArr[i10 + 8] = (byte) (i16 >> 8);
        bArr[i10 + 9] = (byte) i16;
        bArr[i10 + 10] = (byte) (i13 >> 24);
        bArr[i10 + 11] = (byte) (i13 >> 16);
        bArr[i10 + 12] = (byte) (i13 >> 8);
        bArr[i10 + 13] = (byte) i13;
        boolean z10 = false;
        boolean z11 = true;
        boolean z12 = (this.produceAttributes & 8) != 0;
        ExceptionLabel[] exceptionLabelArr = codeStream2.exceptionLabels;
        int i17 = codeStream2.exceptionLabelsCounter;
        int i18 = 0;
        int i19 = 0;
        while (true) {
            i11 = 2;
            if (i18 >= i17) {
                break;
            }
            i19 += this.codeStream.exceptionLabels[i18].getCount() / 2;
            i18++;
            z10 = false;
            z11 = true;
        }
        int i20 = (i19 * 8) + 2;
        if (i20 + i12 >= this.contents.length) {
            resizeContents(i20);
        }
        byte[] bArr2 = this.contents;
        bArr2[i12] = (byte) (i19 >> 8);
        bArr2[i12 + 1] = (byte) i19;
        int i21 = this.codeStream.exceptionLabelsCounter;
        int i22 = i12 + 2;
        for (?? r02 = z10; r02 < i21; r02++) {
            ExceptionLabel exceptionLabel = exceptionLabelArr[r02];
            if (exceptionLabel != null) {
                int count = exceptionLabel.getCount();
                if ((count & 1) != 0) {
                    this.codeStream.methodDeclaration.scope.problemReporter().abortDueToInternalError(Messages.bind(Messages.abort_invalidExceptionAttribute, new String(this.codeStream.methodDeclaration.selector)), this.codeStream.methodDeclaration);
                }
                ?? r42 = z10;
                while (r42 < count) {
                    int[] iArr = exceptionLabel.ranges;
                    int i23 = r42 + 1;
                    int i24 = iArr[r42];
                    byte[] bArr3 = this.contents;
                    ExceptionLabel[] exceptionLabelArr2 = exceptionLabelArr;
                    bArr3[i22] = (byte) (i24 >> 8);
                    bArr3[i22 + 1] = (byte) i24;
                    r42 += 2;
                    int i25 = iArr[i23];
                    bArr3[i22 + 2] = (byte) (i25 >> 8);
                    bArr3[i22 + 3] = (byte) i25;
                    int i26 = exceptionLabel.position;
                    bArr3[i22 + 4] = (byte) (i26 >> 8);
                    int i27 = i22 + 6;
                    bArr3[i22 + 5] = (byte) i26;
                    if (z12) {
                        ((StackMapFrameCodeStream) this.codeStream).addFramePosition(i26);
                    }
                    TypeBinding typeBinding = exceptionLabel.exceptionType;
                    if (typeBinding == null) {
                        byte[] bArr4 = this.contents;
                        int i28 = i22 + 7;
                        bArr4[i27] = 0;
                        i22 += 8;
                        bArr4[i28] = 0;
                        exceptionLabelArr = exceptionLabelArr2;
                    } else {
                        if (typeBinding == TypeBinding.NULL) {
                            literalIndexForType = this.constantPool.literalIndexForType(ConstantPool.JavaLangClassNotFoundExceptionConstantPoolName);
                        } else {
                            literalIndexForType = this.constantPool.literalIndexForType(typeBinding);
                        }
                        byte[] bArr5 = this.contents;
                        int i29 = i22 + 7;
                        bArr5[i27] = (byte) (literalIndexForType >> 8);
                        i22 += 8;
                        bArr5[i29] = (byte) literalIndexForType;
                        exceptionLabelArr = exceptionLabelArr2;
                    }
                }
            }
            exceptionLabelArr = exceptionLabelArr;
            z10 = false;
            z11 = true;
            i11 = 2;
        }
        int i30 = i22 + 2;
        if (i22 + 4 >= this.contents.length) {
            resizeContents(i11);
        }
        this.contentsOffset = i30;
        int generateLineNumberAttribute = (this.produceAttributes & i11) != 0 ? generateLineNumberAttribute() : z10;
        if ((this.produceAttributes & 4) != 0) {
            generateLineNumberAttribute += generateLocalVariableTableAttribute(i13, z11, z10);
        }
        int i31 = generateLineNumberAttribute;
        if ((this.produceAttributes & 8) != 0) {
            i31 += generateStackMapTableAttribute(null, i13, i10, i16, true);
        }
        if ((this.produceAttributes & 16) != 0) {
            i31 += generateStackMapAttribute(null, i13, i10, i16, true);
        }
        if ((this.produceAttributes & 32) != 0) {
            i31 += generateTypeAnnotationsOnCodeAttribute();
        }
        if (i30 >= this.contents.length) {
            resizeContents(i11);
        }
        byte[] bArr6 = this.contents;
        bArr6[i22] = (byte) (i31 >> 8);
        bArr6[i22 + 1] = (byte) i31;
        int i32 = this.contentsOffset - i15;
        bArr6[i10 + 2] = (byte) (i32 >> 24);
        bArr6[i10 + 3] = (byte) (i32 >> 16);
        bArr6[i10 + 4] = (byte) (i32 >> 8);
        bArr6[i10 + 5] = (byte) i32;
    }

    public void completeCodeAttributeForMissingAbstractProblemMethod(MethodBinding methodBinding, int i10, int[] iArr, int i11) {
        CodeStream codeStream = this.codeStream;
        byte[] bArr = codeStream.bCodeStream;
        this.contents = bArr;
        int i12 = codeStream.classFileOffset;
        int i13 = codeStream.stackMax;
        int i14 = i10 + 6;
        bArr[i14] = (byte) (i13 >> 8);
        bArr[i10 + 7] = (byte) i13;
        int i15 = codeStream.maxLocals;
        bArr[i10 + 8] = (byte) (i15 >> 8);
        bArr[i10 + 9] = (byte) i15;
        int i16 = codeStream.position;
        bArr[i10 + 10] = (byte) (i16 >> 24);
        bArr[i10 + 11] = (byte) (i16 >> 16);
        bArr[i10 + 12] = (byte) (i16 >> 8);
        bArr[i10 + 13] = (byte) i16;
        if (i12 + 50 >= bArr.length) {
            resizeContents(50);
        }
        byte[] bArr2 = this.contents;
        int i17 = 0;
        bArr2[i12] = 0;
        int i18 = i12 + 2;
        bArr2[i12 + 1] = 0;
        int i19 = i12 + 4;
        if (i12 + 6 >= bArr2.length) {
            resizeContents(2);
        }
        this.contentsOffset = i19;
        if ((this.produceAttributes & 2) != 0) {
            i17 = generateLineNumberAttribute(i11 == 0 ? Util.getLineNumber(methodBinding.sourceStart(), iArr, 0, iArr.length - 1) : i11);
        }
        int i20 = i17;
        if ((this.produceAttributes & 8) != 0) {
            i20 += generateStackMapTableAttribute(methodBinding, i16, i10, i15, false);
        }
        if ((this.produceAttributes & 16) != 0) {
            i20 += generateStackMapAttribute(methodBinding, i16, i10, i15, false);
        }
        if (i19 >= this.contents.length) {
            resizeContents(2);
        }
        byte[] bArr3 = this.contents;
        bArr3[i18] = (byte) (i20 >> 8);
        bArr3[i12 + 3] = (byte) i20;
        int i21 = this.contentsOffset - i14;
        bArr3[i10 + 2] = (byte) (i21 >> 24);
        bArr3[i10 + 3] = (byte) (i21 >> 16);
        bArr3[i10 + 4] = (byte) (i21 >> 8);
        bArr3[i10 + 5] = (byte) i21;
    }

    public void completeCodeAttributeForProblemMethod(AbstractMethodDeclaration abstractMethodDeclaration, MethodBinding methodBinding, int i10, int[] iArr, int i11) {
        int i12;
        CodeStream codeStream = this.codeStream;
        byte[] bArr = codeStream.bCodeStream;
        this.contents = bArr;
        int i13 = codeStream.classFileOffset;
        int i14 = codeStream.stackMax;
        int i15 = i10 + 6;
        bArr[i15] = (byte) (i14 >> 8);
        bArr[i10 + 7] = (byte) i14;
        int i16 = codeStream.maxLocals;
        bArr[i10 + 8] = (byte) (i16 >> 8);
        bArr[i10 + 9] = (byte) i16;
        int i17 = codeStream.position;
        bArr[i10 + 10] = (byte) (i17 >> 24);
        bArr[i10 + 11] = (byte) (i17 >> 16);
        bArr[i10 + 12] = (byte) (i17 >> 8);
        bArr[i10 + 13] = (byte) i17;
        if (i13 + 50 >= bArr.length) {
            resizeContents(50);
        }
        byte[] bArr2 = this.contents;
        bArr2[i13] = 0;
        int i18 = i13 + 2;
        bArr2[i13 + 1] = 0;
        int i19 = i13 + 4;
        if (i13 + 6 >= bArr2.length) {
            resizeContents(2);
        }
        this.contentsOffset = i19;
        if ((this.produceAttributes & 2) != 0) {
            i12 = generateLineNumberAttribute(i11 == 0 ? Util.getLineNumber(methodBinding.sourceStart(), iArr, 0, iArr.length - 1) : i11);
        } else {
            i12 = 0;
        }
        if ((this.produceAttributes & 4) != 0) {
            i12 += generateLocalVariableTableAttribute(i17, this.codeStream.methodDeclaration.isStatic(), false);
        }
        int i20 = i12;
        if ((this.produceAttributes & 8) != 0) {
            i20 += generateStackMapTableAttribute(methodBinding, i17, i10, i16, false);
        }
        if ((this.produceAttributes & 16) != 0) {
            i20 += generateStackMapAttribute(methodBinding, i17, i10, i16, false);
        }
        if (i19 >= this.contents.length) {
            resizeContents(2);
        }
        byte[] bArr3 = this.contents;
        bArr3[i18] = (byte) (i20 >> 8);
        bArr3[i13 + 3] = (byte) i20;
        int i21 = this.contentsOffset - i15;
        bArr3[i10 + 2] = (byte) (i21 >> 24);
        bArr3[i10 + 3] = (byte) (i21 >> 16);
        bArr3[i10 + 4] = (byte) (i21 >> 8);
        bArr3[i10 + 5] = (byte) i21;
    }

    public void completeCodeAttributeForSyntheticMethod(boolean z10, SyntheticMethodBinding syntheticMethodBinding, int i10, int[] iArr) {
        int i11;
        int i12;
        boolean z11;
        int i13;
        int i14;
        int literalIndexForType;
        CodeStream codeStream = this.codeStream;
        byte[] bArr = codeStream.bCodeStream;
        this.contents = bArr;
        int i15 = codeStream.classFileOffset;
        int i16 = codeStream.stackMax;
        int i17 = i10 + 6;
        bArr[i17] = (byte) (i16 >> 8);
        bArr[i10 + 7] = (byte) i16;
        int i18 = codeStream.maxLocals;
        bArr[i10 + 8] = (byte) (i18 >> 8);
        bArr[i10 + 9] = (byte) i18;
        int i19 = codeStream.position;
        bArr[i10 + 10] = (byte) (i19 >> 24);
        bArr[i10 + 11] = (byte) (i19 >> 16);
        bArr[i10 + 12] = (byte) (i19 >> 8);
        bArr[i10 + 13] = (byte) i19;
        if (i15 + 40 >= bArr.length) {
            resizeContents(40);
        }
        boolean z12 = (this.produceAttributes & 8) != 0;
        int i20 = 2;
        if (z10) {
            CodeStream codeStream2 = this.codeStream;
            ExceptionLabel[] exceptionLabelArr = codeStream2.exceptionLabels;
            int i21 = codeStream2.exceptionLabelsCounter;
            int i22 = 0;
            int i23 = 0;
            while (i22 < i21) {
                i23 += this.codeStream.exceptionLabels[i22].getCount() / 2;
                i22++;
                i20 = 2;
            }
            int i24 = (i23 * 8) + i20;
            if (i24 + i15 >= this.contents.length) {
                resizeContents(i24);
            }
            byte[] bArr2 = this.contents;
            int i25 = i15 + 1;
            bArr2[i15] = (byte) (i23 >> 8);
            i12 = i15 + i20;
            bArr2[i25] = (byte) i23;
            int i26 = this.codeStream.exceptionLabelsCounter;
            int i27 = 0;
            while (i27 < i26) {
                ExceptionLabel exceptionLabel = exceptionLabelArr[i27];
                if (exceptionLabel != null) {
                    int count = exceptionLabel.getCount();
                    if ((count & 1) != 0) {
                        i14 = i12;
                        this.referenceBinding.scope.problemReporter().abortDueToInternalError(Messages.bind(Messages.abort_invalidExceptionAttribute, new String(syntheticMethodBinding.selector), this.referenceBinding.scope.problemReporter().referenceContext));
                    } else {
                        i14 = i12;
                    }
                    i12 = i14;
                    int i28 = 0;
                    while (i28 < count) {
                        int[] iArr2 = exceptionLabel.ranges;
                        int i29 = i28 + 1;
                        ExceptionLabel[] exceptionLabelArr2 = exceptionLabelArr;
                        int i30 = iArr2[i28];
                        int i31 = count;
                        byte[] bArr3 = this.contents;
                        int i32 = i26;
                        bArr3[i12] = (byte) (i30 >> 8);
                        bArr3[i12 + 1] = (byte) i30;
                        i28 += 2;
                        int i33 = iArr2[i29];
                        bArr3[i12 + 2] = (byte) (i33 >> 8);
                        int i34 = i12 + 4;
                        bArr3[i12 + 3] = (byte) i33;
                        int i35 = exceptionLabel.position;
                        if (z12) {
                            ((StackMapFrameCodeStream) this.codeStream).addFramePosition(i35);
                        }
                        byte[] bArr4 = this.contents;
                        bArr4[i34] = (byte) (i35 >> 8);
                        int i36 = i12 + 6;
                        bArr4[i12 + 5] = (byte) i35;
                        TypeBinding typeBinding = exceptionLabel.exceptionType;
                        if (typeBinding == null) {
                            int i37 = i12 + 7;
                            bArr4[i36] = 0;
                            i12 += 8;
                            bArr4[i37] = 0;
                        } else {
                            int i38 = typeBinding.f102482id;
                            if (i38 == 7) {
                                literalIndexForType = this.constantPool.literalIndexForType(ConstantPool.JavaLangNoSuchFieldErrorConstantPoolName);
                            } else if (i38 != 12) {
                                literalIndexForType = this.constantPool.literalIndexForType(typeBinding);
                            } else {
                                literalIndexForType = this.constantPool.literalIndexForType(ConstantPool.JavaLangClassNotFoundExceptionConstantPoolName);
                            }
                            byte[] bArr5 = this.contents;
                            int i39 = i12 + 7;
                            bArr5[i36] = (byte) (literalIndexForType >> 8);
                            i12 += 8;
                            bArr5[i39] = (byte) literalIndexForType;
                        }
                        exceptionLabelArr = exceptionLabelArr2;
                        count = i31;
                        i26 = i32;
                    }
                }
                i27++;
                exceptionLabelArr = exceptionLabelArr;
                i26 = i26;
                i20 = 2;
            }
            i11 = i20;
        } else {
            i11 = 2;
            byte[] bArr6 = this.contents;
            int i40 = i15 + 1;
            bArr6[i15] = 0;
            i12 = i15 + 2;
            bArr6[i40] = 0;
        }
        int i41 = i12;
        int i42 = i41 + 2;
        if (i41 + 4 >= this.contents.length) {
            resizeContents(i11);
        }
        this.contentsOffset = i42;
        if ((this.produceAttributes & i11) != 0) {
            z11 = true;
            i13 = generateLineNumberAttribute(Util.getLineNumber(syntheticMethodBinding.sourceStart, iArr, 0, iArr.length - 1));
        } else {
            z11 = true;
            i13 = 0;
        }
        if ((this.produceAttributes & 4) != 0) {
            i13 += generateLocalVariableTableAttribute(i19, syntheticMethodBinding.isStatic(), z11);
        }
        int i43 = i13;
        if (z12) {
            i43 += generateStackMapTableAttribute(syntheticMethodBinding, i19, i10, i18, false);
        }
        if ((this.produceAttributes & 16) != 0) {
            i43 += generateStackMapAttribute(syntheticMethodBinding, i19, i10, i18, false);
        }
        if (i42 >= this.contents.length) {
            resizeContents(2);
        }
        byte[] bArr7 = this.contents;
        bArr7[i41] = (byte) (i43 >> 8);
        bArr7[i41 + 1] = (byte) i43;
        int i44 = this.contentsOffset - i17;
        bArr7[i10 + 2] = (byte) (i44 >> 24);
        bArr7[i10 + 3] = (byte) (i44 >> 16);
        bArr7[i10 + 4] = (byte) (i44 >> 8);
        bArr7[i10 + 5] = (byte) i44;
    }

    public void completeMethodInfo(MethodBinding methodBinding, int i10, int i11) {
        Argument[] argumentArr;
        if ((this.produceAttributes & 32) != 0) {
            ArrayList arrayList = new ArrayList();
            AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
            if (sourceMethod != null) {
                if ((sourceMethod.bits & 1048576) != 0) {
                    Argument[] argumentArr2 = sourceMethod.arguments;
                    if (argumentArr2 != null) {
                        completeArgumentAnnotationInfo(argumentArr2, arrayList);
                    }
                    Receiver receiver = sourceMethod.receiver;
                    if (receiver != null) {
                        TypeReference typeReference = receiver.type;
                        if ((typeReference.bits & 1048576) != 0) {
                            typeReference.getAllAnnotationContexts(21, arrayList);
                        }
                    }
                }
                if (sourceMethod.annotations != null && !sourceMethod.isClinit() && (sourceMethod.isConstructor() || methodBinding.returnType.f102482id != 6)) {
                    sourceMethod.getAllAnnotationContexts(20, arrayList);
                }
                if (!sourceMethod.isConstructor() && !sourceMethod.isClinit() && methodBinding.returnType.f102482id != 6) {
                    TypeReference typeReference2 = ((MethodDeclaration) sourceMethod).returnType;
                    if ((typeReference2.bits & 1048576) != 0) {
                        typeReference2.getAllAnnotationContexts(20, arrayList);
                    }
                }
                TypeReference[] typeReferenceArr = sourceMethod.thrownExceptions;
                if (typeReferenceArr != null) {
                    int length = typeReferenceArr.length;
                    for (int i12 = 0; i12 < length; i12++) {
                        typeReferenceArr[i12].getAllAnnotationContexts(23, i12, arrayList);
                    }
                }
                TypeParameter[] typeParameters = sourceMethod.typeParameters();
                if (typeParameters != null) {
                    int length2 = typeParameters.length;
                    for (int i13 = 0; i13 < length2; i13++) {
                        TypeParameter typeParameter = typeParameters[i13];
                        if ((typeParameter.bits & 1048576) != 0) {
                            typeParameter.getAllAnnotationContexts(1, i13, arrayList);
                        }
                    }
                }
            } else if (methodBinding.sourceLambda() != null) {
                LambdaExpression sourceLambda = methodBinding.sourceLambda();
                if ((1048576 & sourceLambda.bits) != 0 && (argumentArr = sourceLambda.arguments) != null) {
                    completeArgumentAnnotationInfo(argumentArr, arrayList);
                }
            }
            int size = arrayList.size();
            if (size != 0) {
                AnnotationContext[] annotationContextArr = new AnnotationContext[size];
                arrayList.toArray(annotationContextArr);
                int i14 = 0;
                int i15 = 0;
                for (int i16 = 0; i16 < size; i16++) {
                    if ((annotationContextArr[i16].visibility & 2) != 0) {
                        i15++;
                    } else {
                        i14++;
                    }
                }
                i11 += generateRuntimeTypeAnnotations(annotationContextArr, i14, i15);
            }
        }
        if ((this.produceAttributes & 64) != 0) {
            i11 += generateMethodParameters(methodBinding);
        }
        byte[] bArr = this.contents;
        bArr[i10] = (byte) (i11 >> 8);
        bArr[i10 + 1] = (byte) i11;
    }

    public char[] fileName() {
        return this.constantPool.UTF8Cache.returnKeyFor(2);
    }

    public void generateCodeAttributeHeader() {
        if (this.contentsOffset + 20 >= this.contents.length) {
            resizeContents(20);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.CodeName);
        byte[] bArr = this.contents;
        int i10 = this.contentsOffset;
        int i11 = i10 + 1;
        this.contentsOffset = i11;
        bArr[i10] = (byte) (literalIndex >> 8);
        this.contentsOffset = i10 + 2;
        bArr[i11] = (byte) literalIndex;
        this.contentsOffset = i10 + 14;
    }

    public int generateMethodInfoAttributes(MethodBinding methodBinding) {
        Argument[] arguments;
        int generateRuntimeAnnotationsForParameters;
        Argument[] argumentArr;
        int i10 = this.contentsOffset;
        this.contentsOffset = i10 + 2;
        if (i10 + 4 >= this.contents.length) {
            resizeContents(2);
        }
        ReferenceBinding[] referenceBindingArr = methodBinding.thrownExceptions;
        int generateExceptionsAttribute = referenceBindingArr != Binding.NO_EXCEPTIONS ? generateExceptionsAttribute(referenceBindingArr) : 0;
        if (methodBinding.isDeprecated()) {
            generateExceptionsAttribute += generateDeprecatedAttribute();
        }
        if (this.targetJDK < ClassFileConstants.JDK1_5) {
            if (methodBinding.isSynthetic()) {
                generateExceptionsAttribute += generateSyntheticAttribute();
            }
            if (methodBinding.isVarargs()) {
                generateExceptionsAttribute += generateVarargsAttribute();
            }
        }
        char[] genericSignature = methodBinding.genericSignature();
        if (genericSignature != null) {
            generateExceptionsAttribute += generateSignatureAttribute(genericSignature);
        }
        if (this.targetJDK >= ClassFileConstants.JDK1_4) {
            AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
            if (methodBinding instanceof SyntheticMethodBinding) {
                SyntheticMethodBinding syntheticMethodBinding = (SyntheticMethodBinding) methodBinding;
                if (syntheticMethodBinding.purpose == 7 && CharOperation.equals(syntheticMethodBinding.selector, syntheticMethodBinding.targetMethod.selector)) {
                    sourceMethod = syntheticMethodBinding.targetMethod.sourceMethod();
                }
            }
            if (sourceMethod != null) {
                Annotation[] annotationArr = sourceMethod.annotations;
                if (annotationArr != null) {
                    generateExceptionsAttribute += generateRuntimeAnnotations(annotationArr, methodBinding.isConstructor() ? 1099511627776L : 274877906944L);
                }
                if ((1024 & methodBinding.tagBits) != 0 && (argumentArr = sourceMethod.arguments) != null) {
                    generateRuntimeAnnotationsForParameters = generateRuntimeAnnotationsForParameters(argumentArr);
                    generateExceptionsAttribute += generateRuntimeAnnotationsForParameters;
                }
            } else {
                LambdaExpression sourceLambda = methodBinding.sourceLambda();
                if (sourceLambda != null && (1024 & methodBinding.tagBits) != 0 && (arguments = sourceLambda.arguments()) != null) {
                    int length = methodBinding.parameters.length;
                    int length2 = arguments.length;
                    if (length > length2) {
                        int i11 = length - length2;
                        Argument[] argumentArr2 = new Argument[length];
                        System.arraycopy(arguments, 0, argumentArr2, i11, length2);
                        for (int i12 = 0; i12 < i11; i12++) {
                            argumentArr2[i12] = new Argument(CharOperation.NO_CHAR, 0L, null, 0);
                        }
                        arguments = argumentArr2;
                    }
                    generateRuntimeAnnotationsForParameters = generateRuntimeAnnotationsForParameters(arguments);
                    generateExceptionsAttribute += generateRuntimeAnnotationsForParameters;
                }
            }
        }
        if ((methodBinding.tagBits & 128) != 0) {
            this.missingTypes = methodBinding.collectMissingTypes(this.missingTypes);
        }
        return generateExceptionsAttribute;
    }

    public void generateMethodInfoHeader(MethodBinding methodBinding) {
        generateMethodInfoHeader(methodBinding, methodBinding.modifiers);
    }

    public void generateMethodInfoHeaderForClinit() {
        this.methodCount++;
        if (this.contentsOffset + 10 >= this.contents.length) {
            resizeContents(10);
        }
        byte[] bArr = this.contents;
        int i10 = this.contentsOffset;
        int i11 = i10 + 1;
        this.contentsOffset = i11;
        bArr[i10] = 0;
        this.contentsOffset = i10 + 2;
        bArr[i11] = 8;
        int literalIndex = this.constantPool.literalIndex(ConstantPool.Clinit);
        byte[] bArr2 = this.contents;
        int i12 = this.contentsOffset;
        int i13 = i12 + 1;
        this.contentsOffset = i13;
        bArr2[i12] = (byte) (literalIndex >> 8);
        this.contentsOffset = i12 + 2;
        bArr2[i13] = (byte) literalIndex;
        int literalIndex2 = this.constantPool.literalIndex(ConstantPool.ClinitSignature);
        byte[] bArr3 = this.contents;
        int i14 = this.contentsOffset;
        int i15 = i14 + 1;
        this.contentsOffset = i15;
        bArr3[i14] = (byte) (literalIndex2 >> 8);
        int i16 = i14 + 2;
        this.contentsOffset = i16;
        bArr3[i15] = (byte) literalIndex2;
        int i17 = i14 + 3;
        this.contentsOffset = i17;
        bArr3[i16] = 0;
        this.contentsOffset = i14 + 4;
        bArr3[i17] = 1;
    }

    public void generateMissingAbstractMethods(MethodDeclaration[] methodDeclarationArr, CompilationResult compilationResult) {
        if (methodDeclarationArr != null) {
            TypeDeclaration typeDeclaration = this.referenceBinding.scope.referenceContext;
            int sourceStart = typeDeclaration.sourceStart();
            int sourceEnd = typeDeclaration.sourceEnd();
            for (MethodDeclaration methodDeclaration : methodDeclarationArr) {
                MethodBinding methodBinding = methodDeclaration.binding;
                String str = new String(methodBinding.readableName());
                CategorizedProblem[] categorizedProblemArr = compilationResult.problems;
                int i10 = compilationResult.problemCount;
                for (int i11 = 0; i11 < i10; i11++) {
                    CategorizedProblem categorizedProblem = categorizedProblemArr[i11];
                    if (categorizedProblem != null && categorizedProblem.getID() == 67109264 && categorizedProblem.getMessage().indexOf(str) != -1 && categorizedProblem.getSourceStart() >= sourceStart && categorizedProblem.getSourceEnd() <= sourceEnd) {
                        addMissingAbstractProblemMethod(methodDeclaration, methodBinding, categorizedProblem, compilationResult);
                    }
                }
            }
        }
    }

    public int generateTypeAnnotationsOnCodeAttribute() {
        LocalDeclaration localDeclaration;
        CodeStream codeStream = this.codeStream;
        List list = ((TypeAnnotationCodeStream) codeStream).allTypeAnnotationContexts;
        int i10 = codeStream.allLocalsCounter;
        for (int i11 = 0; i11 < i10; i11++) {
            LocalVariableBinding localVariableBinding = this.codeStream.locals[i11];
            if (!localVariableBinding.isCatchParameter() && (localDeclaration = localVariableBinding.declaration) != null && ((!localDeclaration.isArgument() || (localDeclaration.bits & 536870912) != 0) && localVariableBinding.initializationCount != 0 && (1048576 & localDeclaration.bits) != 0)) {
                localDeclaration.getAllAnnotationContexts((localVariableBinding.tagBits & 8192) == 0 ? 64 : 65, localVariableBinding, list);
            }
        }
        CodeStream codeStream2 = this.codeStream;
        ExceptionLabel[] exceptionLabelArr = codeStream2.exceptionLabels;
        int i12 = codeStream2.exceptionLabelsCounter;
        for (int i13 = 0; i13 < i12; i13++) {
            ExceptionLabel exceptionLabel = exceptionLabelArr[i13];
            TypeReference typeReference = exceptionLabel.exceptionTypeReference;
            if (typeReference != null && (typeReference.bits & 1048576) != 0) {
                typeReference.getAllAnnotationContexts(66, i13, list, exceptionLabel.se7Annotations);
            }
        }
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        AnnotationContext[] annotationContextArr = new AnnotationContext[size];
        list.toArray(annotationContextArr);
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < size; i16++) {
            if ((annotationContextArr[i16].visibility & 2) != 0) {
                i15++;
            } else {
                i14++;
            }
        }
        return generateRuntimeTypeAnnotations(annotationContextArr, i14, i15);
    }

    public byte[] getBytes() {
        if (this.bytes == null) {
            int i10 = this.headerOffset;
            byte[] bArr = new byte[this.contentsOffset + i10];
            this.bytes = bArr;
            System.arraycopy(this.header, 0, bArr, 0, i10);
            System.arraycopy(this.contents, 0, this.bytes, this.headerOffset, this.contentsOffset);
        }
        return this.bytes;
    }

    public char[][] getCompoundName() {
        return CharOperation.splitOn('/', fileName());
    }

    public void initByteArrays(int i10) {
        this.header = new byte[1500];
        this.contents = new byte[i10 < 15 ? 400 : 1500];
    }

    public void initialize(SourceTypeBinding sourceTypeBinding, ClassFile classFile, boolean z10) {
        int literalIndexForType;
        int accessFlags = sourceTypeBinding.getAccessFlags();
        if (sourceTypeBinding.isPrivate()) {
            accessFlags &= -2;
        }
        if (sourceTypeBinding.isProtected()) {
            accessFlags |= 1;
        }
        int i10 = accessFlags & (-2351);
        if (!sourceTypeBinding.isInterface()) {
            i10 |= 32;
        }
        if (sourceTypeBinding.isAnonymousType()) {
            i10 &= -17;
        }
        if ((i10 & BluetoothClass.Device.AUDIO_VIDEO_MICROPHONE) == 1040) {
            i10 &= -1041;
        }
        initializeHeader(classFile, i10);
        int literalIndexForType2 = this.constantPool.literalIndexForType(sourceTypeBinding);
        byte[] bArr = this.contents;
        int i11 = this.contentsOffset;
        int i12 = i11 + 1;
        this.contentsOffset = i12;
        bArr[i11] = (byte) (literalIndexForType2 >> 8);
        this.contentsOffset = i11 + 2;
        bArr[i12] = (byte) literalIndexForType2;
        long j10 = 0;
        int i13 = 0;
        if (sourceTypeBinding.isInterface()) {
            literalIndexForType = this.constantPool.literalIndexForType(ConstantPool.JavaLangObjectConstantPoolName);
        } else {
            ReferenceBinding referenceBinding = sourceTypeBinding.superclass;
            literalIndexForType = referenceBinding != null ? (referenceBinding.tagBits & 128) != 0 ? this.constantPool.literalIndexForType(ConstantPool.JavaLangObjectConstantPoolName) : this.constantPool.literalIndexForType(referenceBinding) : 0;
        }
        byte[] bArr2 = this.contents;
        int i14 = this.contentsOffset;
        int i15 = i14 + 1;
        this.contentsOffset = i15;
        bArr2[i14] = (byte) (literalIndexForType >> 8);
        this.contentsOffset = i14 + 2;
        bArr2[i15] = (byte) literalIndexForType;
        ReferenceBinding[] superInterfaces = sourceTypeBinding.superInterfaces();
        int length = superInterfaces.length;
        int i16 = this.contentsOffset;
        this.contentsOffset = i16 + 2;
        int i17 = 0;
        while (i13 < length) {
            ReferenceBinding referenceBinding2 = superInterfaces[i13];
            if ((referenceBinding2.tagBits & 128) == j10) {
                i17++;
                int literalIndexForType3 = this.constantPool.literalIndexForType(referenceBinding2);
                byte[] bArr3 = this.contents;
                int i18 = this.contentsOffset;
                int i19 = i18 + 1;
                this.contentsOffset = i19;
                bArr3[i18] = (byte) (literalIndexForType3 >> 8);
                this.contentsOffset = i18 + 2;
                bArr3[i19] = (byte) literalIndexForType3;
            }
            i13++;
            j10 = 0;
        }
        byte[] bArr4 = this.contents;
        bArr4[i16] = (byte) (i17 >> 8);
        bArr4[i16 + 1] = (byte) i17;
        this.creatingProblemType = z10;
        this.codeStream.maxFieldCount = sourceTypeBinding.scope.outerMostClassScope().referenceType().maxFieldCount;
    }

    public void initializeForModule(ModuleBinding moduleBinding) {
        initializeHeader(null, 32768);
        int literalIndexForType = this.constantPool.literalIndexForType(TypeConstants.MODULE_INFO_NAME);
        byte[] bArr = this.contents;
        int i10 = this.contentsOffset;
        int i11 = i10 + 1;
        this.contentsOffset = i11;
        bArr[i10] = (byte) (literalIndexForType >> 8);
        int i12 = i10 + 2;
        this.contentsOffset = i12;
        bArr[i11] = (byte) literalIndexForType;
        this.codeStream.maxFieldCount = 0;
        int i13 = i10 + 3;
        this.contentsOffset = i13;
        bArr[i12] = 0;
        int i14 = i10 + 4;
        this.contentsOffset = i14;
        bArr[i13] = 0;
        int i15 = i10 + 5;
        this.contentsOffset = i15;
        bArr[i14] = 0;
        int i16 = i10 + 6;
        this.contentsOffset = i16;
        bArr[i15] = 0;
        int i17 = i10 + 7;
        this.contentsOffset = i17;
        bArr[i16] = 0;
        int i18 = i10 + 8;
        this.contentsOffset = i18;
        bArr[i17] = 0;
        int i19 = i10 + 9;
        this.contentsOffset = i19;
        bArr[i18] = 0;
        this.contentsOffset = i10 + 10;
        bArr[i19] = 0;
    }

    public ClassFile outerMostEnclosingClassFile() {
        ClassFile classFile = this;
        while (true) {
            ClassFile classFile2 = classFile.enclosingClassFile;
            if (classFile2 == null) {
                return classFile;
            }
            classFile = classFile2;
        }
    }

    public int recordBootstrapMethod(FunctionalExpression functionalExpression) {
        if (this.bootstrapMethods == null) {
            this.bootstrapMethods = new ArrayList();
        }
        if (functionalExpression instanceof ReferenceExpression) {
            for (int i10 = 0; i10 < this.bootstrapMethods.size(); i10++) {
                FunctionalExpression functionalExpression2 = (FunctionalExpression) this.bootstrapMethods.get(i10);
                if (functionalExpression2.binding == functionalExpression.binding && TypeBinding.equalsEquals(functionalExpression2.expectedType(), functionalExpression.expectedType())) {
                    functionalExpression.bootstrapMethodNumber = i10;
                    return i10;
                }
            }
        }
        this.bootstrapMethods.add(functionalExpression);
        int size = this.bootstrapMethods.size() - 1;
        functionalExpression.bootstrapMethodNumber = size;
        return size;
    }

    public void recordInnerClasses(TypeBinding typeBinding) {
        recordInnerClasses(typeBinding, false);
    }

    public void reset(SourceTypeBinding sourceTypeBinding, CompilerOptions compilerOptions) {
        if (sourceTypeBinding != null) {
            this.referenceBinding = sourceTypeBinding;
            this.isNestedType = sourceTypeBinding.isNestedType();
        } else {
            this.referenceBinding = null;
            this.isNestedType = false;
        }
        long j10 = compilerOptions.targetJDK;
        this.targetJDK = j10;
        int i10 = compilerOptions.produceDebugAttributes;
        this.produceAttributes = i10;
        if (j10 >= ClassFileConstants.JDK1_6) {
            this.produceAttributes = i10 | 8;
            if (j10 >= ClassFileConstants.JDK1_8) {
                this.produceAttributes = i10 | 40;
                if (!(this.codeStream instanceof TypeAnnotationCodeStream) && this.referenceBinding != null) {
                    this.codeStream = new TypeAnnotationCodeStream(this);
                }
                if (compilerOptions.produceMethodParameters) {
                    this.produceAttributes |= 64;
                }
            }
        } else if (j10 == ClassFileConstants.CLDC_1_1) {
            this.targetJDK = ClassFileConstants.JDK1_1;
            this.produceAttributes = i10 | 16;
        }
        this.bytes = null;
        this.constantPool.reset();
        this.codeStream.reset(this);
        this.constantPoolOffset = 0;
        this.contentsOffset = 0;
        this.creatingProblemType = false;
        this.enclosingClassFile = null;
        this.headerOffset = 0;
        this.methodCount = 0;
        this.methodCountOffset = 0;
        Map<TypeBinding, Boolean> map = this.innerClassesBindings;
        if (map != null) {
            map.clear();
        }
        List list = this.bootstrapMethods;
        if (list != null) {
            list.clear();
        }
        this.missingTypes = null;
        this.visitedTypes = null;
    }

    public void setForMethodInfos() {
        int i10 = this.contentsOffset;
        this.methodCountOffset = i10;
        this.contentsOffset = i10 + 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:81:0x01a6. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:82:0x01a9. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:84:0x01ad. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:487:0x022c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List traverse(MethodBinding methodBinding, int i10, byte[] bArr, int i11, int i12, Map map, boolean z10) {
        byte[] bArr2;
        StackMapFrameCodeStream.ExceptionMarker exceptionMarker;
        int[] iArr;
        int i13;
        int i14;
        ClassFile classFile;
        int i15;
        Map map2;
        int i16;
        int i17;
        StackMapFrameCodeStream.StackMarker stackMarker;
        StackMapFrameCodeStream.ExceptionMarker exceptionMarker2;
        int i18;
        StackMapFrameCodeStream.ExceptionMarker[] exceptionMarkerArr;
        StackMapFrameCodeStream.StackDepthMarker stackDepthMarker;
        int i19;
        byte[] bArr3;
        HashSet hashSet;
        int i20;
        int i21;
        boolean z11;
        int i22;
        boolean z12;
        boolean z13;
        char[] cArr;
        int i23;
        char[] cArr2;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        ClassFile classFile2 = this;
        byte[] bArr4 = bArr;
        int i24 = i12;
        HashSet hashSet2 = new HashSet();
        StackMapFrameCodeStream stackMapFrameCodeStream = (StackMapFrameCodeStream) classFile2.codeStream;
        int[] framePositions = stackMapFrameCodeStream.getFramePositions();
        ConstantPool constantPool = classFile2.constantPool;
        int[] iArr2 = constantPool.offsets;
        byte[] bArr5 = constantPool.poolContent;
        int length = framePositions.length;
        int i25 = framePositions[0];
        StackMapFrameCodeStream.StackDepthMarker[] stackDepthMarkers = stackMapFrameCodeStream.getStackDepthMarkers();
        int length2 = stackDepthMarkers == null ? 0 : stackDepthMarkers.length;
        boolean z18 = length2 != 0;
        StackMapFrameCodeStream.StackDepthMarker stackDepthMarker2 = z18 ? stackDepthMarkers[0] : null;
        StackMapFrameCodeStream.StackMarker[] stackMarkers = stackMapFrameCodeStream.getStackMarkers();
        int length3 = stackMarkers != null ? stackMarkers.length : 0;
        boolean z19 = length3 != 0;
        StackMapFrameCodeStream.StackMarker stackMarker2 = z19 ? stackMarkers[0] : null;
        StackMapFrameCodeStream.ExceptionMarker[] exceptionMarkers = stackMapFrameCodeStream.getExceptionMarkers();
        int length4 = exceptionMarkers == null ? 0 : exceptionMarkers.length;
        boolean z20 = length4 != 0;
        if (z20) {
            exceptionMarker = exceptionMarkers[0];
            bArr2 = bArr5;
        } else {
            bArr2 = bArr5;
            exceptionMarker = null;
        }
        StackMapFrame stackMapFrame = new StackMapFrame(i10);
        if (!z10) {
            classFile2.initializeDefaultLocals(stackMapFrame, methodBinding, i10, i24);
        }
        stackMapFrame.f102475pc = -1;
        classFile2.add(map, stackMapFrame.duplicate());
        classFile2.addRealJumpTarget(hashSet2, -1);
        int i26 = classFile2.codeStream.exceptionLabelsCounter;
        int i27 = 0;
        while (i27 < i26) {
            StackMapFrameCodeStream.ExceptionMarker[] exceptionMarkerArr2 = exceptionMarkers;
            int[] iArr3 = framePositions;
            int i28 = length;
            int i29 = length4;
            byte[] bArr6 = bArr2;
            HashSet hashSet3 = hashSet2;
            int i30 = length3;
            int i31 = i24;
            byte[] bArr7 = bArr4;
            ClassFile classFile3 = classFile2;
            int i32 = i26;
            ExceptionLabel exceptionLabel = classFile3.codeStream.exceptionLabels[i27];
            if (exceptionLabel != null) {
                classFile3.addRealJumpTarget(hashSet3, exceptionLabel.position);
            }
            i27++;
            i24 = i31;
            hashSet2 = hashSet3;
            length3 = i30;
            length4 = i29;
            framePositions = iArr3;
            length = i28;
            bArr2 = bArr6;
            exceptionMarkers = exceptionMarkerArr2;
            i26 = i32;
            classFile2 = classFile3;
            bArr4 = bArr7;
        }
        int i33 = i11;
        HashSet hashSet4 = hashSet2;
        StackMapFrameCodeStream.StackDepthMarker stackDepthMarker3 = stackDepthMarker2;
        StackMapFrameCodeStream.StackMarker stackMarker3 = stackMarker2;
        int i34 = i25;
        StackMapFrameCodeStream.ExceptionMarker exceptionMarker3 = exceptionMarker;
        int i35 = 0;
        int i36 = 0;
        int i37 = 0;
        int i38 = 0;
        while (true) {
            int i39 = i33 - i11;
            int i40 = i33;
            if (z19 && stackMarker3.f102478pc == i39) {
                VerificationTypeInfo[] verificationTypeInfoArr = stackMapFrame.stackItems;
                int i41 = stackMapFrame.numberOfStackItems;
                iArr = framePositions;
                VerificationTypeInfo[] verificationTypeInfoArr2 = new VerificationTypeInfo[i41];
                i13 = length;
                System.arraycopy(verificationTypeInfoArr, 0, verificationTypeInfoArr2, 0, i41);
                stackMarker3.setInfos(verificationTypeInfoArr2);
            } else {
                iArr = framePositions;
                i13 = length;
                if (z19 && stackMarker3.destinationPC == i39) {
                    VerificationTypeInfo[] verificationTypeInfoArr3 = stackMarker3.infos;
                    stackMapFrame.stackItems = verificationTypeInfoArr3;
                    stackMapFrame.numberOfStackItems = verificationTypeInfoArr3.length;
                    int i42 = i35 + 1;
                    if (i42 < length3) {
                        i35 = i42;
                        stackMarker3 = stackMarkers[i42];
                    } else {
                        i35 = i42;
                        z19 = false;
                    }
                }
            }
            if (z18 && stackDepthMarker3.f102477pc == i39) {
                TypeBinding typeBinding = stackDepthMarker3.typeBinding;
                if (typeBinding == null) {
                    stackMapFrame.numberOfStackItems--;
                } else if (stackDepthMarker3.delta > 0) {
                    stackMapFrame.addStackItem(new VerificationTypeInfo(typeBinding));
                } else {
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(typeBinding);
                }
                int i43 = i36 + 1;
                if (i43 < length2) {
                    i36 = i43;
                    stackDepthMarker3 = stackDepthMarkers[i43];
                } else {
                    i36 = i43;
                    z18 = false;
                }
            }
            if (z20 && exceptionMarker3.f102476pc == i39) {
                stackMapFrame.numberOfStackItems = 0;
                stackMapFrame.addStackItem(new VerificationTypeInfo(0, 7, exceptionMarker3.constantPoolName));
                int i44 = i37 + 1;
                if (i44 < length4) {
                    exceptionMarker3 = exceptionMarkers[i44];
                    i37 = i44;
                } else {
                    i37 = i44;
                    z20 = false;
                }
            }
            if (i34 < i39) {
                while (true) {
                    int i45 = i38 + 1;
                    i14 = i13;
                    i34 = i45 < i14 ? iArr[i45] : Integer.MAX_VALUE;
                    i38 = i45;
                    if (i34 < i39) {
                        i13 = i14;
                    }
                }
            } else {
                i14 = i13;
            }
            if (i34 == i39) {
                StackMapFrame duplicate = stackMapFrame.duplicate();
                duplicate.f102475pc = i39;
                classFile = this;
                classFile.initializeLocals(z10 ? true : methodBinding.isStatic(), i39, duplicate);
                i15 = i39;
                map2 = map;
                classFile.add(map2, duplicate);
                int i46 = i38 + 1;
                if (i46 < i14) {
                    i16 = i40;
                    stackMarker = stackMarker3;
                    exceptionMarker2 = exceptionMarker3;
                    i17 = iArr[i46];
                    i18 = 0;
                    i38 = i46;
                } else {
                    i16 = i40;
                    i38 = i46;
                    stackMarker = stackMarker3;
                    exceptionMarker2 = exceptionMarker3;
                    i18 = 0;
                    i17 = Integer.MAX_VALUE;
                }
            } else {
                classFile = this;
                i15 = i39;
                map2 = map;
                i16 = i40;
                i17 = i34;
                stackMarker = stackMarker3;
                exceptionMarker2 = exceptionMarker3;
                i18 = 0;
            }
            byte u1At = (byte) classFile.u1At(bArr, i18, i16);
            switch (u1At) {
                case Byte.MIN_VALUE:
                case AdvertisingSetParameters.TX_POWER_MIN:
                case Float.MIN_EXPONENT:
                case -125:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.numberOfStackItems--;
                    i16++;
                    i22 = i12;
                    break;
                case -124:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    i20 = length3;
                    i21 = length4;
                    i16 += 3;
                    i22 = i12;
                    break;
                case -123:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.LONG);
                    i16++;
                    i22 = i12;
                    break;
                case -122:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.FLOAT);
                    i16++;
                    i22 = i12;
                    break;
                case -121:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.DOUBLE);
                    i16++;
                    i22 = i12;
                    break;
                case -120:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.INT);
                    i16++;
                    i22 = i12;
                    break;
                case -119:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.FLOAT);
                    i16++;
                    i22 = i12;
                    break;
                case -118:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.DOUBLE);
                    i16++;
                    i22 = i12;
                    break;
                case -117:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.INT);
                    i16++;
                    i22 = i12;
                    break;
                case -116:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.LONG);
                    i16++;
                    i22 = i12;
                    break;
                case -115:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.DOUBLE);
                    i16++;
                    i22 = i12;
                    break;
                case -114:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.INT);
                    i16++;
                    i22 = i12;
                    break;
                case -113:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.LONG);
                    i16++;
                    i22 = i12;
                    break;
                case -112:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.FLOAT);
                    i16++;
                    i22 = i12;
                    break;
                case -111:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.BYTE);
                    i16++;
                    i22 = i12;
                    break;
                case MediaPlayer.MEDIA_ERROR_TIMED_OUT:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.CHAR);
                    i16++;
                    i22 = i12;
                    break;
                case -109:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    i20 = length3;
                    i21 = length4;
                    z11 = true;
                    stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.SHORT);
                    i16++;
                    i22 = i12;
                    break;
                case -108:
                case -107:
                case -106:
                case -105:
                case -104:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.numberOfStackItems -= 2;
                    stackMapFrame.addStackItem(TypeBinding.INT);
                    i16++;
                    i22 = i12;
                    break;
                case -103:
                case -102:
                case FrameBuffer.SLOT_DEPTH_STENCIL:
                case -100:
                case -99:
                case -98:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.numberOfStackItems--;
                    classFile.addRealJumpTarget(hashSet, classFile.i2At(bArr, 1, i16) + i15);
                    i16 += 3;
                    i22 = i12;
                    break;
                case -97:
                case -96:
                case -95:
                case -94:
                case -93:
                case -92:
                case -91:
                case -90:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    stackMapFrame.numberOfStackItems -= 2;
                    classFile.addRealJumpTarget(hashSet, classFile.i2At(bArr, 1, i16) + i15);
                    i16 += 3;
                    i22 = i12;
                    break;
                case -89:
                    exceptionMarkerArr = exceptionMarkers;
                    stackDepthMarker = stackDepthMarker3;
                    i19 = i14;
                    bArr3 = bArr2;
                    hashSet = hashSet4;
                    z11 = true;
                    i20 = length3;
                    i21 = length4;
                    classFile.addRealJumpTarget(hashSet, classFile.i2At(bArr, 1, i16) + i15);
                    i16 += 3;
                    classFile.addRealJumpTarget(hashSet, i16 - i11);
                    i22 = i12;
                    break;
                default:
                    switch (u1At) {
                        case -86:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            do {
                                i16++;
                            } while (((i16 - i11) & 3) != 0);
                            classFile.addRealJumpTarget(hashSet, classFile.i4At(bArr, 0, i16) + i15);
                            int i4At = classFile.i4At(bArr, 0, i16 + 4);
                            int i4At2 = classFile.i4At(bArr, 0, i16 + 8);
                            i16 += 12;
                            int i47 = i4At2 - i4At;
                            int i48 = 1;
                            int i49 = i47 + 1;
                            int i50 = 0;
                            while (i50 < i49) {
                                classFile.addRealJumpTarget(hashSet, classFile.i4At(bArr, 0, i16) + i15);
                                i16 += 4;
                                i50++;
                                i48 = 1;
                            }
                            stackMapFrame.numberOfStackItems -= i48;
                            i22 = i12;
                            break;
                        case -85:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            do {
                                i16++;
                            } while (((i16 - i11) & 3) != 0);
                            classFile.addRealJumpTarget(hashSet, classFile.i4At(bArr, 0, i16) + i15);
                            int u4At = (int) classFile.u4At(bArr, 0, i16 + 4);
                            i16 += 8;
                            for (int i51 = 0; i51 < u4At; i51++) {
                                classFile.addRealJumpTarget(hashSet, classFile.i4At(bArr, 0, i16 + 4) + i15);
                                i16 += 8;
                            }
                            stackMapFrame.numberOfStackItems--;
                            i22 = i12;
                            break;
                        case -84:
                        case -83:
                        case -82:
                        case -81:
                        case -80:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            stackMapFrame.numberOfStackItems--;
                            i16++;
                            classFile.addRealJumpTarget(hashSet, i16 - i11);
                            i22 = i12;
                            break;
                        case -79:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            i16++;
                            classFile.addRealJumpTarget(hashSet, i16 - i11);
                            i22 = i12;
                            break;
                        case -78:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            int i52 = iArr2[classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr, 1, i16)])])];
                            char[] utf8At = classFile.utf8At(bArr3, i52 + 3, classFile.u2At(bArr3, 1, i52));
                            if (utf8At.length == 1) {
                                char c10 = utf8At[0];
                                if (c10 == 'F') {
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                } else if (c10 == 'S') {
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                } else if (c10 == 'Z') {
                                    stackMapFrame.addStackItem(TypeBinding.BOOLEAN);
                                } else if (c10 == 'I') {
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                } else if (c10 != 'J') {
                                    switch (c10) {
                                        case 'B':
                                            stackMapFrame.addStackItem(TypeBinding.BYTE);
                                            break;
                                        case 'C':
                                            stackMapFrame.addStackItem(TypeBinding.CHAR);
                                            break;
                                        case 'D':
                                            stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                            break;
                                    }
                                    i22 = i12;
                                    break;
                                } else {
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                }
                            } else if (utf8At[0] == '[') {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, utf8At));
                            } else {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, CharOperation.subarray(utf8At, 1, utf8At.length - 1)));
                            }
                            i16 += 3;
                            i22 = i12;
                        case -77:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            z12 = true;
                            stackMapFrame.numberOfStackItems--;
                            i16 += 3;
                            i22 = i12;
                            break;
                        case -76:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            int i53 = iArr2[classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr, 1, i16)])])];
                            char[] utf8At2 = classFile.utf8At(bArr3, i53 + 3, classFile.u2At(bArr3, 1, i53));
                            stackMapFrame.numberOfStackItems--;
                            if (utf8At2.length == 1) {
                                char c11 = utf8At2[0];
                                if (c11 == 'F') {
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                } else if (c11 == 'S') {
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                } else if (c11 == 'Z') {
                                    stackMapFrame.addStackItem(TypeBinding.BOOLEAN);
                                } else if (c11 == 'I') {
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                } else if (c11 != 'J') {
                                    switch (c11) {
                                        case 'B':
                                            stackMapFrame.addStackItem(TypeBinding.BYTE);
                                            break;
                                        case 'C':
                                            stackMapFrame.addStackItem(TypeBinding.CHAR);
                                            break;
                                        case 'D':
                                            stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                            break;
                                    }
                                    i16 += 3;
                                    i22 = i12;
                                    break;
                                } else {
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                }
                            } else if (utf8At2[0] == '[') {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, utf8At2));
                            } else {
                                z12 = true;
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, CharOperation.subarray(utf8At2, 1, utf8At2.length - 1)));
                                i16 += 3;
                                i22 = i12;
                            }
                            z12 = true;
                            i16 += 3;
                            i22 = i12;
                        case -75:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            stackMapFrame.numberOfStackItems -= 2;
                            i16 += 3;
                            i22 = i12;
                            break;
                        case -74:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            int u2At = classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr, 1, i16)]);
                            int i54 = iArr2[classFile.u2At(bArr3, 3, iArr2[u2At])];
                            char[] utf8At3 = classFile.utf8At(bArr3, i54 + 3, classFile.u2At(bArr3, 1, i54));
                            int i55 = iArr2[classFile.u2At(bArr3, 1, iArr2[u2At])];
                            classFile.utf8At(bArr3, i55 + 3, classFile.u2At(bArr3, 1, i55));
                            stackMapFrame.numberOfStackItems -= classFile.getParametersCount(utf8At3) + 1;
                            char[] returnType = classFile.getReturnType(utf8At3);
                            if (returnType.length == 1) {
                                char c12 = returnType[0];
                                if (c12 == 'F') {
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                } else if (c12 == 'S') {
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                } else if (c12 == 'Z') {
                                    stackMapFrame.addStackItem(TypeBinding.BOOLEAN);
                                } else if (c12 == 'I') {
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                } else if (c12 != 'J') {
                                    switch (c12) {
                                        case 'B':
                                            stackMapFrame.addStackItem(TypeBinding.BYTE);
                                            break;
                                        case 'C':
                                            stackMapFrame.addStackItem(TypeBinding.CHAR);
                                            break;
                                        case 'D':
                                            stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                            break;
                                    }
                                    i22 = i12;
                                    break;
                                } else {
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                }
                            } else if (returnType[0] == '[') {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, returnType));
                            } else {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, CharOperation.subarray(returnType, 1, returnType.length - 1)));
                            }
                            i16 += 3;
                            i22 = i12;
                        case -73:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            int u2At2 = classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr, 1, i16)]);
                            int i56 = iArr2[classFile.u2At(bArr3, 3, iArr2[u2At2])];
                            char[] utf8At4 = classFile.utf8At(bArr3, i56 + 3, classFile.u2At(bArr3, 1, i56));
                            int i57 = iArr2[classFile.u2At(bArr3, 1, iArr2[u2At2])];
                            char[] utf8At5 = classFile.utf8At(bArr3, i57 + 3, classFile.u2At(bArr3, 1, i57));
                            stackMapFrame.numberOfStackItems -= classFile.getParametersCount(utf8At4);
                            if (CharOperation.equals(ConstantPool.Init, utf8At5)) {
                                stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1].tag = 7;
                            }
                            stackMapFrame.numberOfStackItems--;
                            char[] returnType2 = classFile.getReturnType(utf8At4);
                            if (returnType2.length == 1) {
                                char c13 = returnType2[0];
                                if (c13 == 'F') {
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                } else if (c13 == 'S') {
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                } else if (c13 == 'Z') {
                                    stackMapFrame.addStackItem(TypeBinding.BOOLEAN);
                                } else if (c13 == 'I') {
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                } else if (c13 != 'J') {
                                    switch (c13) {
                                        case 'B':
                                            stackMapFrame.addStackItem(TypeBinding.BYTE);
                                            break;
                                        case 'C':
                                            stackMapFrame.addStackItem(TypeBinding.CHAR);
                                            break;
                                        case 'D':
                                            stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                            break;
                                    }
                                    i16 += 3;
                                    i22 = i12;
                                    break;
                                } else {
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                }
                            } else if (returnType2[0] == '[') {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, returnType2));
                            } else {
                                z12 = true;
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, CharOperation.subarray(returnType2, 1, returnType2.length - 1)));
                                i16 += 3;
                                i22 = i12;
                            }
                            z12 = true;
                            i16 += 3;
                            i22 = i12;
                        case -72:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            int u2At3 = classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr, 1, i16)]);
                            int i58 = iArr2[classFile.u2At(bArr3, 3, iArr2[u2At3])];
                            char[] utf8At6 = classFile.utf8At(bArr3, i58 + 3, classFile.u2At(bArr3, 1, i58));
                            int i59 = iArr2[classFile.u2At(bArr3, 1, iArr2[u2At3])];
                            classFile.utf8At(bArr3, i59 + 3, classFile.u2At(bArr3, 1, i59));
                            stackMapFrame.numberOfStackItems -= classFile.getParametersCount(utf8At6);
                            char[] returnType3 = classFile.getReturnType(utf8At6);
                            if (returnType3.length == 1) {
                                char c14 = returnType3[0];
                                if (c14 == 'F') {
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                } else if (c14 == 'S') {
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                } else if (c14 == 'Z') {
                                    stackMapFrame.addStackItem(TypeBinding.BOOLEAN);
                                } else if (c14 == 'I') {
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                } else if (c14 != 'J') {
                                    switch (c14) {
                                        case 'B':
                                            stackMapFrame.addStackItem(TypeBinding.BYTE);
                                            break;
                                        case 'C':
                                            stackMapFrame.addStackItem(TypeBinding.CHAR);
                                            break;
                                        case 'D':
                                            stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                            break;
                                    }
                                    i16 += 3;
                                    i22 = i12;
                                    break;
                                } else {
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                }
                            } else if (returnType3[0] == '[') {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, returnType3));
                            } else {
                                z12 = true;
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, CharOperation.subarray(returnType3, 1, returnType3.length - 1)));
                                i16 += 3;
                                i22 = i12;
                            }
                            z12 = true;
                            i16 += 3;
                            i22 = i12;
                        case -71:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            int u2At4 = classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr, 1, i16)]);
                            int i60 = iArr2[classFile.u2At(bArr3, 3, iArr2[u2At4])];
                            char[] utf8At7 = classFile.utf8At(bArr3, i60 + 3, classFile.u2At(bArr3, 1, i60));
                            int i61 = iArr2[classFile.u2At(bArr3, 1, iArr2[u2At4])];
                            classFile.utf8At(bArr3, i61 + 3, classFile.u2At(bArr3, 1, i61));
                            stackMapFrame.numberOfStackItems -= classFile.getParametersCount(utf8At7) + 1;
                            char[] returnType4 = classFile.getReturnType(utf8At7);
                            if (returnType4.length == 1) {
                                char c15 = returnType4[0];
                                if (c15 == 'F') {
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                } else if (c15 == 'S') {
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                } else if (c15 == 'Z') {
                                    stackMapFrame.addStackItem(TypeBinding.BOOLEAN);
                                } else if (c15 == 'I') {
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                } else if (c15 != 'J') {
                                    switch (c15) {
                                        case 'B':
                                            stackMapFrame.addStackItem(TypeBinding.BYTE);
                                            break;
                                        case 'C':
                                            stackMapFrame.addStackItem(TypeBinding.CHAR);
                                            break;
                                        case 'D':
                                            stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                            break;
                                    }
                                    i16 += 5;
                                    i22 = i12;
                                    break;
                                } else {
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                }
                            } else if (returnType4[0] == '[') {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, returnType4));
                            } else {
                                z12 = true;
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, CharOperation.subarray(returnType4, 1, returnType4.length - 1)));
                                i16 += 5;
                                i22 = i12;
                            }
                            z12 = true;
                            i16 += 5;
                            i22 = i12;
                        case -70:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            i21 = length4;
                            int i62 = iArr2[classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr3, 3, iArr2[classFile.u2At(bArr, 1, i16)])])];
                            char[] utf8At8 = classFile.utf8At(bArr3, i62 + 3, classFile.u2At(bArr3, 1, i62));
                            stackMapFrame.numberOfStackItems -= classFile.getParametersCount(utf8At8);
                            char[] returnType5 = classFile.getReturnType(utf8At8);
                            if (returnType5.length == 1) {
                                char c16 = returnType5[0];
                                if (c16 == 'F') {
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                } else if (c16 == 'S') {
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                } else if (c16 == 'Z') {
                                    stackMapFrame.addStackItem(TypeBinding.BOOLEAN);
                                } else if (c16 == 'I') {
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                } else if (c16 != 'J') {
                                    switch (c16) {
                                        case 'B':
                                            stackMapFrame.addStackItem(TypeBinding.BYTE);
                                            break;
                                        case 'C':
                                            stackMapFrame.addStackItem(TypeBinding.CHAR);
                                            break;
                                        case 'D':
                                            stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                            break;
                                    }
                                    i16 += 5;
                                    i22 = i12;
                                    break;
                                } else {
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                }
                            } else if (returnType5[0] == '[') {
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, returnType5));
                            } else {
                                z12 = true;
                                stackMapFrame.addStackItem(new VerificationTypeInfo(0, CharOperation.subarray(returnType5, 1, returnType5.length - 1)));
                                i16 += 5;
                                i22 = i12;
                            }
                            z12 = true;
                            i16 += 5;
                            i22 = i12;
                        case -69:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            z13 = true;
                            i20 = length3;
                            i21 = length4;
                            int i63 = iArr2[classFile.u2At(bArr3, 1, iArr2[classFile.u2At(bArr, 1, i16)])];
                            VerificationTypeInfo verificationTypeInfo = new VerificationTypeInfo(0, 8, classFile.utf8At(bArr3, i63 + 3, classFile.u2At(bArr3, 1, i63)));
                            verificationTypeInfo.offset = i15;
                            stackMapFrame.addStackItem(verificationTypeInfo);
                            i16 += 3;
                            i22 = i12;
                            break;
                        case -68:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            z13 = true;
                            i20 = length3;
                            i21 = length4;
                            switch (classFile.u1At(bArr, 1, i16)) {
                                case 4:
                                    cArr = new char[]{'[', 'Z'};
                                    break;
                                case 5:
                                    cArr = new char[]{'[', 'C'};
                                    break;
                                case 6:
                                    cArr = new char[]{'[', 'F'};
                                    break;
                                case 7:
                                    cArr = new char[]{'[', 'D'};
                                    break;
                                case 8:
                                    cArr = new char[]{'[', 'B'};
                                    break;
                                case 9:
                                    cArr = new char[]{'[', 'S'};
                                    break;
                                case 10:
                                    cArr = new char[]{'[', 'I'};
                                    break;
                                case 11:
                                    cArr = new char[]{'[', 'J'};
                                    break;
                                default:
                                    cArr = null;
                                    break;
                            }
                            stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(1, cArr);
                            i16 += 2;
                            i22 = i12;
                            break;
                        case -67:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            int i64 = iArr2[classFile.u2At(bArr3, 1, iArr2[classFile.u2At(bArr, 1, i16)])];
                            char[] utf8At9 = classFile.utf8At(bArr3, i64 + 3, classFile.u2At(bArr3, 1, i64));
                            int length5 = utf8At9.length;
                            if (utf8At9[0] != '[') {
                                cArr2 = new char[length5 + 3];
                                i21 = length4;
                                System.arraycopy(utf8At9, 0, cArr2, 2, length5);
                                cArr2[0] = '[';
                                i23 = 1;
                                cArr2[1] = 'L';
                                cArr2[length5 + 2] = ';';
                            } else {
                                i21 = length4;
                                i23 = 1;
                                cArr2 = new char[length5 + 1];
                                System.arraycopy(utf8At9, 0, cArr2, 1, length5);
                                cArr2[0] = '[';
                            }
                            stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - i23] = new VerificationTypeInfo(0, cArr2);
                            i16 += 3;
                            i22 = i12;
                            break;
                        case -66:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            z14 = true;
                            i20 = length3;
                            stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.INT);
                            i16++;
                            i21 = length4;
                            i22 = i12;
                            break;
                        case -65:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            i20 = length3;
                            z14 = true;
                            stackMapFrame.numberOfStackItems--;
                            i16++;
                            classFile.addRealJumpTarget(hashSet, i16 - i11);
                            i21 = length4;
                            i22 = i12;
                            break;
                        case -64:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            int i65 = iArr2[classFile.u2At(bArr3, 1, iArr2[classFile.u2At(bArr, 1, i16)])];
                            i20 = length3;
                            stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(0, classFile.utf8At(bArr3, i65 + 3, classFile.u2At(bArr3, 1, i65)));
                            i16 += 3;
                            i22 = i12;
                            i21 = length4;
                            break;
                        case -63:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1] = new VerificationTypeInfo(TypeBinding.INT);
                            i16 += 3;
                            i22 = i12;
                            i20 = length3;
                            i21 = length4;
                            break;
                        case -62:
                        case -61:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            stackMapFrame.numberOfStackItems--;
                            i16++;
                            i20 = length3;
                            i21 = length4;
                            i22 = i12;
                            break;
                        case -60:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            byte u1At2 = (byte) classFile.u1At(bArr, 1, i16);
                            if (u1At2 == -124) {
                                i16 += 6;
                                i22 = i12;
                                i20 = length3;
                                i21 = length4;
                                break;
                            } else {
                                int u2At5 = classFile.u2At(bArr, 2, i16);
                                switch (u1At2) {
                                    case 21:
                                        stackMapFrame.addStackItem(TypeBinding.INT);
                                        break;
                                    case 22:
                                        stackMapFrame.addStackItem(TypeBinding.LONG);
                                        break;
                                    case 23:
                                        stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                        break;
                                    case 24:
                                        stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                        break;
                                    case 25:
                                        VerificationTypeInfo verificationTypeInfo2 = stackMapFrame.locals[u2At5];
                                        if (verificationTypeInfo2 == null) {
                                            verificationTypeInfo2 = classFile.retrieveLocal(i15, u2At5);
                                        }
                                        stackMapFrame.addStackItem(verificationTypeInfo2);
                                        break;
                                    default:
                                        switch (u1At2) {
                                            case 54:
                                                stackMapFrame.numberOfStackItems--;
                                                break;
                                            case 55:
                                                stackMapFrame.numberOfStackItems--;
                                                break;
                                            case 56:
                                                stackMapFrame.numberOfStackItems--;
                                                break;
                                            case 57:
                                                stackMapFrame.numberOfStackItems--;
                                                break;
                                            case 58:
                                                VerificationTypeInfo[] verificationTypeInfoArr4 = stackMapFrame.locals;
                                                VerificationTypeInfo[] verificationTypeInfoArr5 = stackMapFrame.stackItems;
                                                int i66 = stackMapFrame.numberOfStackItems;
                                                verificationTypeInfoArr4[u2At5] = verificationTypeInfoArr5[i66 - 1];
                                                stackMapFrame.numberOfStackItems = i66 - 1;
                                                break;
                                        }
                                        i22 = i12;
                                        i20 = length3;
                                        i21 = length4;
                                        break;
                                }
                                i16 += 4;
                                i22 = i12;
                                i20 = length3;
                                i21 = length4;
                            }
                        case -59:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            int i67 = iArr2[classFile.u2At(bArr3, 1, iArr2[classFile.u2At(bArr, 1, i16)])];
                            char[] utf8At10 = classFile.utf8At(bArr3, i67 + 3, classFile.u2At(bArr3, 1, i67));
                            stackMapFrame.numberOfStackItems -= classFile.u1At(bArr, 3, i16);
                            int length6 = utf8At10.length;
                            char[] cArr3 = new char[length6];
                            System.arraycopy(utf8At10, 0, cArr3, 0, length6);
                            stackMapFrame.addStackItem(new VerificationTypeInfo(0, cArr3));
                            i16 += 4;
                            i22 = i12;
                            i20 = length3;
                            i21 = length4;
                            break;
                        case -58:
                        case -57:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            hashSet = hashSet4;
                            z15 = true;
                            stackMapFrame.numberOfStackItems--;
                            classFile.addRealJumpTarget(hashSet, classFile.i2At(bArr, 1, i16) + i15);
                            i16 += 3;
                            i22 = i12;
                            i20 = length3;
                            i21 = length4;
                            break;
                        case -56:
                            exceptionMarkerArr = exceptionMarkers;
                            stackDepthMarker = stackDepthMarker3;
                            i19 = i14;
                            bArr3 = bArr2;
                            z15 = true;
                            hashSet = hashSet4;
                            classFile.addRealJumpTarget(hashSet, classFile.i4At(bArr, 1, i16) + i15);
                            i16 += 5;
                            classFile.addRealJumpTarget(hashSet, i16 - i11);
                            i22 = i12;
                            i20 = length3;
                            i21 = length4;
                            break;
                        default:
                            switch (u1At) {
                                case 0:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    i16++;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 1:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    stackMapFrame.addStackItem(TypeBinding.NULL);
                                    i16++;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                    i16++;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 9:
                                case 10:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                    i16++;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 11:
                                case 12:
                                case 13:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                    i16++;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 14:
                                case 15:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                    i16++;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 16:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    stackMapFrame.addStackItem(TypeBinding.BYTE);
                                    i16 += 2;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 17:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                    i16 += 3;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 18:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    int u1At3 = classFile.u1At(bArr3, 0, iArr2[classFile.u1At(bArr, 1, i16)]);
                                    if (u1At3 == 3) {
                                        stackMapFrame.addStackItem(TypeBinding.INT);
                                    } else if (u1At3 == 4) {
                                        stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                    } else if (u1At3 == 7) {
                                        stackMapFrame.addStackItem(new VerificationTypeInfo(16, ConstantPool.JavaLangClassConstantPoolName));
                                    } else if (u1At3 == 8) {
                                        stackMapFrame.addStackItem(new VerificationTypeInfo(11, ConstantPool.JavaLangStringConstantPoolName));
                                    }
                                    i16 += 2;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 19:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    int u1At4 = classFile.u1At(bArr3, 0, iArr2[classFile.u2At(bArr, 1, i16)]);
                                    if (u1At4 == 3) {
                                        stackMapFrame.addStackItem(TypeBinding.INT);
                                    } else if (u1At4 == 4) {
                                        stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                    } else if (u1At4 == 7) {
                                        stackMapFrame.addStackItem(new VerificationTypeInfo(16, ConstantPool.JavaLangClassConstantPoolName));
                                    } else if (u1At4 == 8) {
                                        stackMapFrame.addStackItem(new VerificationTypeInfo(11, ConstantPool.JavaLangStringConstantPoolName));
                                    }
                                    i16 += 3;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 20:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    bArr3 = bArr2;
                                    int u1At5 = classFile.u1At(bArr3, 0, iArr2[classFile.u2At(bArr, 1, i16)]);
                                    if (u1At5 == 5) {
                                        stackMapFrame.addStackItem(TypeBinding.LONG);
                                    } else if (u1At5 == 6) {
                                        stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                    }
                                    i16 += 3;
                                    i22 = i12;
                                    i20 = length3;
                                    hashSet = hashSet4;
                                    i21 = length4;
                                    break;
                                case 21:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                    i16 += 2;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 22:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                    i16 += 2;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 23:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                    i16 += 2;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 24:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                    i16 += 2;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 25:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(classFile.retrieveLocal(i15, classFile.u1At(bArr, 1, i16)));
                                    i16 += 2;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 26:
                                case 27:
                                case 28:
                                case 29:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 30:
                                case 31:
                                case 32:
                                case 33:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 34:
                                case 35:
                                case 36:
                                case 37:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 38:
                                case 39:
                                case 40:
                                case 41:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 42:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    VerificationTypeInfo verificationTypeInfo3 = stackMapFrame.locals[0];
                                    if (verificationTypeInfo3 == null || verificationTypeInfo3.tag != 6) {
                                        verificationTypeInfo3 = classFile.retrieveLocal(i15, 0);
                                    }
                                    stackMapFrame.addStackItem(verificationTypeInfo3);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 43:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(classFile.retrieveLocal(i15, 1));
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 44:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(classFile.retrieveLocal(i15, 2));
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 45:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(classFile.retrieveLocal(i15, 3));
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 46:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems -= 2;
                                    stackMapFrame.addStackItem(TypeBinding.INT);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 47:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems -= 2;
                                    stackMapFrame.addStackItem(TypeBinding.LONG);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 48:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems -= 2;
                                    stackMapFrame.addStackItem(TypeBinding.FLOAT);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 49:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems -= 2;
                                    stackMapFrame.addStackItem(TypeBinding.DOUBLE);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 50:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems--;
                                    stackMapFrame.replaceWithElementType();
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 51:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems -= 2;
                                    stackMapFrame.addStackItem(TypeBinding.BYTE);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 52:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems -= 2;
                                    stackMapFrame.addStackItem(TypeBinding.CHAR);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 53:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems -= 2;
                                    stackMapFrame.addStackItem(TypeBinding.SHORT);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 54:
                                case 55:
                                case 56:
                                case 57:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems--;
                                    i16 += 2;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 58:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    z16 = true;
                                    classFile.u1At(bArr, 1, i16);
                                    stackMapFrame.numberOfStackItems--;
                                    i16 += 2;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 59:
                                case 60:
                                case 61:
                                case 62:
                                case 63:
                                case 64:
                                case 65:
                                case 66:
                                case 67:
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 76:
                                case 77:
                                case 78:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    z16 = true;
                                    stackMapFrame.numberOfStackItems--;
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 75:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    VerificationTypeInfo[] verificationTypeInfoArr6 = stackMapFrame.locals;
                                    VerificationTypeInfo[] verificationTypeInfoArr7 = stackMapFrame.stackItems;
                                    int i68 = stackMapFrame.numberOfStackItems;
                                    verificationTypeInfoArr6[0] = verificationTypeInfoArr7[i68 - 1];
                                    z16 = true;
                                    stackMapFrame.numberOfStackItems = i68 - 1;
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 79:
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                case 85:
                                case 86:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems -= 3;
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 87:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.numberOfStackItems--;
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 88:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    int id2 = stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1].id();
                                    if (id2 == 7 || id2 == 8) {
                                        z17 = true;
                                        stackMapFrame.numberOfStackItems--;
                                    } else {
                                        stackMapFrame.numberOfStackItems -= 2;
                                        z17 = true;
                                    }
                                    i16++;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i22 = i12;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 89:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    stackMapFrame.addStackItem(stackMapFrame.stackItems[stackMapFrame.numberOfStackItems - 1]);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 90:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    VerificationTypeInfo[] verificationTypeInfoArr8 = stackMapFrame.stackItems;
                                    int i69 = stackMapFrame.numberOfStackItems;
                                    VerificationTypeInfo verificationTypeInfo4 = verificationTypeInfoArr8[i69 - 1];
                                    stackMapFrame.numberOfStackItems = i69 - 1;
                                    VerificationTypeInfo verificationTypeInfo5 = verificationTypeInfoArr8[i69 - 2];
                                    stackMapFrame.numberOfStackItems = i69 - 2;
                                    stackMapFrame.addStackItem(verificationTypeInfo4);
                                    stackMapFrame.addStackItem(verificationTypeInfo5);
                                    stackMapFrame.addStackItem(verificationTypeInfo4);
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 91:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    VerificationTypeInfo[] verificationTypeInfoArr9 = stackMapFrame.stackItems;
                                    int i70 = stackMapFrame.numberOfStackItems;
                                    VerificationTypeInfo verificationTypeInfo6 = verificationTypeInfoArr9[i70 - 1];
                                    stackMapFrame.numberOfStackItems = i70 - 1;
                                    VerificationTypeInfo verificationTypeInfo7 = verificationTypeInfoArr9[i70 - 2];
                                    stackMapFrame.numberOfStackItems = i70 - 2;
                                    int id3 = verificationTypeInfo7.id();
                                    if (id3 == 7 || id3 == 8) {
                                        stackMapFrame.addStackItem(verificationTypeInfo6);
                                        stackMapFrame.addStackItem(verificationTypeInfo7);
                                        stackMapFrame.addStackItem(verificationTypeInfo6);
                                    } else {
                                        int i71 = stackMapFrame.numberOfStackItems;
                                        VerificationTypeInfo verificationTypeInfo8 = stackMapFrame.stackItems[i71 - 1];
                                        stackMapFrame.numberOfStackItems = i71 - 1;
                                        stackMapFrame.addStackItem(verificationTypeInfo6);
                                        stackMapFrame.addStackItem(verificationTypeInfo8);
                                        stackMapFrame.addStackItem(verificationTypeInfo7);
                                        stackMapFrame.addStackItem(verificationTypeInfo6);
                                    }
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 92:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    VerificationTypeInfo[] verificationTypeInfoArr10 = stackMapFrame.stackItems;
                                    int i72 = stackMapFrame.numberOfStackItems;
                                    VerificationTypeInfo verificationTypeInfo9 = verificationTypeInfoArr10[i72 - 1];
                                    stackMapFrame.numberOfStackItems = i72 - 1;
                                    int id4 = verificationTypeInfo9.id();
                                    if (id4 == 7 || id4 == 8) {
                                        stackMapFrame.addStackItem(verificationTypeInfo9);
                                        stackMapFrame.addStackItem(verificationTypeInfo9);
                                    } else {
                                        VerificationTypeInfo[] verificationTypeInfoArr11 = stackMapFrame.stackItems;
                                        int i73 = stackMapFrame.numberOfStackItems;
                                        VerificationTypeInfo verificationTypeInfo10 = verificationTypeInfoArr11[i73 - 1];
                                        stackMapFrame.numberOfStackItems = i73 - 1;
                                        stackMapFrame.addStackItem(verificationTypeInfo10);
                                        stackMapFrame.addStackItem(verificationTypeInfo9);
                                        stackMapFrame.addStackItem(verificationTypeInfo10);
                                        stackMapFrame.addStackItem(verificationTypeInfo9);
                                    }
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 93:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    VerificationTypeInfo[] verificationTypeInfoArr12 = stackMapFrame.stackItems;
                                    int i74 = stackMapFrame.numberOfStackItems;
                                    VerificationTypeInfo verificationTypeInfo11 = verificationTypeInfoArr12[i74 - 1];
                                    stackMapFrame.numberOfStackItems = i74 - 1;
                                    VerificationTypeInfo verificationTypeInfo12 = verificationTypeInfoArr12[i74 - 2];
                                    stackMapFrame.numberOfStackItems = i74 - 2;
                                    int id5 = verificationTypeInfo11.id();
                                    if (id5 == 7 || id5 == 8) {
                                        stackMapFrame.addStackItem(verificationTypeInfo11);
                                        stackMapFrame.addStackItem(verificationTypeInfo12);
                                        stackMapFrame.addStackItem(verificationTypeInfo11);
                                    } else {
                                        VerificationTypeInfo[] verificationTypeInfoArr13 = stackMapFrame.stackItems;
                                        int i75 = stackMapFrame.numberOfStackItems;
                                        VerificationTypeInfo verificationTypeInfo13 = verificationTypeInfoArr13[i75 - 1];
                                        stackMapFrame.numberOfStackItems = i75 - 1;
                                        stackMapFrame.addStackItem(verificationTypeInfo12);
                                        stackMapFrame.addStackItem(verificationTypeInfo11);
                                        stackMapFrame.addStackItem(verificationTypeInfo13);
                                        stackMapFrame.addStackItem(verificationTypeInfo12);
                                        stackMapFrame.addStackItem(verificationTypeInfo11);
                                    }
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 94:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    int i76 = stackMapFrame.numberOfStackItems;
                                    VerificationTypeInfo[] verificationTypeInfoArr14 = stackMapFrame.stackItems;
                                    VerificationTypeInfo verificationTypeInfo14 = verificationTypeInfoArr14[i76 - 1];
                                    stackMapFrame.numberOfStackItems = i76 - 1;
                                    VerificationTypeInfo verificationTypeInfo15 = verificationTypeInfoArr14[i76 - 2];
                                    stackMapFrame.numberOfStackItems = i76 - 2;
                                    int id6 = verificationTypeInfo14.id();
                                    if (id6 == 7 || id6 == 8) {
                                        int id7 = verificationTypeInfo15.id();
                                        if (id7 == 7 || id7 == 8) {
                                            stackMapFrame.addStackItem(verificationTypeInfo14);
                                            stackMapFrame.addStackItem(verificationTypeInfo15);
                                            stackMapFrame.addStackItem(verificationTypeInfo14);
                                        } else {
                                            int i77 = stackMapFrame.numberOfStackItems;
                                            VerificationTypeInfo verificationTypeInfo16 = stackMapFrame.stackItems[i77 - 1];
                                            stackMapFrame.numberOfStackItems = i77 - 1;
                                            stackMapFrame.addStackItem(verificationTypeInfo14);
                                            stackMapFrame.addStackItem(verificationTypeInfo16);
                                            stackMapFrame.addStackItem(verificationTypeInfo15);
                                            stackMapFrame.addStackItem(verificationTypeInfo14);
                                        }
                                    } else {
                                        int i78 = stackMapFrame.numberOfStackItems;
                                        VerificationTypeInfo verificationTypeInfo17 = stackMapFrame.stackItems[i78 - 1];
                                        stackMapFrame.numberOfStackItems = i78 - 1;
                                        int id8 = verificationTypeInfo17.id();
                                        if (id8 == 7 || id8 == 8) {
                                            stackMapFrame.addStackItem(verificationTypeInfo15);
                                            stackMapFrame.addStackItem(verificationTypeInfo14);
                                            stackMapFrame.addStackItem(verificationTypeInfo17);
                                            stackMapFrame.addStackItem(verificationTypeInfo15);
                                            stackMapFrame.addStackItem(verificationTypeInfo14);
                                        } else {
                                            int i79 = stackMapFrame.numberOfStackItems;
                                            VerificationTypeInfo verificationTypeInfo18 = stackMapFrame.stackItems[i79 - 1];
                                            stackMapFrame.numberOfStackItems = i79 - 1;
                                            stackMapFrame.addStackItem(verificationTypeInfo15);
                                            stackMapFrame.addStackItem(verificationTypeInfo14);
                                            stackMapFrame.addStackItem(verificationTypeInfo18);
                                            stackMapFrame.addStackItem(verificationTypeInfo17);
                                            stackMapFrame.addStackItem(verificationTypeInfo15);
                                            stackMapFrame.addStackItem(verificationTypeInfo14);
                                        }
                                    }
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 95:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    int i80 = stackMapFrame.numberOfStackItems;
                                    VerificationTypeInfo[] verificationTypeInfoArr15 = stackMapFrame.stackItems;
                                    int i81 = i80 - 1;
                                    VerificationTypeInfo verificationTypeInfo19 = verificationTypeInfoArr15[i81];
                                    int i82 = i80 - 2;
                                    verificationTypeInfoArr15[i81] = verificationTypeInfoArr15[i82];
                                    verificationTypeInfoArr15[i82] = verificationTypeInfo19;
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                case 96:
                                case 97:
                                case 98:
                                case 99:
                                case 100:
                                case 101:
                                case 102:
                                case 103:
                                case 104:
                                case 105:
                                case 106:
                                case 107:
                                case 108:
                                case 109:
                                case 110:
                                case 111:
                                case 112:
                                case 113:
                                case 114:
                                case 115:
                                case 120:
                                case 121:
                                case 122:
                                case 123:
                                case 124:
                                case 125:
                                case 126:
                                case Byte.MAX_VALUE:
                                    break;
                                case 116:
                                case 117:
                                case 118:
                                case 119:
                                    exceptionMarkerArr = exceptionMarkers;
                                    stackDepthMarker = stackDepthMarker3;
                                    i19 = i14;
                                    i16++;
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                                default:
                                    CodeStream codeStream = classFile.codeStream;
                                    AbstractMethodDeclaration abstractMethodDeclaration = codeStream.methodDeclaration;
                                    if (abstractMethodDeclaration != null) {
                                        exceptionMarkerArr = exceptionMarkers;
                                        stackDepthMarker = stackDepthMarker3;
                                        i19 = i14;
                                        abstractMethodDeclaration.scope.problemReporter().abortDueToInternalError(Messages.bind(Messages.abort_invalidOpcode, new Object[]{Byte.valueOf(u1At), Integer.valueOf(i16), new String(methodBinding.shortReadableName())}), classFile.codeStream.methodDeclaration);
                                    } else {
                                        exceptionMarkerArr = exceptionMarkers;
                                        stackDepthMarker = stackDepthMarker3;
                                        i19 = i14;
                                        codeStream.lambdaExpression.scope.problemReporter().abortDueToInternalError(Messages.bind(Messages.abort_invalidOpcode, new Object[]{Byte.valueOf(u1At), Integer.valueOf(i16), new String(methodBinding.shortReadableName())}), classFile.codeStream.lambdaExpression);
                                    }
                                    i22 = i12;
                                    bArr3 = bArr2;
                                    hashSet = hashSet4;
                                    i20 = length3;
                                    i21 = length4;
                                    break;
                            }
                    }
                    break;
            }
            if (i16 >= i22 + i11) {
                return classFile.filterFakeFrames(hashSet, map2, i22);
            }
            length3 = i20;
            length4 = i21;
            framePositions = iArr;
            i34 = i17;
            stackMarker3 = stackMarker;
            exceptionMarker3 = exceptionMarker2;
            stackDepthMarker3 = stackDepthMarker;
            bArr2 = bArr3;
            hashSet4 = hashSet;
            exceptionMarkers = exceptionMarkerArr;
            length = i19;
            i33 = i16;
        }
    }

    public char[] utf8At(byte[] bArr, int i10, int i11) {
        char[] cArr = new char[i11];
        int i12 = i11;
        int i13 = 0;
        while (i12 != 0) {
            int i14 = i10 + 1;
            byte b10 = bArr[i10];
            int i15 = b10 & 255;
            int i16 = i12 - 1;
            if ((b10 & 128) == 0) {
                i10 = i14;
                i12 = i16;
            } else if ((b10 & 32) != 0) {
                i12 -= 3;
                int i17 = i10 + 2;
                i10 += 3;
                i15 = ((bArr[i14] & Opcodes.OPC_lstore_0) << 6) | ((b10 & 15) << 12) | (bArr[i17] & Opcodes.OPC_lstore_0);
            } else {
                i12 -= 2;
                i10 += 2;
                i15 = ((b10 & 31) << 6) | (bArr[i14] & Opcodes.OPC_lstore_0);
            }
            cArr[i13] = (char) i15;
            i13++;
        }
        if (i13 == i11) {
            return cArr;
        }
        char[] cArr2 = new char[i13];
        System.arraycopy(cArr, 0, cArr2, 0, i13);
        return cArr2;
    }

    private static void createProblemType(TypeDeclaration typeDeclaration, ClassFile classFile, CompilationResult compilationResult) {
        boolean z10;
        SourceTypeBinding sourceTypeBinding = typeDeclaration.binding;
        ClassFile newInstance = getNewInstance(sourceTypeBinding);
        newInstance.initialize(sourceTypeBinding, classFile, true);
        if (sourceTypeBinding.hasMemberTypes()) {
            for (ReferenceBinding referenceBinding : sourceTypeBinding.memberTypes) {
                newInstance.recordInnerClasses(referenceBinding);
            }
        }
        if (sourceTypeBinding.isNestedType()) {
            newInstance.recordInnerClasses(sourceTypeBinding);
        }
        for (TypeVariableBinding typeVariableBinding : sourceTypeBinding.typeVariables()) {
            if ((typeVariableBinding.tagBits & 2048) != 0) {
                Util.recordNestedType(newInstance, typeVariableBinding);
            }
        }
        FieldBinding[] fields = sourceTypeBinding.fields();
        if (fields != null && fields != Binding.NO_FIELDS) {
            newInstance.addFieldInfos();
        } else {
            byte[] bArr = newInstance.contents;
            int i10 = newInstance.contentsOffset;
            int i11 = i10 + 1;
            newInstance.contentsOffset = i11;
            bArr[i10] = 0;
            newInstance.contentsOffset = i10 + 2;
            bArr[i11] = 0;
        }
        newInstance.setForMethodInfos();
        CategorizedProblem[] errors = compilationResult.getErrors();
        if (errors == null) {
            errors = new CategorizedProblem[0];
        }
        int length = errors.length;
        CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[length];
        System.arraycopy(errors, 0, categorizedProblemArr, 0, length);
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        if (abstractMethodDeclarationArr != null) {
            if (sourceTypeBinding.isInterface()) {
                z10 = sourceTypeBinding.scope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_8;
                newInstance.addProblemClinit(categorizedProblemArr);
            } else {
                z10 = false;
            }
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                MethodBinding methodBinding = abstractMethodDeclaration.binding;
                if (methodBinding != null) {
                    if (z10) {
                        methodBinding.modifiers = 1025;
                    }
                    if (methodBinding.isConstructor()) {
                        if (!sourceTypeBinding.isInterface()) {
                            newInstance.addProblemConstructor(abstractMethodDeclaration, methodBinding, categorizedProblemArr);
                        }
                    } else if (methodBinding.isAbstract()) {
                        newInstance.addAbstractMethod(abstractMethodDeclaration, methodBinding);
                    } else {
                        newInstance.addProblemMethod(abstractMethodDeclaration, methodBinding, categorizedProblemArr);
                    }
                }
            }
            newInstance.addDefaultAbstractMethods();
        }
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            int length2 = typeDeclarationArr.length;
            for (int i12 = 0; i12 < length2; i12++) {
                TypeDeclaration typeDeclaration2 = typeDeclaration.memberTypes[i12];
                if (typeDeclaration2.binding != null) {
                    createProblemType(typeDeclaration2, newInstance, compilationResult);
                }
            }
        }
        newInstance.addAttributes();
        compilationResult.record(sourceTypeBinding.constantPoolName(), newInstance);
    }

    public void generateMethodInfoHeader(MethodBinding methodBinding, int i10) {
        this.methodCount++;
        if (this.contentsOffset + 10 >= this.contents.length) {
            resizeContents(10);
        }
        if (this.targetJDK < ClassFileConstants.JDK1_5) {
            i10 &= -4225;
        }
        if ((methodBinding.tagBits & 512) != 0) {
            i10 &= -3;
        }
        byte[] bArr = this.contents;
        int i11 = this.contentsOffset;
        int i12 = i11 + 1;
        this.contentsOffset = i12;
        bArr[i11] = (byte) (i10 >> 8);
        this.contentsOffset = i11 + 2;
        bArr[i12] = (byte) i10;
        int literalIndex = this.constantPool.literalIndex(methodBinding.selector);
        byte[] bArr2 = this.contents;
        int i13 = this.contentsOffset;
        int i14 = i13 + 1;
        this.contentsOffset = i14;
        bArr2[i13] = (byte) (literalIndex >> 8);
        this.contentsOffset = i13 + 2;
        bArr2[i14] = (byte) literalIndex;
        int literalIndex2 = this.constantPool.literalIndex(methodBinding.signature(this));
        byte[] bArr3 = this.contents;
        int i15 = this.contentsOffset;
        int i16 = i15 + 1;
        this.contentsOffset = i16;
        bArr3[i15] = (byte) (literalIndex2 >> 8);
        this.contentsOffset = i15 + 2;
        bArr3[i16] = (byte) literalIndex2;
    }

    public void recordInnerClasses(TypeBinding typeBinding, boolean z10) {
        if (this.innerClassesBindings == null) {
            this.innerClassesBindings = new HashMap(5);
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
        this.innerClassesBindings.put(referenceBinding.erasure().unannotated(), Boolean.valueOf(z10));
        for (ReferenceBinding enclosingType = referenceBinding.enclosingType(); enclosingType != null && enclosingType.isNestedType(); enclosingType = enclosingType.enclosingType()) {
            this.innerClassesBindings.put(enclosingType.erasure().unannotated(), Boolean.valueOf(z10));
        }
    }

    public ClassFile(SourceTypeBinding sourceTypeBinding) {
        this.bootstrapMethods = null;
        this.isShared = false;
        this.missingTypes = null;
        this.constantPool = new ConstantPool(this);
        CompilerOptions compilerOptions = sourceTypeBinding.scope.compilerOptions();
        this.targetJDK = compilerOptions.targetJDK;
        this.produceAttributes = compilerOptions.produceDebugAttributes;
        this.referenceBinding = sourceTypeBinding;
        this.isNestedType = sourceTypeBinding.isNestedType();
        long j10 = this.targetJDK;
        if (j10 >= ClassFileConstants.JDK1_6) {
            int i10 = this.produceAttributes;
            this.produceAttributes = i10 | 8;
            if (j10 >= ClassFileConstants.JDK1_8) {
                this.produceAttributes = i10 | 40;
                this.codeStream = new TypeAnnotationCodeStream(this);
                if (compilerOptions.produceMethodParameters) {
                    this.produceAttributes |= 64;
                }
            } else {
                this.codeStream = new StackMapFrameCodeStream(this);
            }
        } else if (j10 == ClassFileConstants.CLDC_1_1) {
            this.targetJDK = ClassFileConstants.JDK1_1;
            this.produceAttributes |= 16;
            this.codeStream = new StackMapFrameCodeStream(this);
        } else {
            this.codeStream = new CodeStream(this);
        }
        initByteArrays(this.referenceBinding.methods().length + this.referenceBinding.fields().length);
    }

    private void generateElementValue(int i10, Expression expression, Constant constant, TypeBinding typeBinding) {
        if (this.contentsOffset + 3 >= this.contents.length) {
            resizeContents(3);
        }
        switch (typeBinding.f102482id) {
            case 2:
                byte[] bArr = this.contents;
                int i11 = this.contentsOffset;
                this.contentsOffset = i11 + 1;
                bArr[i11] = Opcodes.OPC_fstore_0;
                int literalIndex = this.constantPool.literalIndex(constant.intValue());
                byte[] bArr2 = this.contents;
                int i12 = this.contentsOffset;
                int i13 = i12 + 1;
                this.contentsOffset = i13;
                bArr2[i12] = (byte) (literalIndex >> 8);
                this.contentsOffset = i12 + 2;
                bArr2[i13] = (byte) literalIndex;
                return;
            case 3:
                byte[] bArr3 = this.contents;
                int i14 = this.contentsOffset;
                this.contentsOffset = i14 + 1;
                bArr3[i14] = Opcodes.OPC_lstore_3;
                int literalIndex2 = this.constantPool.literalIndex(constant.intValue());
                byte[] bArr4 = this.contents;
                int i15 = this.contentsOffset;
                int i16 = i15 + 1;
                this.contentsOffset = i16;
                bArr4[i15] = (byte) (literalIndex2 >> 8);
                this.contentsOffset = i15 + 2;
                bArr4[i16] = (byte) literalIndex2;
                return;
            case 4:
                byte[] bArr5 = this.contents;
                int i17 = this.contentsOffset;
                this.contentsOffset = i17 + 1;
                bArr5[i17] = Opcodes.OPC_aastore;
                int literalIndex3 = this.constantPool.literalIndex(constant.intValue());
                byte[] bArr6 = this.contents;
                int i18 = this.contentsOffset;
                int i19 = i18 + 1;
                this.contentsOffset = i19;
                bArr6[i18] = (byte) (literalIndex3 >> 8);
                this.contentsOffset = i18 + 2;
                bArr6[i19] = (byte) literalIndex3;
                return;
            case 5:
                byte[] bArr7 = this.contents;
                int i20 = this.contentsOffset;
                this.contentsOffset = i20 + 1;
                bArr7[i20] = 90;
                int literalIndex4 = this.constantPool.literalIndex(constant.booleanValue() ? 1 : 0);
                byte[] bArr8 = this.contents;
                int i21 = this.contentsOffset;
                int i22 = i21 + 1;
                this.contentsOffset = i22;
                bArr8[i21] = (byte) (literalIndex4 >> 8);
                this.contentsOffset = i21 + 2;
                bArr8[i22] = (byte) literalIndex4;
                return;
            case 6:
            default:
                return;
            case 7:
                byte[] bArr9 = this.contents;
                int i23 = this.contentsOffset;
                this.contentsOffset = i23 + 1;
                bArr9[i23] = Opcodes.OPC_dstore_3;
                int literalIndex5 = this.constantPool.literalIndex(constant.longValue());
                byte[] bArr10 = this.contents;
                int i24 = this.contentsOffset;
                int i25 = i24 + 1;
                this.contentsOffset = i25;
                bArr10[i24] = (byte) (literalIndex5 >> 8);
                this.contentsOffset = i24 + 2;
                bArr10[i25] = (byte) literalIndex5;
                return;
            case 8:
                byte[] bArr11 = this.contents;
                int i26 = this.contentsOffset;
                this.contentsOffset = i26 + 1;
                bArr11[i26] = Opcodes.OPC_fstore_1;
                int literalIndex6 = this.constantPool.literalIndex(constant.doubleValue());
                byte[] bArr12 = this.contents;
                int i27 = this.contentsOffset;
                int i28 = i27 + 1;
                this.contentsOffset = i28;
                bArr12[i27] = (byte) (literalIndex6 >> 8);
                this.contentsOffset = i27 + 2;
                bArr12[i28] = (byte) literalIndex6;
                return;
            case 9:
                byte[] bArr13 = this.contents;
                int i29 = this.contentsOffset;
                this.contentsOffset = i29 + 1;
                bArr13[i29] = 70;
                int literalIndex7 = this.constantPool.literalIndex(constant.floatValue());
                byte[] bArr14 = this.contents;
                int i30 = this.contentsOffset;
                int i31 = i30 + 1;
                this.contentsOffset = i31;
                bArr14[i30] = (byte) (literalIndex7 >> 8);
                this.contentsOffset = i30 + 2;
                bArr14[i31] = (byte) literalIndex7;
                return;
            case 10:
                byte[] bArr15 = this.contents;
                int i32 = this.contentsOffset;
                this.contentsOffset = i32 + 1;
                bArr15[i32] = Opcodes.OPC_dstore_2;
                int literalIndex8 = this.constantPool.literalIndex(constant.intValue());
                byte[] bArr16 = this.contents;
                int i33 = this.contentsOffset;
                int i34 = i33 + 1;
                this.contentsOffset = i34;
                bArr16[i33] = (byte) (literalIndex8 >> 8);
                this.contentsOffset = i33 + 2;
                bArr16[i34] = (byte) literalIndex8;
                return;
            case 11:
                byte[] bArr17 = this.contents;
                int i35 = this.contentsOffset;
                this.contentsOffset = i35 + 1;
                bArr17[i35] = Opcodes.OPC_drem;
                int literalIndex9 = this.constantPool.literalIndex(((StringConstant) constant).stringValue().toCharArray());
                if (literalIndex9 == -1) {
                    if (!this.creatingProblemType) {
                        this.referenceBinding.scope.referenceContext.scope.problemReporter().stringConstantIsExceedingUtf8Limit(expression);
                        return;
                    } else {
                        this.contentsOffset = i10;
                        return;
                    }
                }
                byte[] bArr18 = this.contents;
                int i36 = this.contentsOffset;
                int i37 = i36 + 1;
                this.contentsOffset = i37;
                bArr18[i36] = (byte) (literalIndex9 >> 8);
                this.contentsOffset = i36 + 2;
                bArr18[i37] = (byte) literalIndex9;
                return;
        }
    }

    private int generateLineNumberAttribute(int i10) {
        int i11 = this.contentsOffset;
        if (i11 + 12 >= this.contents.length) {
            resizeContents(12);
        }
        int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.LineNumberTableName);
        byte[] bArr = this.contents;
        bArr[i11] = (byte) (literalIndex >> 8);
        bArr[i11 + 1] = (byte) literalIndex;
        bArr[i11 + 2] = 0;
        bArr[i11 + 3] = 0;
        bArr[i11 + 4] = 0;
        bArr[i11 + 5] = 6;
        bArr[i11 + 6] = 0;
        bArr[i11 + 7] = 1;
        bArr[i11 + 8] = 0;
        bArr[i11 + 9] = 0;
        bArr[i11 + 10] = (byte) (i10 >> 8);
        bArr[i11 + 11] = (byte) i10;
        this.contentsOffset = i11 + 12;
        return 1;
    }

    public ClassFile(ModuleBinding moduleBinding, CompilerOptions compilerOptions) {
        this.bootstrapMethods = null;
        this.isShared = false;
        this.missingTypes = null;
        this.constantPool = new ConstantPool(this);
        this.targetJDK = compilerOptions.targetJDK;
        this.produceAttributes = 1;
        this.isNestedType = false;
        this.codeStream = new StackMapFrameCodeStream(this);
        initByteArrays(0);
    }

    public void addProblemConstructor(AbstractMethodDeclaration abstractMethodDeclaration, MethodBinding methodBinding, CategorizedProblem[] categorizedProblemArr, int i10) {
        this.contentsOffset = i10;
        this.methodCount--;
        addProblemConstructor(abstractMethodDeclaration, methodBinding, categorizedProblemArr);
    }

    public void addProblemMethod(AbstractMethodDeclaration abstractMethodDeclaration, MethodBinding methodBinding, CategorizedProblem[] categorizedProblemArr, int i10) {
        this.contentsOffset = i10;
        this.methodCount--;
        addProblemMethod(abstractMethodDeclaration, methodBinding, categorizedProblemArr);
    }

    public int generateMethodInfoAttributes(MethodBinding methodBinding, AnnotationMethodDeclaration annotationMethodDeclaration) {
        int generateMethodInfoAttributes = generateMethodInfoAttributes(methodBinding);
        return (annotationMethodDeclaration.modifiers & 131072) != 0 ? generateMethodInfoAttributes + generateAnnotationDefaultAttribute(annotationMethodDeclaration, this.contentsOffset) : generateMethodInfoAttributes;
    }

    public void completeCodeAttributeForClinit(int i10, int i11) {
        CodeStream codeStream = this.codeStream;
        this.contents = codeStream.bCodeStream;
        int i12 = codeStream.classFileOffset;
        int i13 = codeStream.position;
        if (i13 > 65535) {
            codeStream.methodDeclaration.scope.problemReporter().bytecodeExceeds64KLimit(this.codeStream.methodDeclaration.scope.referenceType());
        }
        if (i12 + 20 >= this.contents.length) {
            resizeContents(20);
        }
        CodeStream codeStream2 = this.codeStream;
        int i14 = codeStream2.stackMax;
        byte[] bArr = this.contents;
        int i15 = i10 + 6;
        bArr[i15] = (byte) (i14 >> 8);
        bArr[i10 + 7] = (byte) i14;
        int i16 = codeStream2.maxLocals;
        bArr[i10 + 8] = (byte) (i16 >> 8);
        bArr[i10 + 9] = (byte) i16;
        bArr[i10 + 10] = (byte) (i13 >> 24);
        bArr[i10 + 11] = (byte) (i13 >> 16);
        bArr[i10 + 12] = (byte) (i13 >> 8);
        bArr[i10 + 13] = (byte) i13;
        bArr[i12] = 0;
        int i17 = i12 + 2;
        bArr[i12 + 1] = 0;
        int i18 = i12 + 4;
        if (i12 + 6 >= bArr.length) {
            resizeContents(2);
        }
        this.contentsOffset = i18;
        int generateLineNumberAttribute = (this.produceAttributes & 2) != 0 ? generateLineNumberAttribute(i11) : 0;
        int i19 = this.contentsOffset;
        if ((this.produceAttributes & 4) != 0) {
            int literalIndex = this.constantPool.literalIndex(AttributeNamesConstants.LocalVariableTableName);
            if (i19 + 8 >= this.contents.length) {
                resizeContents(8);
            }
            byte[] bArr2 = this.contents;
            bArr2[i19] = (byte) (literalIndex >> 8);
            bArr2[i19 + 1] = (byte) literalIndex;
            bArr2[i19 + 2] = 0;
            bArr2[i19 + 3] = 0;
            bArr2[i19 + 4] = 0;
            bArr2[i19 + 5] = 2;
            int i20 = i19 + 7;
            bArr2[i19 + 6] = 0;
            i19 += 8;
            bArr2[i20] = 0;
            generateLineNumberAttribute++;
        }
        int i21 = generateLineNumberAttribute;
        this.contentsOffset = i19;
        if ((this.produceAttributes & 8) != 0) {
            i21 += generateStackMapTableAttribute(null, i13, i10, i16, true);
        }
        if ((this.produceAttributes & 16) != 0) {
            i21 += generateStackMapAttribute(null, i13, i10, i16, true);
        }
        if ((this.produceAttributes & 32) != 0) {
            i21 += generateTypeAnnotationsOnCodeAttribute();
        }
        if (i18 >= this.contents.length) {
            resizeContents(2);
        }
        byte[] bArr3 = this.contents;
        bArr3[i17] = (byte) (i21 >> 8);
        bArr3[i12 + 3] = (byte) i21;
        int i22 = this.contentsOffset - i15;
        bArr3[i10 + 2] = (byte) (i22 >> 24);
        bArr3[i10 + 3] = (byte) (i22 >> 16);
        bArr3[i10 + 4] = (byte) (i22 >> 8);
        bArr3[i10 + 5] = (byte) i22;
    }

    public void completeCodeAttributeForSyntheticMethod(SyntheticMethodBinding syntheticMethodBinding, int i10, int[] iArr) {
        completeCodeAttributeForSyntheticMethod(false, syntheticMethodBinding, i10, iArr);
    }
}
