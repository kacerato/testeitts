.class public Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;


# static fields
.field static EmptyValueArray:[Ljava/lang/Object;


# instance fields
.field public exceptionDuringDecode:Ljava/lang/RuntimeException;

.field private volatile pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

.field readOffset:I

.field standardAnnotationTagBits:J

.field private typename:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->EmptyValueArray:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;-><init>([B[II)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    return-void
.end method

.method public constructor <init>([B[IIZZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;-><init>([B[II)V

    if-eqz p5, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->decodeAnnotation()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p4, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->scanAnnotation(IZZ)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    :goto_0
    return-void
.end method

.method private decodeAnnotation()V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    aget v1, v1, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->typename:[C

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    if-nez v2, :cond_0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->NoMembers:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    goto :goto_0

    :cond_0
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    :goto_0
    if-lt v0, v2, :cond_1

    :try_start_0
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

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

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->decodeDefaultValue()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v0, 0x1

    :try_start_1
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    invoke-direct {v7, v4, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;-><init>([CLjava/lang/Object;)V

    aput-object v7, v3, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v1

    move v0, v6

    :goto_1
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->sanitizePairs([Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " while decoding pair #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of annotation @"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->typename:[C

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v0, ", bytes at structOffset "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    :goto_2
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/2addr v3, v4

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readRetentionPolicy(I)I
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/16 v2, 0x46

    if-eq v0, v2, :cond_4

    const/16 v2, 0x53

    if-eq v0, v2, :cond_4

    const/16 v2, 0x63

    if-eq v0, v2, :cond_4

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    const/16 v2, 0x73

    if-eq v0, v2, :cond_4

    const/16 v2, 0x49

    if-eq v0, v2, :cond_4

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_4

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_4

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->scanElementValue(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

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

    add-int/lit8 v1, p1, 0x3

    array-length v2, v0

    const/16 v3, 0x26

    if-ne v2, v3, :cond_3

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_ANNOTATION_RETENTIONPOLICY:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

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

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getRetentionPolicy([C)J

    move-result-wide v3

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    :cond_3
    add-int/lit8 p1, p1, 0x5

    goto :goto_1

    :cond_4
    :pswitch_0
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, v3, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->scanAnnotation(IZZ)I

    move-result p1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readTargetValue(I)I
    .locals 5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/16 v2, 0x46

    if-eq v0, v2, :cond_5

    const/16 v2, 0x53

    if-eq v0, v2, :cond_5

    const/16 v2, 0x63

    if-eq v0, v2, :cond_5

    const/16 v2, 0x65

    if-eq v0, v2, :cond_3

    const/16 v2, 0x73

    if-eq v0, v2, :cond_5

    const/16 v2, 0x49

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_5

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_5

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide v2, 0x800000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    goto :goto_1

    :cond_1
    :goto_0
    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readTargetValue(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

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

    add-int/lit8 v1, p1, 0x3

    array-length v2, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_4

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

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

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getTargetElementType([C)J

    move-result-wide v3

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    :cond_4
    add-int/lit8 p1, p1, 0x5

    goto :goto_1

    :cond_5
    :pswitch_0
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1, v3, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->scanAnnotation(IZZ)I

    move-result p1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sanitizePairs([Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;)V
    .locals 5

    if-eqz p1, :cond_3

    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    array-length p1, p1

    if-ge v2, p1, :cond_0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    goto :goto_1

    :cond_1
    aget-object v3, p1, v1

    if-eqz v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2

    move v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->NoMembers:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    :goto_1
    return-void
.end method

.method private scanAnnotation(IZZ)I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

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

    if-eqz p3, :cond_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->typename:[C

    :cond_0
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    add-int/lit8 v2, p1, 0x4

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    array-length p2, v0

    const/16 p3, 0x16

    if-eq p2, p3, :cond_7

    const/16 p3, 0x17

    if-eq p2, p3, :cond_6

    const/16 p3, 0x1d

    if-eq p2, p3, :cond_5

    const/16 p3, 0x34

    if-eq p2, p3, :cond_4

    const/16 p3, 0x20

    if-eq p2, p3, :cond_2

    const/16 p1, 0x21

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_ANNOTATION_DOCUMENTED:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide v0, 0x800000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    return v2

    :cond_2
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_ANNOTATION_RETENTION:[C

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x6

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readRetentionPolicy(I)I

    move-result p1

    return p1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_ANNOTATION_INHERITED:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide/high16 v0, 0x1000000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    return v2

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide/high16 v0, 0x10000000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    return v2

    :cond_5
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_ANNOTATION_TARGET:[C

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_8

    add-int/lit8 p1, p1, 0x6

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readTargetValue(I)I

    move-result p1

    return p1

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_SAFEVARARGS:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide/high16 v0, 0x8000000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    return v2

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_DEPRECATED:[C

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide v3, 0x400000000000L

    or-long/2addr p1, v3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    :cond_8
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-lt p1, v1, :cond_9

    return v2

    :cond_9
    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->scanElementValue(I)I

    move-result v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private scanElementValue(I)I
    .locals 6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/16 v2, 0x46

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53

    if-eq v0, v2, :cond_3

    const/16 v2, 0x63

    if-eq v0, v2, :cond_3

    const/16 v2, 0x65

    if-eq v0, v2, :cond_4

    const/16 v2, 0x73

    if-eq v0, v2, :cond_3

    const/16 v2, 0x49

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->scanElementValue(I)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide v4, 0x400000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    :cond_3
    :pswitch_0
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x5

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, v3, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->scanAnnotation(IZZ)I

    move-result p1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decodeDefaultValue()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    const/16 v3, 0x40

    if-eq v0, v3, :cond_d

    const/16 v3, 0x46

    if-eq v0, v3, :cond_c

    const/16 v3, 0x53

    if-eq v0, v3, :cond_b

    const/16 v3, 0x63

    if-eq v0, v3, :cond_a

    const/16 v3, 0x65

    if-eq v0, v3, :cond_9

    const/16 v3, 0x73

    if-eq v0, v3, :cond_8

    const/16 v3, 0x49

    if-eq v0, v3, :cond_7

    const/16 v3, 0x4a

    if-eq v0, v3, :cond_6

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eq v0, v3, :cond_4

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    if-nez v0, :cond_0

    const-string v0, "0x00"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->doubleAt(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->fromValue(D)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/CharConstant;->fromValue(C)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/ByteConstant;->fromValue(B)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    if-nez v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->EmptyValueArray:[Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2
    new-array v3, v0, [Ljava/lang/Object;

    :goto_1
    if-lt v4, v0, :cond_3

    move-object v0, v3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->decodeDefaultValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i8At(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->fromValue(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v1, v3, v1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x3

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;-><init>([C[C)V

    move-object v0, v2

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;-><init>([C)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    move-object v0, v1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->i4At(I)I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/ShortConstant;->fromValue(S)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->floatAt(I)F

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->fromValue(F)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    goto :goto_3

    :cond_d
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    add-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;-><init>([B[IIZZ)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->typename:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->typename:[C

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->lazyInitialize()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    return-object v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->typename:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->typename:[C

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->decodeAnnotation()V

    :cond_0
    return-void
.end method

.method public isDeprecatedAnnotation()Z
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide v2, 0x4000400000000000L    # 2.03125

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized lazyInitialize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->pairs:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->decodeAnnotation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/BinaryTypeFormatter;->annotationToString(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
