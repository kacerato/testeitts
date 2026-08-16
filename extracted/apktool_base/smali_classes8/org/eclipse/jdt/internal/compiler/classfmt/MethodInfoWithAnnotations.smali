.class public Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;
.source "SourceFile"


# instance fields
.field protected annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V
    .locals 6

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->version:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;-><init>([B[IIJ)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

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


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->initialize()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->initialize()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
