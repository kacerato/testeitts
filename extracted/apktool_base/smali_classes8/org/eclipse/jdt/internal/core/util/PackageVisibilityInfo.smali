.class public Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;


# instance fields
.field private flags:I

.field private index:I

.field private packageName:[C

.field private targetModuleIndices:[I

.field private targetModuleNames:[[C

.field private targetsCount:I


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

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->index:I

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v2

    const/16 v3, 0x14

    const/4 v4, 0x3

    if-ne v2, v3, :cond_5

    check-cast v1, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;->getPackageName()[C

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->packageName:[C

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->flags:I

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetsCount:I

    if-eqz v2, :cond_4

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleIndices:[I

    new-array v2, v2, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleNames:[[C

    const/4 v2, 0x6

    :goto_1
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetsCount:I

    if-lt v0, v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleIndices:[I

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    aput v5, v3, v0

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleIndices:[I

    aget v3, v3, v0

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_3

    check-cast v3, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;->getModuleName()[C

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleNames:[[C

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_2
    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_4
    new-array p1, v0, [I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleIndices:[I

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleNames:[[C

    :goto_3
    return-void

    :cond_5
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->flags:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->index:I

    return v0
.end method

.method public getPackageName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->packageName:[C

    return-object v0
.end method

.method public getTargetModuleIndices()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleIndices:[I

    return-object v0
.end method

.method public getTargetModuleNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetModuleNames:[[C

    return-object v0
.end method

.method public getTargetsCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;->targetsCount:I

    return v0
.end method
