.class public Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IEnclosingMethodAttribute;


# instance fields
.field private enclosingClassIndex:I

.field private enclosingClassName:[C

.field private methodDescriptor:[C

.field private methodDescriptorIndex:I

.field private methodName:[C

.field private methodNameAndTypeIndex:I

.field private methodNameIndex:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->enclosingClassIndex:I

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x3

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->enclosingClassName:[C

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodNameAndTypeIndex:I

    if-eqz p1, :cond_3

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p3

    const/16 v0, 0xc

    if-ne p3, v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeInfoDescriptorIndex()I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodDescriptorIndex:I

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getNameAndTypeInfoNameIndex()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodNameIndex:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodDescriptorIndex:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodDescriptor:[C

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodNameIndex:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodName:[C

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getEnclosingClass()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->enclosingClassName:[C

    return-object v0
.end method

.method public getEnclosingClassIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->enclosingClassIndex:I

    return v0
.end method

.method public getMethodDescriptor()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodDescriptor:[C

    return-object v0
.end method

.method public getMethodDescriptorIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodDescriptorIndex:I

    return v0
.end method

.method public getMethodName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodName:[C

    return-object v0
.end method

.method public getMethodNameAndTypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodNameAndTypeIndex:I

    return v0
.end method

.method public getMethodNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;->methodNameIndex:I

    return v0
.end method
