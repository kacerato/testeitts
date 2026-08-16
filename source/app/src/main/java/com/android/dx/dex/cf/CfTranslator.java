package com.android.dx.dex.cf;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.iface.Field;
import com.android.dx.cf.iface.FieldList;
import com.android.dx.cf.iface.Method;
import com.android.dx.cf.iface.MethodList;
import com.android.dx.command.dexer.DxContext;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.dex.code.RopTranslator;
import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.dex.file.DexFile;
import com.android.dx.dex.file.EncodedField;
import com.android.dx.dex.file.EncodedMethod;
import com.android.dx.dex.file.FieldIdsSection;
import com.android.dx.dex.file.MethodIdsSection;
import com.android.dx.rop.annotation.Annotations;
import com.android.dx.rop.annotation.AnnotationsList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.DexTranslationAdvice;
import com.android.dx.rop.code.LocalVariableExtractor;
import com.android.dx.rop.code.LocalVariableInfo;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstBaseMethodRef;
import com.android.dx.rop.cst.CstBoolean;
import com.android.dx.rop.cst.CstByte;
import com.android.dx.rop.cst.CstChar;
import com.android.dx.rop.cst.CstEnumRef;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstInterfaceMethodRef;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstShort;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.TypedConstant;
import com.android.dx.rop.type.Type;
import com.android.dx.ssa.Optimizer;

public class CfTranslator {
    private static final boolean DEBUG = false;

    private CfTranslator() {
    }

    private static TypedConstant coerceConstant(TypedConstant typedConstant, Type type) {
        if (typedConstant.getType().equals(type)) {
            return typedConstant;
        }
        int basicType = type.getBasicType();
        if (basicType == 1) {
            return CstBoolean.make(((CstInteger) typedConstant).getValue());
        }
        if (basicType == 2) {
            return CstByte.make(((CstInteger) typedConstant).getValue());
        }
        if (basicType == 3) {
            return CstChar.make(((CstInteger) typedConstant).getValue());
        }
        if (basicType == 8) {
            return CstShort.make(((CstInteger) typedConstant).getValue());
        }
        throw new UnsupportedOperationException("can't coerce " + ((Object) typedConstant) + " to " + ((Object) type));
    }

