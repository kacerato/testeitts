.class public Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfo;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;
.source "SourceFile"


# instance fields
.field protected defaultValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->version:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;-><init>([B[IIJ)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfo;->defaultValue:Ljava/lang/Object;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->accessFlags:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->accessFlags:I

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->attributeBytes:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->attributeBytes:I

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->descriptor:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->descriptor:[C

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->exceptionNames:[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->exceptionNames:[[C

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->name:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->name:[C

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signature:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signature:[C

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signatureUtf8Offset:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signatureUtf8Offset:I

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->tagBits:J

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->tagBits:J

    return-void
.end method

.method public static createAnnotationMethod([B[IIJ)Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;
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
    if-lt p4, p0, :cond_5

    iput p1, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->attributeBytes:I

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithTypeAnnotations;

    invoke-direct {p0, v6, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithTypeAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Ljava/lang/Object;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;)V

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;

    invoke-direct {p0, v6, v0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Ljava/lang/Object;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfo;

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;

    invoke-direct {p0, v6, v2, p2, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;)V

    return-object p0

    :cond_3
    if-eqz v2, :cond_4

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;

    invoke-direct {p0, v6, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V

    return-object p0

    :cond_4
    return-object v6

    :cond_5
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

    if-lez v4, :cond_10

    aget-char v4, v3, p3

    const/16 v7, 0x41

    if-eq v4, v7, :cond_f

    const/16 v7, 0x52

    if-eq v4, v7, :cond_7

    const/16 v5, 0x53

    if-eq v4, v5, :cond_6

    goto/16 :goto_4

    :cond_6
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SignatureName:[C

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v4, p1, 0x6

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    aget v3, v3, v4

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v3, v4

    iput v3, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->signatureUtf8Offset:I

    goto/16 :goto_4

    :cond_7
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeMethodAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v3

    :goto_1
    move-object v4, p2

    goto :goto_3

    :cond_8
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1, p3, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeMethodAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    move-result-object v3

    goto :goto_1

    :cond_9
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleTypeAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeTypeAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    move-result-object v3

    :goto_2
    move-object v4, v3

    move-object v3, p2

    goto :goto_3

    :cond_a
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleTypeAnnotationsName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {p1, p3, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->decodeTypeAnnotations(IZLorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    move-result-object v3

    goto :goto_2

    :cond_b
    move-object v3, p2

    move-object v4, v3

    :goto_3
    if-eqz v3, :cond_d

    if-nez v2, :cond_c

    move-object v2, v3

    goto :goto_4

    :cond_c
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v5, v4

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-static {v2, p3, v5, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    invoke-static {v3, p3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    goto :goto_4

    :cond_d
    if-eqz v4, :cond_10

    if-nez v1, :cond_e

    move-object v1, v4

    goto :goto_4

    :cond_e
    array-length v3, v1

    array-length v5, v4

    add-int/2addr v5, v3

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    invoke-static {v1, p3, v5, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v4

    invoke-static {v4, p3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    goto :goto_4

    :cond_f
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->AnnotationDefaultName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v5, p1, 0x6

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int/2addr v5, v7

    invoke-direct {v0, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;-><init>([B[II)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->decodeDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :cond_10
    :goto_4
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


# virtual methods
.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfo;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method
