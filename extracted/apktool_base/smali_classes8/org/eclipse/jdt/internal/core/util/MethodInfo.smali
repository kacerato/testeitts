.class public Lorg/eclipse/jdt/internal/core/util/MethodInfo;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IMethodInfo;


# instance fields
.field private accessFlags:I

.field private attributeBytes:I

.field private attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

.field private attributesCount:I

.field private codeAttribute:Lorg/eclipse/jdt/core/util/ICodeAttribute;

.field private descriptor:[C

.field private descriptorIndex:I

.field private exceptionAttribute:Lorg/eclipse/jdt/core/util/IExceptionAttribute;

.field private isDeprecated:Z

.field private isSynthetic:Z

.field private name:[C

.field private nameIndex:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    and-int/lit8 p4, p4, 0x20

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->accessFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->isSynthetic:Z

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->nameIndex:I

    invoke-interface {p2, v2}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v1, :cond_15

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->name:[C

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->descriptorIndex:I

    invoke-interface {p2, v2}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v1, :cond_14

    invoke-interface {v2}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->descriptor:[C

    const/4 v2, 0x6

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributesCount:I

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->NO_ATTRIBUTES:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    if-eqz v2, :cond_3

    if-eqz p4, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->isNative()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributesCount:I

    if-eq v2, v1, :cond_3

    sub-int/2addr v2, v1

    new-array v2, v2, [Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributesCount:I

    new-array v2, v2, [Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    :cond_3
    :goto_1
    const/16 v2, 0x8

    move v3, v2

    move v2, v0

    :goto_2
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributesCount:I

    if-lt v0, v5, :cond_4

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributeBytes:I

    return-void

    :cond_4
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v6

    if-ne v6, v1, :cond_13

    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->DEPRECATED:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_5

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->isDeprecated:Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    :goto_3
    move v2, v6

    goto/16 :goto_5

    :cond_5
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SYNTHETIC:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->isSynthetic:Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto :goto_3

    :cond_6
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->CODE:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez p4, :cond_12

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;

    add-int v6, p3, v3

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/CodeAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->codeAttribute:Lorg/eclipse/jdt/core/util/ICodeAttribute;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v7, v2, 0x1

    aput-object v5, v6, v2

    :goto_4
    move v2, v7

    goto/16 :goto_5

    :cond_7
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->EXCEPTIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;

    add-int v6, p3, v3

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->exceptionAttribute:Lorg/eclipse/jdt/core/util/IExceptionAttribute;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v7, v2, 0x1

    aput-object v5, v6, v2

    goto :goto_4

    :cond_8
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SIGNATURE:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/SignatureAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/SignatureAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto :goto_3

    :cond_9
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto :goto_3

    :cond_a
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto/16 :goto_3

    :cond_b
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleParameterAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto/16 :goto_3

    :cond_c
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleParameterAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleParameterAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto/16 :goto_3

    :cond_d
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->ANNOTATION_DEFAULT:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/AnnotationDefaultAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/AnnotationDefaultAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto/16 :goto_3

    :cond_e
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto/16 :goto_3

    :cond_f
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleTypeAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleTypeAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto/16 :goto_3

    :cond_10
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->METHOD_PARAMETERS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/MethodParametersAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto/16 :goto_3

    :cond_11
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v2

    goto/16 :goto_3

    :cond_12
    :goto_5
    int-to-long v5, v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v7

    const-wide/16 v9, 0x6

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    long-to-int v3, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_13
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_14
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_15
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method

.method private isAbstract()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->accessFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNative()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->accessFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->accessFlags:I

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributesCount:I

    return v0
.end method

.method public getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    return-object v0
.end method

.method public getCodeAttribute()Lorg/eclipse/jdt/core/util/ICodeAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->codeAttribute:Lorg/eclipse/jdt/core/util/ICodeAttribute;

    return-object v0
.end method

.method public getDescriptor()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->descriptor:[C

    return-object v0
.end method

.method public getDescriptorIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->descriptorIndex:I

    return v0
.end method

.method public getExceptionAttribute()Lorg/eclipse/jdt/core/util/IExceptionAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->exceptionAttribute:Lorg/eclipse/jdt/core/util/IExceptionAttribute;

    return-object v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->name:[C

    return-object v0
.end method

.method public getNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->nameIndex:I

    return v0
.end method

.method public isClinit()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->name:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    array-length v0, v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isConstructor()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->name:[C

    const/4 v1, 0x0

    aget-char v2, v0, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    array-length v0, v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isDeprecated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->isDeprecated:Z

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->isSynthetic:Z

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->attributeBytes:I

    return v0
.end method
