.class public Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IInnerClassesAttributeEntry;


# instance fields
.field private accessFlags:I

.field private innerClassName:[C

.field private innerClassNameIndex:I

.field private innerName:[C

.field private innerNameIndex:I

.field private outerClassName:[C

.field private outerClassNameIndex:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerClassNameIndex:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->outerClassNameIndex:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerNameIndex:I

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->accessFlags:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerClassNameIndex:I

    const/4 p3, 0x7

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v1

    if-ne v1, p3, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerClassName:[C

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->outerClassNameIndex:I

    if-eqz p1, :cond_3

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v1

    if-ne v1, p3, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->outerClassName:[C

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerNameIndex:I

    if-eqz p1, :cond_5

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerName:[C

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->accessFlags:I

    return v0
.end method

.method public getInnerClassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerClassName:[C

    return-object v0
.end method

.method public getInnerClassNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerClassNameIndex:I

    return v0
.end method

.method public getInnerName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerName:[C

    return-object v0
.end method

.method public getInnerNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->innerNameIndex:I

    return v0
.end method

.method public getOuterClassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->outerClassName:[C

    return-object v0
.end method

.method public getOuterClassNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttributeEntry;->outerClassNameIndex:I

    return v0
.end method
