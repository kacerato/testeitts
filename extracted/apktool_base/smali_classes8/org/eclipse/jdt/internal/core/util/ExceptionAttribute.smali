.class public Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IExceptionAttribute;


# instance fields
.field private exceptionIndexes:[I

.field private exceptionNames:[[C

.field private exceptionsNumber:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionsNumber:I

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionNames:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionIndexes:[I

    if-eqz v0, :cond_0

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionNames:[[C

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionIndexes:[I

    :cond_0
    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionIndexes:[I

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionIndexes:[I

    aget v3, v3, v2

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionNames:[[C

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getExceptionIndexes()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionIndexes:[I

    return-object v0
.end method

.method public getExceptionNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionNames:[[C

    return-object v0
.end method

.method public getExceptionsNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ExceptionAttribute;->exceptionsNumber:I

    return v0
.end method
