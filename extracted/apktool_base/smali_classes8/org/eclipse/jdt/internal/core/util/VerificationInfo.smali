.class public Lorg/eclipse/jdt/internal/core/util/VerificationInfo;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IVerificationTypeInfo;


# instance fields
.field private classTypeName:[C

.field private constantPoolIndex:I

.field private offset:I

.field private readOffset:I

.field private tag:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->tag:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->readOffset:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 p2, 0x8

    if-eq v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->offset:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->readOffset:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->constantPoolIndex:I

    if-eqz p1, :cond_3

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    if-ne p2, v2, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->classTypeName:[C

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_3
    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->readOffset:I

    :goto_1
    return-void
.end method


# virtual methods
.method public getClassTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->classTypeName:[C

    return-object v0
.end method

.method public getConstantPoolIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->constantPoolIndex:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->offset:I

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->tag:I

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/VerificationInfo;->readOffset:I

    return v0
.end method
