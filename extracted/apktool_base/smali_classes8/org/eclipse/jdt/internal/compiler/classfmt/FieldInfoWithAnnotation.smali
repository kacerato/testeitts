.class public Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;
.source "SourceFile"


# instance fields
.field private annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V
    .locals 6

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->version:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;-><init>([B[IIJ)V

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->accessFlags:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->attributeBytes:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->attributeBytes:I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->descriptor:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->descriptor:[C

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->name:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->name:[C

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signature:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signature:[C

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signatureUtf8Offset:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->signatureUtf8Offset:I

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->tagBits:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->tagBits:J

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->wrappedConstantValue:Ljava/lang/Object;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->initialize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->initialize()V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    array-length v4, v3

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->toStringContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
