.class public Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/ILocalVariableTypeTableEntry;


# instance fields
.field private index:I

.field private length:I

.field private name:[C

.field private nameIndex:I

.field private signature:[C

.field private signatureIndex:I

.field private startPC:I


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

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->startPC:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->length:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->nameIndex:I

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->signatureIndex:I

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->index:I

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->nameIndex:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->name:[C

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->signatureIndex:I

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    if-ne p2, v1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->signature:[C

    return-void

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->index:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->length:I

    return v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->name:[C

    return-object v0
.end method

.method public getNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->nameIndex:I

    return v0
.end method

.method public getSignature()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->signature:[C

    return-object v0
.end method

.method public getSignatureIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->signatureIndex:I

    return v0
.end method

.method public getStartPC()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LocalVariableTypeTableEntry;->startPC:I

    return v0
.end method
