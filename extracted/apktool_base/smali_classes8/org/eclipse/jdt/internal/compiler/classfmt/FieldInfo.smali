.class public Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;
.implements Ljava/lang/Comparable;


# instance fields
.field protected accessFlags:I

.field protected attributeBytes:I

.field protected constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

.field protected descriptor:[C

.field protected name:[C

.field protected signature:[C

.field protected signatureUtf8Offset:I

.field protected tagBits:J

.field protected version:J

.field protected wrappedConstantValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>([B[IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;-><init>([B[II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signatureUtf8Offset:I

    iput-wide p4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->version:J

    return-void
.end method

.method public static createField([B[IIJ)Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;
    .locals 9

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;-><init>([B[IIJ)V

    const/4 p0, 0x6

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p0

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object v0, p2

    move-object v1, v0

    move p4, p3

    :goto_0
    if-lt p4, p0, :cond_2

    iput p1, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->attributeBytes:I

    if-eqz v0, :cond_0

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;

    invoke-direct {p0, v6, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;)V

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;

    invoke-direct {p0, v6, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V

    return-object p0

    :cond_1
    return-object v6

    :cond_2
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v3

    aget v2, v2, v3

    iget v3, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    invoke-virtual {v6, v3, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_c

    aget-char v3, v2, p3

    const/16 v5, 0x52

    if-eq v3, v5, :cond_4

    const/16 v4, 0x53

    if-eq v3, v4, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SignatureName:[C

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v3, p1, 0x6

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v3

    aget v2, v2, v3

    iget v3, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v2, v3

    iput v2, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signatureUtf8Offset:I

    goto/16 :goto_4

    :cond_4
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleAnnotationsName:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {v6, p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->decodeAnnotations(IZ)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v2

    :goto_1
    move-object v3, p2

    goto :goto_3

    :cond_5
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleAnnotationsName:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {v6, p1, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->decodeAnnotations(IZ)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v2

    goto :goto_1

    :cond_6
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleTypeAnnotationsName:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v6, p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->decodeTypeAnnotations(IZ)[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    move-result-object v2

    :goto_2
    move-object v3, v2

    move-object v2, p2

    goto :goto_3

    :cond_7
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleTypeAnnotationsName:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v6, p1, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->decodeTypeAnnotations(IZ)[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object v2, p2

    move-object v3, v2

    :goto_3
    if-eqz v2, :cond_a

    if-nez v1, :cond_9

    move-object v1, v2

    goto :goto_4

    :cond_9
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v4, v3

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-static {v1, p3, v4, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    invoke-static {v2, p3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    move-object v0, v3

    goto :goto_4

    :cond_b
    array-length v2, v0

    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    invoke-static {v0, p3, v4, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    invoke-static {v3, p3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_c
    :goto_4
    int-to-long v2, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v4

    const-wide/16 v7, 0x6

    add-long/2addr v4, v7

    add-long/2addr v2, v4

    long-to-int p1, v2

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0
.end method

.method private decodeAnnotations(IZ)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;
    .locals 17

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x6

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_5

    add-int/lit8 v3, p1, 0x8

    const/4 v4, 0x0

    move-object v6, v2

    move v5, v4

    move v7, v5

    :goto_0
    if-lt v5, v1, :cond_1

    if-eqz v6, :cond_5

    array-length v1, v6

    if-eq v7, v1, :cond_0

    new-array v1, v7, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-static {v6, v4, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v1

    :cond_0
    return-object v6

    :cond_1
    new-instance v14, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int v11, v3, v8

    const/4 v13, 0x0

    move-object v8, v14

    move/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;-><init>([B[IIZZ)V

    iget v8, v14, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/2addr v3, v8

    iget-wide v8, v14, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->tagBits:J

    or-long/2addr v12, v8

    iput-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->tagBits:J

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->version:J

    const-wide/32 v15, 0x350000

    cmp-long v12, v12, v15

    if-ltz v12, :cond_4

    const-wide v12, 0x400000000000L

    and-long/2addr v8, v12

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    sub-int v6, v1, v5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    :cond_3
    add-int/lit8 v8, v7, 0x1

    aput-object v14, v6, v7

    move v7, v8

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method private readConstantAttribute()V
    .locals 13

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :goto_0
    if-lt v4, v1, :cond_1

    if-nez v6, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    aget v7, v7, v8

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v7, v8

    add-int/lit8 v8, v7, 0x3

    const/4 v9, 0x1

    add-int/2addr v7, v9

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    invoke-virtual {p0, v8, v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v7

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ConstantValueName:[C

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v7, v5, 0x6

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    aget v6, v6, v7

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    if-eq v7, v0, :cond_3

    if-eq v7, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    aget v6, v7, v6

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x3

    add-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    invoke-virtual {p0, v7, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->doubleAt(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i8At(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->floatAt(I)F

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTypeName()[C

    move-result-object v7

    array-length v8, v7

    if-ne v8, v9, :cond_d

    aget-char v7, v7, v3

    const/16 v8, 0x42

    if-eq v7, v8, :cond_c

    const/16 v8, 0x43

    if-eq v7, v8, :cond_b

    const/16 v8, 0x49

    if-eq v7, v8, :cond_a

    const/16 v8, 0x53

    if-eq v7, v8, :cond_9

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_7

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v6

    if-ne v6, v9, :cond_8

    move v6, v9

    goto :goto_1

    :cond_8
    move v6, v3

    :goto_1
    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_2

    :cond_9
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v6

    int-to-short v6, v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_2

    :cond_a
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_2

    :cond_b
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_2

    :cond_c
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_2

    :cond_d
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :goto_2
    move v6, v9

    :cond_e
    int-to-long v7, v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v9

    const-wide/16 v11, 0x6

    add-long/2addr v9, v11

    add-long/2addr v7, v9

    long-to-int v5, v7

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private readModifierRelatedAttributes()V
    .locals 10

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    aget v4, v4, v5

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    invoke-virtual {p0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v4

    array-length v5, v4

    if-eqz v5, :cond_3

    aget-char v5, v4, v2

    const/16 v6, 0x44

    if-eq v5, v6, :cond_2

    const/16 v6, 0x53

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SyntheticName:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    goto :goto_1

    :cond_2
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->DeprecatedName:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    const/high16 v5, 0x100000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    :cond_3
    :goto_1
    int-to-long v4, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v6

    const-wide/16 v8, 0x6

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Ljava/lang/String;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public decodeTypeAnnotations(IZ)[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;
    .locals 10

    add-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 p1, p1, 0x8

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v9, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int v6, p1, v3

    const/4 v8, 0x0

    move-object v3, v9

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;-><init>([B[IIZZ)V

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/2addr p1, v3

    aput-object v9, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    return p1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->readConstantAttribute()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signatureUtf8Offset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signature:[C

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signature:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signature:[C

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->readModifierRelatedAttributes()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    return v0
.end method

.method public getName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->name:[C

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

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->name:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->name:[C

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->tagBits:J

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->descriptor:[C

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

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->descriptor:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->descriptor:[C

    return-object v0
.end method

.method public getWrappedConstantValue()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->hasConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    goto :goto_0

    :pswitch_9
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasConstant()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getModifiers()I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTypeName()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getGenericSignature()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    return-void
.end method

.method public isSynthetic()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getModifiers()I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->attributeBytes:I

    return v0
.end method

.method public throwFormatException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(I)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->toStringContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringContent(Ljava/lang/StringBuffer;)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getModifiers()I

    move-result v0

    const/16 v1, 0x7b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v2, 0x100000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const-string v2, "deprecated "

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "public "

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v2, "private "

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v2, "protected "

    goto :goto_3

    :cond_3
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const-string v2, "static "

    goto :goto_4

    :cond_4
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    const-string v2, "final "

    goto :goto_5

    :cond_5
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    const-string v2, "volatile "

    goto :goto_6

    :cond_6
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    const-string v0, "transient "

    goto :goto_7

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTypeName()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
