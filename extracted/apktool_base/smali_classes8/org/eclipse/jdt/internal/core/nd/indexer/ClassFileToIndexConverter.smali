.class public final Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;
    }
.end annotation


# static fields
.field private static final ARRAY_FIELD_DESCRIPTOR_PREFIX:[C

.field private static final COMMA:[C

.field static final EMPTY_CHAR_ARRAY:[C

.field private static final EMPTY_CHAR_ARRAY_ARRAY:[[C

.field private static final ENABLE_LOGGING:Z = false

.field private static final FIELD_DESCRIPTOR_SUFFIX:[C

.field private static final INNER_TYPE_SEPARATOR:[C

.field private static final JAVA_LANG_OBJECT_FIELD_DESCRIPTOR:[C

.field private static final PATH_SEPARATOR:[C


# instance fields
.field private index:Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

.field private resource:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Ljava/lang/Object;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->JAVA_LANG_OBJECT_FIELD_DESCRIPTOR:[C

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x24

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->INNER_TYPE_SEPARATOR:[C

    new-array v1, v0, [C

    const/16 v2, 0x3b

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->FIELD_DESCRIPTOR_SUFFIX:[C

    new-array v1, v0, [C

    const/16 v2, 0x2c

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->COMMA:[C

    new-array v1, v3, [[C

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->EMPTY_CHAR_ARRAY_ARRAY:[[C

    new-array v1, v3, [C

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->EMPTY_CHAR_ARRAY:[C

    new-array v1, v0, [C

    const/16 v2, 0x2f

    aput-char v2, v1, v3

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->PATH_SEPARATOR:[C

    new-array v0, v0, [C

    const/16 v1, 0x5b

    aput-char v1, v0, v3

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->ARRAY_FIELD_DESCRIPTOR_PREFIX:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->resource:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex(Lorg/eclipse/jdt/internal/core/nd/Nd;)Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->index:Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    return-void
.end method

.method public static synthetic a([[CLjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->lambda$0([[CLjava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private addField(Lorg/eclipse/jdt/internal/core/nd/java/NdType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->createVariable()Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;

    move-result-object p1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->setName([C)V

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getGenericSignature()[C

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->setVariableFlag(B)V

    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->attachAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->setConstant(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)V

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericField;->getModifiers()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->setModifiers(I)V

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/GenericSignatures;->getGenericSignatureFor(Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->allocateTypeAnnotations(I)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->createTypeAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initTypeAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeName()[C

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->setType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTagBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->setTagBits(J)V

    return-void
.end method

.method private addMethod(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->attachAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/GenericSignatures;->getGenericSignature(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    move-result-object v5

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    invoke-direct {v0, v1, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->readTypeParameters(Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)V

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v7

    if-eqz v7, :cond_2

    array-length v8, v7

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->allocateTypeAnnotations(I)V

    array-length v8, v7

    move v9, v4

    :goto_1
    if-lt v9, v8, :cond_1

    goto :goto_2

    :cond_1
    aget-object v10, v7, v9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createTypeAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;

    move-result-object v11

    invoke-direct {v0, v11, v10}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initTypeAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v7, 0x28

    invoke-direct {v0, v5, v7}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    invoke-direct {v0, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v8

    const/16 v9, 0x29

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v8

    if-ne v8, v9, :cond_15

    invoke-direct {v0, v6, v9}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getArgumentNames()[[C

    move-result-object v8

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->countMethodArguments(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)I

    move-result v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v12

    if-nez v12, :cond_4

    const/4 v12, 0x1

    goto :goto_5

    :cond_4
    move v12, v4

    :goto_5
    if-eqz v12, :cond_6

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isMember()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_6

    :cond_5
    move v11, v4

    :cond_6
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotatedParametersCount()I

    move-result v13

    if-nez v8, :cond_7

    move v14, v4

    goto :goto_7

    :cond_7
    array-length v14, v8

    :goto_7
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v1, v10}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->allocateParameters(I)V

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v10

    move v15, v4

    :goto_8
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v17

    if-eqz v17, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v3

    if-ne v3, v9, :cond_10

    invoke-direct {v0, v5, v9}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    :goto_9
    invoke-direct {v0, v6, v9}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->readNextFieldDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)[C

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->setReturnType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->hasAnotherException(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)Z

    move-result v3

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getExceptionTypeNames()[[C

    move-result-object v4

    if-nez v4, :cond_9

    sget-object v4, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->EMPTY_ARRAY_OF_CHAR_ARRAYS:[[C

    :cond_9
    array-length v6, v4

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->allocateExceptions(I)V

    if-eqz v3, :cond_b

    const/16 v16, 0x0

    :goto_a
    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->hasAnotherException(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_c

    :cond_a
    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/16 v17, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-object v6, v4, v16

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createException(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;

    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    :cond_b
    array-length v5, v4

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    :goto_b
    array-length v6, v4

    if-lt v5, v6, :cond_c

    goto :goto_c

    :cond_c
    aget-object v6, v4, v5

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object v6

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-direct {v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    aget-object v6, v4, v5

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object v6

    invoke-direct {v0, v7, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createException(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_d
    :goto_c
    if-eqz v3, :cond_e

    or-int/lit8 v2, v2, 0x2

    :cond_e
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createConstantFromMixedType(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->setDefaultValue(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)V

    :cond_f
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->setModifiers(I)V

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->setTagBits(J)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->setFlags(I)V

    return-void

    :cond_10
    const/16 v17, 0x1

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    if-ge v15, v11, :cond_11

    move/from16 v9, v17

    goto :goto_d

    :cond_11
    const/4 v9, 0x0

    :goto_d
    if-eqz v9, :cond_12

    if-nez v12, :cond_12

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    move/from16 v18, v2

    goto :goto_e

    :cond_12
    move/from16 v18, v2

    move-object v1, v5

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createNewParameter()Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;

    move-result-object v2

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->setType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    invoke-virtual {v2, v9}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->setCompilerDefined(Z)V

    move-object/from16 v1, p2

    if-ge v15, v13, :cond_13

    invoke-interface {v1, v15, v10}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->attachAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    :cond_13
    if-nez v9, :cond_14

    if-le v14, v4, :cond_14

    add-int/lit8 v3, v4, 0x1

    aget-object v4, v8, v4

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->setName([C)V

    move v4, v3

    :cond_14
    add-int/lit8 v15, v15, 0x1

    int-to-short v15, v15

    move-object/from16 v1, p1

    move/from16 v2, v18

    const/16 v9, 0x29

    goto/16 :goto_8

    :cond_15
    move-object/from16 v1, p2

    move/from16 v18, v2

    const/16 v17, 0x1

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->readNextFieldDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)[C

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move/from16 v2, v18

    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method private attachAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 1
    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->allocateAnnotations(I)V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->createAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    move-result-object v3

    .line 4
    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private attachAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 13
    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->allocateAnnotations(I)V

    .line 14
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    .line 15
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->createAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    move-result-object v3

    .line 16
    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private attachAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdType;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 5
    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->allocateAnnotations(I)V

    .line 6
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->createAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    move-result-object v3

    .line 8
    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private attachAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 9
    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->allocateAnnotations(I)V

    .line 10
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->createAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    move-result-object v3

    .line 12
    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private countMethodArguments(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)I
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/16 p1, 0x28

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_6

    const/16 v2, 0x4c

    const/16 v3, 0x3b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x56

    if-eq v1, v2, :cond_6

    const/16 v2, 0x49

    if-eq v1, v2, :cond_6

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_6

    const/16 v2, 0x53

    if-eq v1, v2, :cond_6

    const/16 v2, 0x54

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_6

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generic signature starts with unknown character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->nextWord()[C

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->nextWord()[C

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown char in generic signature "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    goto/16 :goto_0

    :cond_7
    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createInfoFromClassFileInJar(Lorg/eclipse/jdt/internal/core/Openable;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x2f

    invoke-static {v1, p0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getJar()Ljava/util/zip/ZipFile;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    const-string v2, "Unable to parse JAR file"

    invoke-static {v2, p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->createStatus(Ljava/lang/String;Ljava/lang/Throwable;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw p0
.end method

.method private createTypeIdFromBinaryName([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->index:Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->createTypeId([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p1

    return-object p1
.end method

.method private createTypeIdFromFieldDescriptor([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->index:Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->createTypeId([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p1

    return-object p1
.end method

.method private createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_8

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_8

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_8

    const/16 v4, 0x46

    if-eq v2, v4, :cond_7

    const/16 v4, 0x4c

    if-eq v2, v4, :cond_6

    const/16 v4, 0x56

    if-eq v2, v4, :cond_5

    const/16 v4, 0x49

    if-eq v2, v4, :cond_7

    const/16 v4, 0x4a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x53

    if-eq v2, v4, :cond_7

    const/16 v4, 0x54

    if-eq v2, v4, :cond_3

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    new-instance p2, Lorg/eclipse/core/runtime/CoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Generic signature starts with unknown character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->createStatus(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p2

    :cond_1
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v2, v1

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-eqz p2, :cond_2

    array-length v2, p2

    if-lez v2, :cond_2

    aget-char v0, p2, v0

    if-ne v0, v4, :cond_2

    invoke-static {p2, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CI)[C

    move-result-object v3

    :cond_2
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->ARRAY_FIELD_DESCRIPTOR_PREFIX:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v0

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C)[C

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeIdFromFieldDescriptor([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p2

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->setRawType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)V

    new-instance p2, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;)V

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->setType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    return-object v0

    :cond_3
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    if-nez p2, :cond_4

    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->JAVA_LANG_OBJECT_FIELD_DESCRIPTOR:[C

    :cond_4
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeIdFromFieldDescriptor([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->setRawType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->nextWord()[C

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->setVariableIdentifier([C)V

    const/16 p2, 0x3b

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    return-object v0

    :cond_5
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr p2, v1

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    return-object v3

    :cond_6
    invoke-direct {p0, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->parseClassTypeSignature(Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object p1

    return-object p1

    :cond_7
    :pswitch_0
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr p2, v1

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    new-array p1, v1, [C

    aput-char v2, p1, v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeIdFromFieldDescriptor([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p1

    return-object p1

    :cond_8
    new-instance p2, Lorg/eclipse/core/runtime/CoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected wildcard in top-level of generic signature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->createStatus(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p2

    :cond_9
    :goto_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private findEndOfFieldDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    return v1

    :cond_1
    aget-char v2, v0, v1

    const/16 v3, 0x46

    if-eq v2, v3, :cond_4

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x56

    if-eq v2, v3, :cond_4

    const/16 v3, 0x49

    if-eq v2, v3, :cond_4

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x53

    if-eq v2, v3, :cond_4

    const/16 v3, 0x54

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/eclipse/core/runtime/CoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field descriptor starts with unknown character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->createStatus(Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/core/runtime/CoreException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 p1, 0x3b

    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->indexOf(C[CII)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_5
    :goto_1
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    return p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getMissingTypeString([[[C)[C
    .locals 7

    if-eqz p0, :cond_6

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object p0

    goto :goto_4

    :cond_0
    aget-object v3, p0, v2

    if-eqz v2, :cond_1

    sget-object v4, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->COMMA:[C

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-object v5, v3, v4

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    sget-object v6, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->PATH_SEPARATOR:[C

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :cond_5
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->append([C)Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_4
    return-object p0
.end method

.method private getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->resource:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    return-object v0
.end method

.method private getSelectorAndDescriptor(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)[C
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C)[C

    move-result-object p1

    return-object p1
.end method

.method private hasAnotherException(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result p1

    const/16 v0, 0x5e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    .locals 4

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeIdFromBinaryName([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->setType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->allocateValuePairs(I)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->createValuePair([C)Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;

    move-result-object v3

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createConstantFromMixedType(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->setValue(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private initTypeAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V
    .locals 5

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->setPath([B)V

    goto :goto_1

    :cond_0
    aget v4, v0, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->setTargetType(I)V

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Target type not handled "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getThrowsTypeIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->setTargetInfo(I)V

    goto :goto_2

    :pswitch_1
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getMethodFormalParameterIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->setTargetInfo(I)V

    goto :goto_2

    :pswitch_2
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypeParameterIndex()I

    move-result v0

    int-to-byte v0, v0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getBoundIndex()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->setTargetInfo(BB)V

    goto :goto_2

    :pswitch_3
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getSupertypeIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->setTargetInfo(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypeParameterIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->setTargetInfo(I)V

    :goto_2
    :pswitch_4
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$0([[CLjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, p0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p0, p0, p2

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->compare([C[C)I

    move-result p0

    return p0
.end method

.method private logInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private parseClassTypeSignature(Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->nextWord()[C

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptorWithoutTrailingSemicolon()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->INNER_TYPE_SEPARATOR:[C

    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->FIELD_DESCRIPTOR_SUFFIX:[C

    invoke-static {v1, v2, v0, v3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C[C)[C

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->FIELD_DESCRIPTOR_SUFFIX:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C)[C

    move-result-object v0

    :goto_0
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v2, v1

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    aget-char v2, v1, v3

    const/16 v6, 0x3c

    if-ne v2, v6, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    aget-char v3, v1, v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeIdFromFieldDescriptor([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v5

    goto/16 :goto_8

    :cond_4
    :goto_4
    new-instance v3, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->setRawType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)V

    if-eqz v2, :cond_a

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v0, v5

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    :goto_5
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    array-length v2, v1

    const/16 v7, 0x3e

    if-ge v0, v2, :cond_9

    aget-char v0, v1, v0

    if-ne v0, v7, :cond_5

    goto :goto_7

    :cond_5
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;)V

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v2, v1, v2

    const/16 v7, 0x2a

    if-eq v2, v7, :cond_8

    const/16 v7, 0x2b

    if-eq v2, v7, :cond_7

    const/16 v7, 0x2d

    if-eq v2, v7, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->setWildcard(I)V

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v2, v5

    iput v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    goto :goto_6

    :cond_7
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->setWildcard(I)V

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v2, v5

    iput v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    :goto_6
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->setType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeArgument;->setWildcard(I)V

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v0, v5

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    goto :goto_5

    :cond_9
    :goto_7
    invoke-direct {p0, p2, v7}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;->setGenericDeclaringType(Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;)V

    :cond_b
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char p1, v1, p1

    if-ne p1, v6, :cond_c

    invoke-direct {p0, p2, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->parseClassTypeSignature(Lorg/eclipse/jdt/internal/core/nd/java/NdComplexTypeSignature;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    goto :goto_8

    :cond_c
    move-object v0, v3

    goto :goto_3

    :goto_8
    if-eqz v4, :cond_d

    const/16 p1, 0x3b

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    :cond_d
    return-object v0
.end method

.method private readNextFieldDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)[C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->findEndOfFieldDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)I

    move-result v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->subarray([CII)[C

    move-result-object v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    return-object v1
.end method

.method private readTypeParameters(Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v1, v0

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->skipAngleContents(I)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v4, v3

    iput v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 v4, 0x0

    :goto_0
    iget v5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-lt v5, v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->allocateTypeParameters(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, 0x3e

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->createTypeParameter()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;

    move-result-object v7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->identifier:[C

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->setIdentifier([C)V

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->firstBoundIsClass:Z

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->setFirstBoundIsClass(Z)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->bounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->allocateBounds(I)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->bounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->createBound(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    goto :goto_2

    :cond_3
    const/16 v6, 0x3a

    invoke-static {v6, v0, v5, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CII)I

    move-result v5

    iget v7, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    if-le v5, v7, :cond_5

    invoke-static {v0, v7, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v4

    new-instance v7, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;-><init>()V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v4, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->identifier:[C

    add-int/lit8 v5, v5, 0x1

    iput v5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v4

    if-eq v4, v6, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v7, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->firstBoundIsClass:Z

    move-object v4, v7

    :cond_5
    invoke-direct {p0, p2, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V

    sget-object v5, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->JAVA_LANG_OBJECT_FIELD_DESCRIPTOR:[C

    invoke-direct {p0, p2, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v5

    iget-object v6, v4, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter$TypeParameter;->bounds:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    :goto_4
    return-void
.end method

.method private skipChar(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;C)V
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->charAtStart()C

    move-result v0

    if-ne v0, p2, :cond_0

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;[CLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/java/NdType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adding binary type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->logInfo(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeIdFromFieldDescriptor([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->resource:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/core/nd/NdStruct;->address:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->findTypeByResourceAddress(J)Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->resource:Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)V

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    array-length v4, v2

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->allocateTypeAnnotations(I)V

    array-length v4, v2

    move v5, v3

    :goto_0
    if-lt v5, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v2, v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->createTypeAnnotation()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initTypeAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setTypeId(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)V

    invoke-static {p3, p2}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setFieldDescriptorFromClass([C)V

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object p2

    if-nez p2, :cond_4

    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->EMPTY_CHAR_ARRAY_ARRAY:[[C

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object p3

    if-eqz p3, :cond_5

    const/16 p3, 0x8

    const/4 v0, 0x1

    invoke-virtual {v1, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setFlag(BZ)V

    :cond_5
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/GenericSignatures;->getGenericSignature(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    move-result-object p3

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->setModifiers(I)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingTypeName()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeIdFromBinaryName([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setDeclaringType(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;)V

    invoke-direct {p0, v1, p3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->readTypeParameters(Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->JAVA_LANG_OBJECT_FIELD_DESCRIPTOR:[C

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object v0

    :goto_2
    invoke-direct {p0, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setSuperclass(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    move v0, v3

    :goto_3
    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget-object v4, p3, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v4, v4

    if-lt v2, v4, :cond_c

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->attachAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdType;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingMethod()[C

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setDeclaringMethod([C)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object p2

    if-eqz p2, :cond_8

    array-length p3, p2

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->allocateVariables(I)V

    array-length p3, p2

    move v0, v3

    :goto_4
    if-lt v0, p3, :cond_7

    goto :goto_5

    :cond_7
    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->addField(Lorg/eclipse/jdt/internal/core/nd/java/NdType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object p2

    if-eqz p2, :cond_b

    array-length p3, p2

    new-array p3, p3, [[C

    array-length v0, p2

    new-array v2, v0, [Ljava/lang/Integer;

    move v4, v3

    :goto_6
    if-lt v4, v0, :cond_a

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/indexer/a;

    invoke-direct {v0, p3}, Lorg/eclipse/jdt/internal/core/nd/indexer/a;-><init>([[C)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p2

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->allocateMethods(I)V

    :goto_7
    array-length v0, p2

    if-lt v3, v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->createMethod()Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;

    move-result-object v0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->setDeclarationPosition(I)V

    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->setMethodName([C)V

    aget-object v4, p2, v4

    invoke-direct {p0, v0, v4, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->addMethod(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    aget-object v5, p2, v4

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getSelectorAndDescriptor(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)[C

    move-result-object v5

    aput-object v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMissingTypeNames()[[[C

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getMissingTypeString([[[C)[C

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setMissingTypeNames([C)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->sourceFileName()[C

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setSourceFileName([C)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isAnonymous()Z

    move-result p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setAnonymous(Z)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isLocal()Z

    move-result p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setIsLocal(Z)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isMember()Z

    move-result p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setIsMember(Z)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setTagBits(J)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSourceName()[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->setSourceNameOverride([C)V

    return-object v1

    :cond_c
    array-length v2, p2

    if-ge v0, v2, :cond_d

    aget-object v2, p2, v0

    goto :goto_9

    :cond_d
    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->EMPTY_CHAR_ARRAY:[C

    :goto_9
    new-instance v4, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v5

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v2

    invoke-direct {v4, v5, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdType;Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)V

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto/16 :goto_3
.end method

.method public createConstantFromMixedType(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;
    .locals 4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;->getTypeName()[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->binaryNameToFieldDescriptor([C)[C

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->index:Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->createTypeId([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantClass;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantClass;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantAnnotation;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantAnnotation;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantAnnotation;->getValue()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->initAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    return-object v0

    :cond_2
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v2, :cond_3

    return-object v0

    :cond_3
    aget-object v3, v1, p1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createConstantFromMixedType(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->setParent(Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getTypeName()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->createTypeIdFromBinaryName([C)Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;->create(Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown constant type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
