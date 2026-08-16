.class public Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IProvidesInfo;


# instance fields
.field private implementationIndices:[I

.field private implementationNames:[[C

.field private implementationsCount:I

.field private index:I

.field private serviceName:[C


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->index:I

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x7

    if-ne v2, v4, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->serviceName:[C

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationsCount:I

    if-eqz v2, :cond_2

    new-array v5, v2, [I

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationIndices:[I

    new-array v2, v2, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationNames:[[C

    const/4 v2, 0x4

    :goto_0
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationsCount:I

    if-lt v0, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationIndices:[I

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v6

    aput v6, v5, v0

    add-int/2addr v2, v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationIndices:[I

    aget v5, v5, v0

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v6

    if-ne v6, v4, :cond_1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationNames:[[C

    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object v5

    aput-object v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getImplementationIndices()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationIndices:[I

    return-object v0
.end method

.method public getImplementationNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationNames:[[C

    return-object v0
.end method

.method public getImplementationsCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->implementationsCount:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->index:I

    return v0
.end method

.method public getServiceName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;->serviceName:[C

    return-object v0
.end method
