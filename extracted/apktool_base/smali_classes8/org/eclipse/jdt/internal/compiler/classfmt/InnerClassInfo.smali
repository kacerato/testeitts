.class public Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;


# instance fields
.field private accessFlags:I

.field private innerClassName:[C

.field innerClassNameIndex:I

.field private innerName:[C

.field innerNameIndex:I

.field private outerClassName:[C

.field outerClassNameIndex:I

.field private readInnerClassName:Z

.field private readInnerName:Z

.field private readOuterClassName:Z


# direct methods
.method public constructor <init>([B[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;-><init>([B[II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerClassNameIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->outerClassNameIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerNameIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->accessFlags:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerClassNameIndex:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->outerClassNameIndex:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerNameIndex:I

    return-void
.end method


# virtual methods
.method public getEnclosingTypeName()[C
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->readOuterClassName:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->outerClassNameIndex:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aget v0, v2, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    aget v0, v2, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->outerClassName:[C

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->readOuterClassName:Z

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->outerClassName:[C

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->accessFlags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->accessFlags:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->accessFlags:I

    return v0
.end method

.method public getName()[C
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->readInnerClassName:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerClassNameIndex:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aget v0, v2, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    aget v0, v2, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerClassName:[C

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->readInnerClassName:Z

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerClassName:[C

    return-object v0
.end method

.method public getSourceName()[C
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->readInnerName:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerNameIndex:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aget v0, v2, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerName:[C

    :cond_0
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->readInnerName:Z

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerName:[C

    return-object v0
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getModifiers()I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getName()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getSourceName()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getEnclosingTypeName()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getName()[C

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getEnclosingTypeName()[C

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getEnclosingTypeName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getSourceName()[C

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getSourceName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
