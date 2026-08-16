.class public Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
.implements Ljava/lang/Comparable;


# static fields
.field private static final ARG:[C

.field private static final noArgumentNames:[[C

.field private static final noException:[[C


# instance fields
.field protected accessFlags:I

.field protected volatile argumentNames:[[C

.field protected attributeBytes:I

.field protected descriptor:[C

.field protected volatile exceptionNames:[[C

.field protected name:[C

.field protected signature:[C

.field protected signatureUtf8Offset:I

.field protected tagBits:J

.field protected version:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->noException:[[C

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->noArgumentNames:[[C

    const-string v0, "arg"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->ARG:[C

    return-void
.end method

.method public constructor <init>([B[IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;-><init>([B[II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->accessFlags:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signatureUtf8Offset:I

    iput-wide p4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->version:J

    return-void
.end method

.method public static createMethod([B[IIJ)Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;
    .locals 11

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;-><init>([B[IIJ)V

    const/4 p0, 0x6

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p0

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    move p4, p3

    :goto_0
    if-lt p4, p0, :cond_3

    iput p1, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->attributeBytes:I

    if-eqz v0, :cond_0

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;

    invoke-direct {p0, v6, v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;)V

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;

    invoke-direct {p0, v6, v2, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V

    return-object p0

    :cond_1
    if-eqz v2, :cond_2

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;

    invoke-direct {p0, v6, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V

    return-object p0

    :cond_2
    return-object v6

    :cond_3
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    aget v3, v3, v4

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v3

    invoke-virtual {v6, v4, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_16

    aget-char v4, v3, p3

    const/16 v7, 0x4d

    if-eq v4, v7, :cond_15

    const/16 v7, 0x52

    if-eq v4, v7, :cond_5

    const/16 v5, 0x53

    if-eq v4, v5, :cond_4

    goto/16 :goto_9

    :cond_4
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SignatureName:[C

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v4, p1, 0x6

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    aget v3, v3, v4

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v3, v4

    iput v3, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signatureUtf8Offset:I

    goto/16 :goto_9

    :cond_5
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeMethodAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v3

    :goto_1
    move-object v4, p2

    :goto_2
    move-object v5, v4

    goto :goto_5

    :cond_6
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p1, p3, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeMethodAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v3

    goto :goto_1

    :cond_7
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleParameterAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeParamAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v3

    :goto_3
    move-object v5, p2

    move-object v4, v3

    move-object v3, v5

    goto :goto_5

    :cond_8
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleParameterAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1, p3, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeParamAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v3

    goto :goto_3

    :cond_9
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleTypeAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeTypeAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    move-result-object v3

    :goto_4
    move-object v4, p2

    move-object v5, v3

    move-object v3, v4

    goto :goto_5

    :cond_a
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleTypeAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {p1, p3, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeTypeAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    move-result-object v3

    goto :goto_4

    :cond_b
    move-object v3, p2

    move-object v4, v3

    goto :goto_2

    :goto_5
    if-eqz v3, :cond_d

    if-nez v2, :cond_c

    move-object v2, v3

    goto/16 :goto_9

    :cond_c
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v5, v4

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-static {v2, p3, v5, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    invoke-static {v3, p3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    goto :goto_9

    :cond_d
    if-eqz v4, :cond_13

    array-length v3, v4

    if-nez v1, :cond_e

    move-object v1, v4

    goto :goto_9

    :cond_e
    move v5, p3

    :goto_6
    if-lt v5, v3, :cond_f

    goto :goto_9

    :cond_f
    aget-object v7, v4, v5

    if-nez v7, :cond_10

    move v8, p3

    goto :goto_7

    :cond_10
    array-length v8, v7

    :goto_7
    if-lez v8, :cond_12

    aget-object v9, v1, v5

    if-nez v9, :cond_11

    aput-object v7, v1, v5

    goto :goto_8

    :cond_11
    array-length v7, v9

    add-int v10, v7, v8

    new-array v10, v10, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-static {v9, p3, v10, p3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v9, v4, v5

    invoke-static {v9, p3, v10, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v10, v1, v5

    :cond_12
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_13
    if-eqz v5, :cond_16

    if-nez v0, :cond_14

    move-object v0, v5

    goto :goto_9

    :cond_14
    array-length v3, v0

    array-length v4, v5

    add-int/2addr v4, v3

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    invoke-static {v0, p3, v4, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v5

    invoke-static {v5, p3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    goto :goto_9

    :cond_15
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->MethodParametersName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {v6, p1, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeMethodParameters(ILorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)V

    :cond_16
    :goto_9
    int-to-long v3, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v7

    const-wide/16 v9, 0x6

    add-long/2addr v7, v9

    add-long/2addr v3, v7

    long-to-int p1, v3

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0
.end method

.method public static decodeAnnotations(IZILorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;
    .locals 9

    new-array v0, p2, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_0

    return-object v0

    :cond_0
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object v3, p3, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v4, p3, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int v5, p0, v2

    const/4 v7, 0x0

    move-object v2, v8

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;-><init>([B[IIZZ)V

    aput-object v8, v0, v1

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private decodeCodeAttribute(I)V
    .locals 9

    add-int/lit8 p1, p1, 0xa

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v1, v0, 0x4

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x2

    :goto_2
    if-lt v2, v1, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LocalVariableTableName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeLocalVariableAttribute(II)V

    :cond_3
    int-to-long v3, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v5

    const-wide/16 v7, 0x6

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private decodeLocalVariableAttribute(II)V
    .locals 6

    add-int/lit8 p2, p1, 0x6

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x8

    new-array v0, p2, [[C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, p1, 0x4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aget v4, v5, v4

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    invoke-virtual {p0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->This:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    :cond_1
    add-int/lit8 p1, p1, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v3, p2, :cond_3

    new-array p1, v3, [[C

    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->argumentNames:[[C

    :cond_4
    return-void
.end method

.method public static decodeMethodAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;
    .locals 12

    add-int/lit8 v0, p0, 0x6

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    add-int/lit8 p0, p0, 0x8

    invoke-static {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeAnnotations(IZILorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object p0

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    move v2, p1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_3

    if-eq v3, v0, :cond_6

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    new-array p2, v3, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move v1, p1

    :goto_1
    if-lt p1, v0, :cond_1

    move-object p0, p2

    goto :goto_3

    :cond_1
    aget-object v2, p0, p1

    if-eqz v2, :cond_2

    add-int/lit8 v3, v1, 0x1

    aput-object v2, p2, v1

    move v1, v3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, p0, v2

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    iget-wide v6, p2, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->tagBits:J

    or-long/2addr v6, v4

    iput-wide v6, p2, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->tagBits:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    iget-wide v8, p2, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->version:J

    const-wide/32 v10, 0x350000

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    const-wide v8, 0x400000000000L

    and-long/2addr v4, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    :cond_4
    aput-object v1, p0, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-object p0

    :cond_7
    return-object v1
.end method

.method private decodeMethodParameters(ILorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)V
    .locals 4

    add-int/lit8 p2, p1, 0x6

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, 0x7

    new-array v0, p2, [[C

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p2, :cond_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->argumentNames:[[C

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aget v2, v3, v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->ARG:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static decodeParamAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;
    .locals 7

    add-int/lit8 v0, p0, 0x6

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    add-int/lit8 p0, p0, 0x7

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    add-int/lit8 p0, p0, 0x2

    if-lez v4, :cond_3

    if-nez v1, :cond_1

    new-array v1, v0, [[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    :cond_1
    move-object v5, v1

    invoke-static {p0, p1, v4, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeAnnotations(IZILorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v4

    aput-object v4, v5, v3

    move v1, v2

    :goto_1
    array-length v6, v4

    if-lt v1, v6, :cond_2

    move-object v1, v5

    goto :goto_2

    :cond_2
    aget-object v6, v4, v1

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/2addr p0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static decodeTypeAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;
    .locals 10

    add-int/lit8 v0, p0, 0x6

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 p0, p0, 0x8

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v9, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int v6, p0, v3

    const/4 v8, 0x0

    move-object v3, v9

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;-><init>([B[IIZZ)V

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/2addr p0, v3

    aput-object v9, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized readCodeAttribute()V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->CodeName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeCodeAttribute(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->argumentNames:[[C

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->noArgumentNames:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->argumentNames:[[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    int-to-long v3, v1

    add-int/lit8 v1, v1, 0x2

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v5

    const-wide/16 v7, 0x6

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->noArgumentNames:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->argumentNames:[[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized readExceptionAttributes()V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    if-lt v4, v0, :cond_1

    if-nez v3, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->noException:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->exceptionNames:[[C

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->exceptionNames:[[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    aget v5, v5, v6

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ExceptionsName:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v2, 0x6

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x8

    if-nez v3, :cond_2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->noException:[[C

    goto :goto_3

    :cond_2
    new-array v5, v3, [[C

    move v6, v1

    :goto_2
    if-lt v6, v3, :cond_3

    move-object v3, v5

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    aget v8, v7, v8

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    aget v7, v7, v8

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v7, v8

    add-int/lit8 v8, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    invoke-virtual {p0, v8, v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    int-to-long v5, v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v7

    const-wide/16 v9, 0x6

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    long-to-int v2, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized readModifierRelatedAttributes()V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    const/16 v3, 0x8

    move v4, v0

    :goto_0
    if-lt v4, v2, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->accessFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    aget v5, v5, v6

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v5, v6

    add-int/lit8 v6, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v5

    array-length v6, v5

    if-eqz v6, :cond_5

    aget-char v6, v5, v0

    const/16 v7, 0x41

    if-eq v6, v7, :cond_4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_3

    const/16 v7, 0x53

    if-eq v6, v7, :cond_2

    const/16 v7, 0x56

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->VarargsName:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit16 v1, v1, 0x80

    goto :goto_2

    :cond_2
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SyntheticName:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit16 v1, v1, 0x1000

    goto :goto_2

    :cond_3
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->DeprecatedName:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x100000

    :goto_1
    or-int/2addr v1, v5

    goto :goto_2

    :cond_4
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->AnnotationDefaultName:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x20000

    goto :goto_1

    :cond_5
    :goto_2
    int-to-long v5, v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v7

    const-wide/16 v9, 0x6

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    long-to-int v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getAnnotatedParametersCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getArgumentNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->argumentNames:[[C

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->readCodeAttribute()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->argumentNames:[[C

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExceptionTypeNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->exceptionNames:[[C

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->readExceptionAttributes()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->exceptionNames:[[C

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signatureUtf8Offset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signature:[C

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signature:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signature:[C

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethodDescriptor()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->descriptor:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->descriptor:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->descriptor:[C

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->accessFlags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->readModifierRelatedAttributes()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->accessFlags:I

    return v0
.end method

.method public getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelector()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->name:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->name:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->name:[C

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->tagBits:J

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getModifiers()I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getExceptionTypeNames()[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getGenericSignature()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getArgumentNames()[[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    return-void
.end method

.method public isClinit()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/JavaBinaryNames;->isClinit([C)Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/JavaBinaryNames;->isConstructor([C)Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->attributeBytes:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->toString(Ljava/lang/StringBuffer;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->toStringContent(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public toStringContent(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/BinaryTypeFormatter;->methodToStringContent(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)V

    return-void
.end method
