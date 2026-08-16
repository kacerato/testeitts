.class public Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IExceptionTableEntry;


# instance fields
.field private catchType:[C

.field private catchTypeIndex:I

.field private endPC:I

.field private handlerPC:I

.field private startPC:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->startPC:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->endPC:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->handlerPC:I

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->catchTypeIndex:I

    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    const/4 p3, 0x7

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->catchType:[C

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCatchType()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->catchType:[C

    return-object v0
.end method

.method public getCatchTypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->catchTypeIndex:I

    return v0
.end method

.method public getEndPC()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->endPC:I

    return v0
.end method

.method public getHandlerPC()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->handlerPC:I

    return v0
.end method

.method public getStartPC()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionTableEntry;->startPC:I

    return v0
.end method
