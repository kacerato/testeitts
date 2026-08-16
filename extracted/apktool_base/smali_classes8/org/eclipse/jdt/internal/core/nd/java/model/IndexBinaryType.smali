.class public Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;


# static fields
.field private static final NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

.field private static final NO_PATH:[I


# instance fields
.field private binaryTypeName:[C

.field private enclosingMethod:[C

.field private enclosingType:[C

.field private fileName:[C

.field private isAnonymous:Z

.field private isLocal:Z

.field private isMember:Z

.field private modifiers:I

.field private simpleAttributesInitialized:Z

.field private superclassName:[C

.field private tagBits:J

.field private final typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->NO_PATH:[I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->fileName:[C

    return-void
.end method

.method public static createBinaryAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->getElementValuePairs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;->getType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->fieldDescriptorToBinaryName([C)[C

    move-result-object p0

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType$1;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType$1;-><init>([C[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;)V

    return-object v0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->getName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotationValuePair;->getValue()Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->unpackValue(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;-><init>([CLjava/lang/Object;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createBinaryField(Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;
    .locals 12

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getConstant()Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_1
    move-object v3, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getTypeAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryTypeAnnotations(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->toAnnotationArray(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->hasVariableFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;->getTagBits()J

    move-result-wide v7

    new-instance v11, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getModifiers()I

    move-result v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryField;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/impl/Constant;[CI[CJ[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[C)V

    return-object v11
.end method

.method private createBinaryMethod(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->create()Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->toAnnotationArray(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getModifiers()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setModifiers(I)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->isConstructor()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setIsConstructor(Z)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->getArgumentNames(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)[[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setArgumentNames([[C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getDefaultValue()Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->unpackValue(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setDefaultValue(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->getExceptionTypeNames(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)[[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setExceptionTypeNames([[C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->getGenericSignatureFor(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setGenericSignature([C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getMethodDescriptor()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setMethodDescriptor([C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->getParameterAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)[[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setParameterAnnotations([[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getSelector()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setSelector([C)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getTagBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setTagBits(J)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->isClInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setIsClInit(Z)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getTypeAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryTypeAnnotations(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryMethod;

    move-result-object p1

    return-object p1
.end method

.method private createBinaryNestedType(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getDeclaringType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getModifiers()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryNestedType;-><init>([C[CI)V

    return-object v0
.end method

.method private static createBinaryTypeAnnotations(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;",
            ">;)[",
            "Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v9

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTypePath()[B

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->getTypePath([B)[I

    move-result-object v8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTargetType()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target type not handled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTargetType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTarget()I

    move-result v4

    :goto_1
    move v7, v1

    move v6, v4

    goto :goto_2

    :pswitch_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTarget()I

    move-result v4

    goto :goto_1

    :pswitch_2
    move v6, v1

    move v7, v6

    goto :goto_2

    :pswitch_3
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTargetInfoArg0()B

    move-result v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTargetInfoArg1()B

    move-result v5

    move v6, v4

    move v7, v5

    goto :goto_2

    :pswitch_4
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTarget()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTargetInfoArg0()B

    move-result v4

    goto :goto_1

    :goto_2
    add-int/lit8 v10, v2, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeAnnotation;->getTargetType()I

    move-result v5

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;-><init>(III[ILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    aput-object v11, v0, v2

    move v2, v10

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getArgumentNames(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)[[C
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getParameterNames()[[C

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [[C

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    return-object p1

    :cond_1
    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    array-length v3, v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getExceptionTypeNames(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)[[C
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getExceptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[C

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodException;->getExceptionType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getGenericSignatureFor(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)[C
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->hasAllFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->hasAllFlags(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getGenericSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Z)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object p0

    return-object p0
.end method

.method private getParameterAnnotations(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)[[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;->getMethodParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdMethodParameter;->getAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->toAnnotationArray(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getTypePath([B)[I
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->NO_PATH:[I

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    aget-byte v2, p0, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static toAnnotationArray(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;",
            ">;)[",
            "Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static unpackValue(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantAnnotation;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantAnnotation;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantAnnotation;->getValue()Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryAnnotation(Lorg/eclipse/jdt/internal/core/nd/java/NdAnnotation;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantArray;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array v1, p0, [Ljava/lang/Object;

    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p0, v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->unpackValue(Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;->getType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantEnum;->getValue()[C

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;-><init>([C[C)V

    return-object v1

    :cond_4
    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantClass;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantClass;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstantClass;->getValue()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;-><init>([C)V

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/NdConstant;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p1
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->toAnnotationArray(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_3
    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_2
    return-object v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    :cond_5
    :goto_3
    throw v0
.end method

.method public getEnclosingMethod()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->enclosingMethod:[C

    return-object v0
.end method

.method public getEnclosingTypeName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->enclosingType:[C

    return-object v0
.end method

.method public getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NOT_EEA_CONFIGURED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    return-object v0
.end method

.method public getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lt v4, v5, :cond_3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    return-object v3

    :cond_3
    :try_start_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryField(Lorg/eclipse/jdt/internal/core/nd/java/NdVariable;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_5
    return-object v0

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    move-object v0, v1

    :cond_8
    :goto_4
    throw v0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->fileName:[C

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getFlag(B)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;-><init>()V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeParameter;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;Ljava/util/List;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSuperclass()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;->getContents()[C

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    return-object v2

    :cond_4
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->getInterface()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getSignature(Lorg/eclipse/jdt/internal/core/util/CharArrayBuffer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    :try_start_6
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_6
    return-object v0

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_7
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    move-object v0, v1

    :cond_9
    :goto_5
    throw v0
.end method

.method public getInterfaceNames()[[C
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[C

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lt v4, v5, :cond_3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    return-object v3

    :cond_3
    :try_start_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeInterface;->getInterface()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_5
    return-object v0

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    move-object v0, v1

    :cond_8
    :goto_4
    throw v0
.end method

.method public getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeId()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getDeclaredTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getResourceFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getResourceFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v2, v7}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->compare(Lorg/eclipse/jdt/internal/core/nd/db/IString;Z)I

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryNestedType(Lorg/eclipse/jdt/internal/core/nd/java/NdType;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    :try_start_6
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_7
    return-object v0

    :goto_3
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    move-object v0, v1

    :cond_a
    :goto_5
    throw v0
.end method

.method public getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getMethodsInDeclarationOrder()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v3, :cond_3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    return-object v4

    :cond_3
    :try_start_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryMethod(Lorg/eclipse/jdt/internal/core/nd/java/NdMethod;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_5
    return-object v0

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    move-object v0, v1

    :cond_8
    :goto_4
    throw v0
.end method

.method public getMissingTypeNames()[[[C
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getMissingTypeNames()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->length()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [[[C

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lt v4, v5, :cond_3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    return-object v3

    :cond_3
    :try_start_5
    aget-object v5, v2, v4

    const/16 v6, 0x2f

    invoke-static {v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_5
    return-object v0

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    move-object v0, v1

    :cond_8
    :goto_4
    throw v0
.end method

.method public getModifiers()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->modifiers:I

    return v0
.end method

.method public getModule()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->binaryTypeName:[C

    return-object v0
.end method

.method public getSourceName()[C
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSourceName()[C

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :try_start_3
    new-array v2, v2, [C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_2
    return-object v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    :cond_5
    :goto_3
    throw v0
.end method

.method public getSuperclassName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->superclassName:[C

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->tagBits:J

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTypeAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->createBinaryTypeAnnotations(Ljava/util/List;)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_2
    return-object v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    :cond_5
    :goto_3
    throw v0
.end method

.method public initSimpleAttributes()V
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->simpleAttributesInitialized:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->simpleAttributesInitialized:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getDeclaringMethod()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->enclosingMethod:[C

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getDeclaringType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->enclosingType:[C

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getDeclaringType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->enclosingType:[C

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdBinding;->getModifiers()I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->modifiers:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->isAnonymous()Z

    move-result v3

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->isAnonymous:Z

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->isLocal()Z

    move-result v3

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->isLocal:Z

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->isMember()Z

    move-result v3

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->isMember:Z

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getTagBits()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->tagBits:J

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSuperclass()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeSignature;->getRawType()Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/java/NdTypeId;->getBinaryName()[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->superclassName:[C

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->superclassName:[C

    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getFieldDescriptor()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->fieldDescriptorToBinaryName([C)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->binaryTypeName:[C

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->getFieldDescriptor()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->fieldDescriptorToBinaryName([C)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->binaryTypeName:[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_7

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_4
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_5
    throw v0

    :cond_7
    :goto_6
    return-void
.end method

.method public isAnonymous()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->isAnonymous:Z

    return v0
.end method

.method public isBinaryType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLocal()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->isLocal:Z

    return v0
.end method

.method public isMember()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->isMember:Z

    return v0
.end method

.method public sourceFileName()[C
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->lock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->typeRef:Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getSourceFileName()Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object v2

    array-length v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_2
    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_4
    return-object v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_5
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    move-object v0, v1

    :cond_7
    :goto_3
    throw v0
.end method
