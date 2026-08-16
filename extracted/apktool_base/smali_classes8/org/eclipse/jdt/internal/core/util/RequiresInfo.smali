.class public Lorg/eclipse/jdt/internal/core/util/RequiresInfo;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IRequiresInfo;


# instance fields
.field private flags:I

.field private index:I

.field private moduleName:[C

.field private versionIndex:I

.field private versionName:[C


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->index:I

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v1

    const/16 v2, 0x13

    const/4 v3, 0x3

    if-ne v1, v2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;->getModuleName()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->moduleName:[C

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->flags:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->versionIndex:I

    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->versionName:[C

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->versionName:[C

    :goto_0
    return-void

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v3}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getRequiresFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->flags:I

    return v0
.end method

.method public getRequiresIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->index:I

    return v0
.end method

.method public getRequiresModuleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->moduleName:[C

    return-object v0
.end method

.method public getRequiresVersionIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->versionIndex:I

    return v0
.end method

.method public getRequiresVersionValue()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;->versionName:[C

    return-object v0
.end method
