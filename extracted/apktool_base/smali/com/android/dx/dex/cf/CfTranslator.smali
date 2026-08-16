.class public Lcom/android/dx/dex/cf/CfTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static coerceConstant(Lcom/android/dx/rop/cst/TypedConstant;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/TypedConstant;
    .locals 3

    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    check-cast p0, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/dx/rop/cst/CstShort;->make(I)Lcom/android/dx/rop/cst/CstShort;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t coerce "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p0, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/dx/rop/cst/CstChar;->make(I)Lcom/android/dx/rop/cst/CstChar;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast p0, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/dx/rop/cst/CstByte;->make(I)Lcom/android/dx/rop/cst/CstByte;

    move-result-object p0

    return-object p0

    :cond_4
    check-cast p0, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/dx/rop/cst/CstBoolean;->make(I)Lcom/android/dx/rop/cst/CstBoolean;

    move-result-object p0

    return-object p0
.end method

.method private static processFields(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/android/dx/cf/iface/FieldList;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/dx/cf/iface/FieldList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {p0, v2}, Lcom/android/dx/cf/iface/FieldList;->get(I)Lcom/android/dx/cf/iface/Field;

    move-result-object v3

    :try_start_0
    new-instance v4, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result v5

    invoke-static {v5}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Lcom/android/dx/cf/iface/Field;->getConstantValue()Lcom/android/dx/rop/cst/TypedConstant;

    move-result-object v6

    new-instance v7, Lcom/android/dx/dex/file/EncodedField;

    invoke-direct {v7, v4, v5}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstFieldRef;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/dx/dex/cf/CfTranslator;->coerceConstant(Lcom/android/dx/rop/cst/TypedConstant;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/TypedConstant;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {p1, v7, v6}, Lcom/android/dx/dex/file/ClassDefItem;->addStaticField(Lcom/android/dx/dex/file/EncodedField;Lcom/android/dx/rop/cst/Constant;)V

    goto :goto_2

    :cond_1
    new-instance v6, Lcom/android/dx/dex/file/EncodedField;

    invoke-direct {v6, v4, v5}, Lcom/android/dx/dex/file/EncodedField;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V

    invoke-virtual {p1, v6}, Lcom/android/dx/dex/file/ClassDefItem;->addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V

    :goto_2
    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v5

    invoke-static {v5}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4, v5, p2}, Lcom/android/dx/dex/file/ClassDefItem;->addFieldAnnotations(Lcom/android/dx/rop/cst/CstFieldRef;Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "...while processing "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/dx/cf/iface/Member;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object p0

    throw p0

    :cond_3
    return-void
.end method

.method private static processMethods(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/dx/cf/iface/MethodList;->size()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_0
    if-ge v8, v15, :cond_f

    invoke-interface {v14, v8}, Lcom/android/dx/cf/iface/MethodList;->get(I)Lcom/android/dx/cf/iface/Method;

    move-result-object v7

    :try_start_0
    new-instance v6, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-interface {v7}, Lcom/android/dx/cf/iface/Member;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-direct {v6, v13, v1}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    invoke-interface {v7}, Lcom/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v5

    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    move-result v18

    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isNative(I)Z

    move-result v19

    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isAbstract(I)Z

    move-result v1

    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isInstanceInit()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isClassInit()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v20, v16

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v25, v7

    goto/16 :goto_b

    :cond_1
    :goto_1
    move/from16 v20, v3

    :goto_2
    if-nez v19, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move/from16 v27, v5

    move-object v0, v6

    move-object/from16 v25, v7

    move/from16 v22, v8

    move/from16 v21, v15

    move-object/from16 v15, p1

    goto/16 :goto_7

    :cond_3
    new-instance v1, Lcom/android/dx/cf/code/ConcreteMethod;

    iget v4, v9, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    if-eq v4, v3, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v3, v16

    :goto_3
    iget-boolean v4, v9, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    move/from16 v21, v15

    move-object/from16 v15, p1

    invoke-direct {v1, v7, v15, v3, v4}, Lcom/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/android/dx/cf/iface/Method;Lcom/android/dx/cf/iface/ClassFile;ZZ)V

    sget-object v3, Lcom/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/android/dx/rop/code/DexTranslationAdvice;

    invoke-static {v1, v3, v14, v10}, Lcom/android/dx/cf/code/Ropper;->convert(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v4

    move/from16 v22, v8

    invoke-virtual {v6, v5}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getParameterWordCount(Z)I

    move-result v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v24

    move-object/from16 v25, v6

    invoke-virtual/range {v24 .. v24}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/dx/cf/iface/Member;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v6, v9, Lcom/android/dx/dex/cf/CfOptions;->optimize:Z

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/android/dx/dex/cf/OptimizerOptions;

    invoke-virtual {v6, v2}, Lcom/android/dx/dex/cf/OptimizerOptions;->shouldOptimize(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v9, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    invoke-static {v4, v8, v5, v2, v3}, Lcom/android/dx/ssa/Optimizer;->optimize(Lcom/android/dx/rop/code/RopMethod;IZZLcom/android/dx/rop/code/TranslationAdvice;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v2

    iget-boolean v3, v9, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {v3, v4, v2}, Lcom/android/dx/dex/cf/CodeStatistics;->updateRopStatistics(Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;)V

    :cond_5
    move-object v6, v4

    move-object v4, v2

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    iget-boolean v2, v9, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    if-eqz v2, :cond_7

    invoke-static {v4}, Lcom/android/dx/rop/code/LocalVariableExtractor;->extract(Lcom/android/dx/rop/code/RopMethod;)Lcom/android/dx/rop/code/LocalVariableInfo;

    move-result-object v2

    move-object v3, v2

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    iget v2, v9, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {v4, v2, v3, v8, v10}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    move-result-object v23

    iget-boolean v2, v9, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    if-eqz v2, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/cf/code/BytecodeArray;->size()I

    move-result v24
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v26, v3

    move-object/from16 v3, p3

    move/from16 v27, v5

    move-object v5, v6

    move-object/from16 v0, v25

    move-object/from16 v6, v26

    move-object/from16 v25, v7

    move v7, v8

    move/from16 v8, v24

    :try_start_1
    invoke-static/range {v1 .. v8}, Lcom/android/dx/dex/cf/CfTranslator;->updateDexStatistics(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/LocalVariableInfo;II)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_8
    move/from16 v27, v5

    move-object/from16 v0, v25

    move-object/from16 v25, v7

    :goto_6
    move-object/from16 v2, v23

    goto :goto_8

    :goto_7
    const/4 v2, 0x0

    :goto_8
    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/AccessFlags;->isSynchronized(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v1, 0x20000

    or-int v17, v17, v1

    if-nez v19, :cond_9

    and-int/lit8 v17, v17, -0x21

    :cond_9
    if-eqz v20, :cond_a

    const/high16 v1, 0x10000

    or-int v17, v17, v1

    :cond_a
    move/from16 v1, v17

    invoke-static/range {v25 .. v25}, Lcom/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/type/TypeList;

    move-result-object v3

    new-instance v4, Lcom/android/dx/dex/file/EncodedMethod;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/dx/dex/file/EncodedMethod;-><init>(Lcom/android/dx/rop/cst/CstMethodRef;ILcom/android/dx/dex/code/DalvCode;Lcom/android/dx/rop/type/TypeList;)V

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isInstanceInit()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isClassInit()Z

    move-result v1

    if-nez v1, :cond_c

    if-nez v27, :cond_c

    if-eqz v18, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v11, v4}, Lcom/android/dx/dex/file/ClassDefItem;->addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    goto :goto_a

    :cond_c
    :goto_9
    invoke-virtual {v11, v4}, Lcom/android/dx/dex/file/ClassDefItem;->addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    :goto_a
    invoke-static/range {v25 .. v25}, Lcom/android/dx/dex/cf/AttributeTranslator;->getMethodAnnotations(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v11, v0, v1, v12}, Lcom/android/dx/dex/file/ClassDefItem;->addMethodAnnotations(Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    :cond_d
    invoke-static/range {v25 .. v25}, Lcom/android/dx/dex/cf/AttributeTranslator;->getParameterAnnotations(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/util/FixedSizeList;->size()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v11, v0, v1, v12}, Lcom/android/dx/dex/file/ClassDefItem;->addParameterAnnotations(Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/rop/annotation/AnnotationsList;Lcom/android/dx/dex/file/DexFile;)V

    :cond_e
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v8, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v15, v21

    goto/16 :goto_0

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v25 .. v25}, Lcom/android/dx/cf/iface/Member;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v25 .. v25}, Lcom/android/dx/cf/iface/Member;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0

    :cond_f
    return-void
.end method

.method public static translate(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 0

    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/android/dx/dex/cf/CfTranslator;->translate0(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "...while processing "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object p0

    throw p0
.end method

.method private static translate0(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 14

    move-object v6, p1

    move-object/from16 v2, p3

    move-object v0, p0

    move-object/from16 v5, p5

    iget-object v1, v0, Lcom/android/dx/command/dexer/DxContext;->optimizerOptions:Lcom/android/dx/dex/cf/OptimizerOptions;

    iget-object v3, v2, Lcom/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/dx/dex/cf/OptimizerOptions;->loadOptimizeLists(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getAccessFlags()I

    move-result v1

    and-int/lit8 v9, v1, -0x21

    iget v1, v2, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v12, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getSourceFile()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v13, Lcom/android/dx/dex/file/ClassDefItem;

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getSuperclass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getInterfaces()Lcom/android/dx/rop/type/TypeList;

    move-result-object v11

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/dx/dex/file/ClassDefItem;-><init>(Lcom/android/dx/rop/cst/CstType;ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstString;)V

    invoke-static {p1, v2}, Lcom/android/dx/dex/cf/AttributeTranslator;->getClassAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotations;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v13, v1, v5}, Lcom/android/dx/dex/file/ClassDefItem;->setClassAnnotations(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/dex/file/DexFile;)V

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v8

    invoke-static {p1, v13, v5}, Lcom/android/dx/dex/cf/CfTranslator;->processFields(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v13

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/cf/CfTranslator;->processMethods(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/ClassDefItem;Lcom/android/dx/dex/file/DexFile;)V

    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dx/rop/cst/ConstantPool;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    invoke-interface {v0, v2}, Lcom/android/dx/rop/cst/ConstantPool;->getOrNull(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    instance-of v4, v3, Lcom/android/dx/rop/cst/CstMethodRef;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v8, v3}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    goto :goto_3

    :cond_2
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    goto :goto_3

    :cond_3
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v7, v3}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_3

    :cond_4
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstEnumRef;

    if-eqz v4, :cond_5

    check-cast v3, Lcom/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-object v13
.end method

.method private static updateDexStatistics(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/RopMethod;Lcom/android/dx/rop/code/LocalVariableInfo;II)V
    .locals 1

    iget v0, p1, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {p3, v0, p5, p6, p2}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    move-result-object p3

    iget p1, p1, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    invoke-static {p4, p1, p5, p6, p2}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    move-result-object p1

    new-instance p2, Lcom/android/dx/dex/cf/CfTranslator$1;

    invoke-direct {p2}, Lcom/android/dx/dex/cf/CfTranslator$1;-><init>()V

    invoke-virtual {p3, p2}, Lcom/android/dx/dex/code/DalvCode;->assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    invoke-virtual {p1, p2}, Lcom/android/dx/dex/code/DalvCode;->assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    iget-object p2, p0, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {p2, p1, p3}, Lcom/android/dx/dex/cf/CodeStatistics;->updateDexStatistics(Lcom/android/dx/dex/code/DalvCode;Lcom/android/dx/dex/code/DalvCode;)V

    iget-object p0, p0, Lcom/android/dx/command/dexer/DxContext;->codeStatistics:Lcom/android/dx/dex/cf/CodeStatistics;

    invoke-virtual {p0, p7}, Lcom/android/dx/dex/cf/CodeStatistics;->updateOriginalByteCount(I)V

    return-void
.end method