    private static void processFields(DirectClassFile directClassFile, ClassDefItem classDefItem, DexFile dexFile) {
        CstType thisClass = directClassFile.getThisClass();
        FieldList fields = directClassFile.getFields();
        int size = fields.size();
        for (int i10 = 0; i10 < size; i10++) {
            Field field = fields.get(i10);
            try {
                CstFieldRef cstFieldRef = new CstFieldRef(thisClass, field.getNat());
                int accessFlags = field.getAccessFlags();
                if (AccessFlags.isStatic(accessFlags)) {
                    TypedConstant constantValue = field.getConstantValue();
                    EncodedField encodedField = new EncodedField(cstFieldRef, accessFlags);
                    if (constantValue != null) {
                        constantValue = coerceConstant(constantValue, cstFieldRef.getType());
                    }
                    classDefItem.addStaticField(encodedField, constantValue);
                } else {
                    classDefItem.addInstanceField(new EncodedField(cstFieldRef, accessFlags));
                }
                Annotations annotations = AttributeTranslator.getAnnotations(field.getAttributes());
                if (annotations.size() != 0) {
                    classDefItem.addFieldAnnotations(cstFieldRef, annotations, dexFile);
                }
                dexFile.getFieldIds().intern(cstFieldRef);
            } catch (RuntimeException e10) {
                throw ExceptionWithContext.withContext(e10, "...while processing " + field.getName().toHuman() + " " + field.getDescriptor().toHuman());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0113 A[Catch: RuntimeException -> 0x0100, TryCatch #1 {RuntimeException -> 0x0100, blocks: (B:33:0x00fc, B:35:0x010d, B:37:0x0113, B:39:0x0119, B:41:0x011d, B:42:0x0121, B:44:0x0132, B:49:0x013d, B:50:0x0144, B:52:0x014e, B:53:0x0151, B:55:0x015b, B:56:0x015e, B:58:0x0141), top: B:32:0x00fc }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011d A[Catch: RuntimeException -> 0x0100, TryCatch #1 {RuntimeException -> 0x0100, blocks: (B:33:0x00fc, B:35:0x010d, B:37:0x0113, B:39:0x0119, B:41:0x011d, B:42:0x0121, B:44:0x0132, B:49:0x013d, B:50:0x0144, B:52:0x014e, B:53:0x0151, B:55:0x015b, B:56:0x015e, B:58:0x0141), top: B:32:0x00fc }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x014e A[Catch: RuntimeException -> 0x0100, TryCatch #1 {RuntimeException -> 0x0100, blocks: (B:33:0x00fc, B:35:0x010d, B:37:0x0113, B:39:0x0119, B:41:0x011d, B:42:0x0121, B:44:0x0132, B:49:0x013d, B:50:0x0144, B:52:0x014e, B:53:0x0151, B:55:0x015b, B:56:0x015e, B:58:0x0141), top: B:32:0x00fc }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x015b A[Catch: RuntimeException -> 0x0100, TryCatch #1 {RuntimeException -> 0x0100, blocks: (B:33:0x00fc, B:35:0x010d, B:37:0x0113, B:39:0x0119, B:41:0x011d, B:42:0x0121, B:44:0x0132, B:49:0x013d, B:50:0x0144, B:52:0x014e, B:53:0x0151, B:55:0x015b, B:56:0x015e, B:58:0x0141), top: B:32:0x00fc }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void processMethods(DxContext dxContext, DirectClassFile directClassFile, CfOptions cfOptions, DexOptions dexOptions, ClassDefItem classDefItem, DexFile dexFile) {
        Method method;
        boolean z10;
        boolean z11;
        CstMethodRef cstMethodRef;
        int i10;
        int i11;
        DalvCode dalvCode;
        EncodedMethod encodedMethod;
        Annotations methodAnnotations;
        AnnotationsList parameterAnnotations;
        RopMethod ropMethod;
        DxContext dxContext2 = dxContext;
        CstType thisClass = directClassFile.getThisClass();
        MethodList methods = directClassFile.getMethods();
        int i12 = 0;
        for (int size = methods.size(); i12 < size; size = i11) {
            Method method2 = methods.get(i12);
            try {
                CstMethodRef cstMethodRef2 = new CstMethodRef(thisClass, method2.getNat());
                int accessFlags = method2.getAccessFlags();
                boolean isStatic = AccessFlags.isStatic(accessFlags);
                boolean isPrivate = AccessFlags.isPrivate(accessFlags);
                boolean isNative = AccessFlags.isNative(accessFlags);
                boolean isAbstract = AccessFlags.isAbstract(accessFlags);
                boolean z12 = true;
                if (!cstMethodRef2.isInstanceInit() && !cstMethodRef2.isClassInit()) {
                    z10 = false;
                    if (!isNative || isAbstract) {
                        z11 = isStatic;
                        cstMethodRef = cstMethodRef2;
                        method = method2;
                        i10 = i12;
                        i11 = size;
                        dalvCode = null;
                    } else {
                        if (cfOptions.positionInfo == 1) {
                            z12 = false;
                        }
                        i11 = size;
                        ConcreteMethod concreteMethod = new ConcreteMethod(method2, directClassFile, z12, cfOptions.localInfo);
                        DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
                        RopMethod convert = Ropper.convert(concreteMethod, dexTranslationAdvice, methods, dexOptions);
                        i10 = i12;
                        int parameterWordCount = cstMethodRef2.getParameterWordCount(isStatic);
                        String str = thisClass.getClassType().getDescriptor() + "." + method2.getName().getString();
                        if (cfOptions.optimize && dxContext2.optimizerOptions.shouldOptimize(str)) {
                            RopMethod optimize = Optimizer.optimize(convert, parameterWordCount, isStatic, cfOptions.localInfo, dexTranslationAdvice);
                            if (cfOptions.statistics) {
                                dxContext2.codeStatistics.updateRopStatistics(convert, optimize);
                            }
                            ropMethod = convert;
                            convert = optimize;
                        } else {
                            ropMethod = null;
                        }
                        LocalVariableInfo extract = cfOptions.localInfo ? LocalVariableExtractor.extract(convert) : null;
                        DalvCode translate = RopTranslator.translate(convert, cfOptions.positionInfo, extract, parameterWordCount, dexOptions);
                        if (!cfOptions.statistics || ropMethod == null) {
                            z11 = isStatic;
                            cstMethodRef = cstMethodRef2;
                            method = method2;
                        } else {
                            z11 = isStatic;
                            cstMethodRef = cstMethodRef2;
                            method = method2;
                            try {
                                updateDexStatistics(dxContext, cfOptions, dexOptions, convert, ropMethod, extract, parameterWordCount, concreteMethod.getCode().size());
                            } catch (RuntimeException e10) {
                                e = e10;
                                throw ExceptionWithContext.withContext(e, "...while processing " + method.getName().toHuman() + " " + method.getDescriptor().toHuman());
                            }
                        }
                        dalvCode = translate;
                    }
                    if (AccessFlags.isSynchronized(accessFlags)) {
                        accessFlags |= 131072;
                        if (!isNative) {
                            accessFlags &= -33;
                        }
                    }
                    if (z10) {
                        accessFlags |= 65536;
                    }
                    encodedMethod = new EncodedMethod(cstMethodRef, accessFlags, dalvCode, AttributeTranslator.getExceptions(method));
                    if (!cstMethodRef.isInstanceInit() && !cstMethodRef.isClassInit() && !z11 && !isPrivate) {
                        classDefItem.addVirtualMethod(encodedMethod);
                        methodAnnotations = AttributeTranslator.getMethodAnnotations(method);
                        if (methodAnnotations.size() != 0) {
                            classDefItem.addMethodAnnotations(cstMethodRef, methodAnnotations, dexFile);
                        }
                        parameterAnnotations = AttributeTranslator.getParameterAnnotations(method);
                        if (parameterAnnotations.size() != 0) {
                            classDefItem.addParameterAnnotations(cstMethodRef, parameterAnnotations, dexFile);
                        }
                        dexFile.getMethodIds().intern(cstMethodRef);
                        i12 = i10 + 1;
                        dxContext2 = dxContext;
                    }
                    classDefItem.addDirectMethod(encodedMethod);
                    methodAnnotations = AttributeTranslator.getMethodAnnotations(method);
                    if (methodAnnotations.size() != 0) {
                    }
                    parameterAnnotations = AttributeTranslator.getParameterAnnotations(method);
                    if (parameterAnnotations.size() != 0) {
                    }
                    dexFile.getMethodIds().intern(cstMethodRef);
                    i12 = i10 + 1;
                    dxContext2 = dxContext;
                }
                z10 = true;
                if (isNative) {
                }
                z11 = isStatic;
                cstMethodRef = cstMethodRef2;
                method = method2;
                i10 = i12;
                i11 = size;
                dalvCode = null;
                if (AccessFlags.isSynchronized(accessFlags)) {
                }
                if (z10) {
                }
                encodedMethod = new EncodedMethod(cstMethodRef, accessFlags, dalvCode, AttributeTranslator.getExceptions(method));
                if (!cstMethodRef.isInstanceInit()) {
                    classDefItem.addVirtualMethod(encodedMethod);
                    methodAnnotations = AttributeTranslator.getMethodAnnotations(method);
                    if (methodAnnotations.size() != 0) {
                    }
                    parameterAnnotations = AttributeTranslator.getParameterAnnotations(method);
                    if (parameterAnnotations.size() != 0) {
                    }
                    dexFile.getMethodIds().intern(cstMethodRef);
                    i12 = i10 + 1;
                    dxContext2 = dxContext;
                }
                classDefItem.addDirectMethod(encodedMethod);
                methodAnnotations = AttributeTranslator.getMethodAnnotations(method);
                if (methodAnnotations.size() != 0) {
                }
                parameterAnnotations = AttributeTranslator.getParameterAnnotations(method);
                if (parameterAnnotations.size() != 0) {
                }
                dexFile.getMethodIds().intern(cstMethodRef);
                i12 = i10 + 1;
                dxContext2 = dxContext;
            } catch (RuntimeException e11) {
                e = e11;
                method = method2;
            }
        }
    }

    public static ClassDefItem translate(DxContext dxContext, DirectClassFile directClassFile, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
        try {
            return translate0(dxContext, directClassFile, bArr, cfOptions, dexOptions, dexFile);
        } catch (RuntimeException e10) {
            throw ExceptionWithContext.withContext(e10, "...while processing " + directClassFile.getFilePath());
        }
    }

    private static ClassDefItem translate0(DxContext dxContext, DirectClassFile directClassFile, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
        dxContext.optimizerOptions.loadOptimizeLists(cfOptions.optimizeListFile, cfOptions.dontOptimizeListFile);
        ClassDefItem classDefItem = new ClassDefItem(directClassFile.getThisClass(), directClassFile.getAccessFlags() & (-33), directClassFile.getSuperclass(), directClassFile.getInterfaces(), cfOptions.positionInfo == 1 ? null : directClassFile.getSourceFile());
        Annotations classAnnotations = AttributeTranslator.getClassAnnotations(directClassFile, cfOptions);
        if (classAnnotations.size() != 0) {
            classDefItem.setClassAnnotations(classAnnotations, dexFile);
        }
        FieldIdsSection fieldIds = dexFile.getFieldIds();
        MethodIdsSection methodIds = dexFile.getMethodIds();
        processFields(directClassFile, classDefItem, dexFile);
        processMethods(dxContext, directClassFile, cfOptions, dexOptions, classDefItem, dexFile);
        ConstantPool constantPool = directClassFile.getConstantPool();
        int size = constantPool.size();
        for (int i10 = 0; i10 < size; i10++) {
            Constant orNull = constantPool.getOrNull(i10);
            if (orNull instanceof CstMethodRef) {
                methodIds.intern((CstBaseMethodRef) orNull);
            } else if (orNull instanceof CstInterfaceMethodRef) {
                methodIds.intern(((CstInterfaceMethodRef) orNull).toMethodRef());
            } else if (orNull instanceof CstFieldRef) {
                fieldIds.intern((CstFieldRef) orNull);
            } else if (orNull instanceof CstEnumRef) {
                fieldIds.intern(((CstEnumRef) orNull).getFieldRef());
            }
        }
        return classDefItem;
    }

    private static void updateDexStatistics(DxContext dxContext, CfOptions cfOptions, DexOptions dexOptions, RopMethod ropMethod, RopMethod ropMethod2, LocalVariableInfo localVariableInfo, int i10, int i11) {
        DalvCode translate = RopTranslator.translate(ropMethod, cfOptions.positionInfo, localVariableInfo, i10, dexOptions);
        DalvCode translate2 = RopTranslator.translate(ropMethod2, cfOptions.positionInfo, localVariableInfo, i10, dexOptions);
        DalvCode.AssignIndicesCallback assignIndicesCallback = new DalvCode.AssignIndicesCallback() {
            @Override
            public int getIndex(Constant constant) {
                return 0;
            }
        };
        translate.assignIndices(assignIndicesCallback);
        translate2.assignIndices(assignIndicesCallback);
        dxContext.codeStatistics.updateDexStatistics(translate2, translate);
        dxContext.codeStatistics.updateOriginalByteCount(i11);
    }
}
