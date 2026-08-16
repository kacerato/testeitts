.class public Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IModuleAttribute;


# static fields
.field static final NO_PACKAGE_VISIBILITY_INFOS:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

.field static final NO_PROVIDES_INFOS:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

.field static final NO_REQUIRES:[Lorg/eclipse/jdt/core/util/IRequiresInfo;

.field static final NO_USES:[I


# instance fields
.field private exportsCount:I

.field private exportsInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

.field private moduleFlags:I

.field private moduleName:[C

.field private moduleNameIndex:I

.field private moduleVersionIndex:I

.field private moduleVersionValue:[C

.field private opensCount:I

.field private opensInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

.field private providesCount:I

.field private providesInfo:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

.field private requiresCount:I

.field private requiresInfo:[Lorg/eclipse/jdt/core/util/IRequiresInfo;

.field private usesCount:I

.field private usesIndices:[I

.field private usesNames:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/IRequiresInfo;

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_REQUIRES:[Lorg/eclipse/jdt/core/util/IRequiresInfo;

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_PACKAGE_VISIBILITY_INFOS:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    new-array v1, v0, [I

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_USES:[I

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IProvidesInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_PROVIDES_INFOS:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleNameIndex:I

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v2

    const/16 v3, 0x13

    const/4 v4, 0x3

    if-ne v2, v3, :cond_d

    check-cast v1, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;->getModuleName()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleName:[C

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleFlags:I

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleVersionIndex:I

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleVersionValue:[C

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleVersionValue:[C

    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->requiresCount:I

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-eqz v1, :cond_3

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/util/RequiresInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->requiresInfo:[Lorg/eclipse/jdt/core/util/IRequiresInfo;

    move v1, v2

    :goto_1
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->requiresCount:I

    if-lt v1, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->requiresInfo:[Lorg/eclipse/jdt/core/util/IRequiresInfo;

    new-instance v6, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;

    add-int v7, p3, v3

    invoke-direct {v6, p1, p2, v7}, Lorg/eclipse/jdt/internal/core/util/RequiresInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v6, v5, v1

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_REQUIRES:[Lorg/eclipse/jdt/core/util/IRequiresInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->requiresInfo:[Lorg/eclipse/jdt/core/util/IRequiresInfo;

    :goto_2
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->exportsCount:I

    add-int/lit8 v3, v3, 0x2

    if-eqz v1, :cond_5

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->exportsInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    move v1, v2

    :goto_3
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->exportsCount:I

    if-lt v1, v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->exportsInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    new-instance v6, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;

    add-int v7, p3, v3

    invoke-direct {v6, p1, p2, v7}, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v6, v5, v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->exportsInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;->getTargetsCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    sget-object v1, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_PACKAGE_VISIBILITY_INFOS:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->exportsInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    :goto_4
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->opensCount:I

    add-int/lit8 v3, v3, 0x2

    if-eqz v1, :cond_7

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->opensInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    move v1, v2

    :goto_5
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->opensCount:I

    if-lt v1, v5, :cond_6

    goto :goto_6

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->opensInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    new-instance v6, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;

    add-int v7, p3, v3

    invoke-direct {v6, p1, p2, v7}, Lorg/eclipse/jdt/internal/core/util/PackageVisibilityInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v6, v5, v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->opensInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;->getTargetsCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_PACKAGE_VISIBILITY_INFOS:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->opensInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    :goto_6
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesCount:I

    add-int/lit8 v3, v3, 0x2

    if-eqz v0, :cond_a

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesIndices:[I

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesNames:[[C

    move v0, v2

    :goto_7
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesCount:I

    if-lt v0, v1, :cond_8

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesIndices:[I

    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    aput v5, v1, v0

    add-int/lit8 v3, v3, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesIndices:[I

    aget v1, v1, v0

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesNames:[[C

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getClassInfoName()[C

    move-result-object v1

    aput-object v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_a
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_USES:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesIndices:[I

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesNames:[[C

    :goto_8
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->providesCount:I

    add-int/lit8 v3, v3, 0x2

    if-eqz v0, :cond_c

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->providesInfo:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

    :goto_9
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->providesCount:I

    if-lt v2, v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->providesInfo:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;

    add-int v4, p3, v3

    invoke-direct {v1, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/util/ProvidesInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->providesInfo:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IProvidesInfo;->getImplementationsCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->NO_PROVIDES_INFOS:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->providesInfo:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

    :goto_a
    return-void

    :cond_d
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getExportsCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->exportsCount:I

    return v0
.end method

.method public getExportsInfo()[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->exportsInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    return-object v0
.end method

.method public getModuleFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleFlags:I

    return v0
.end method

.method public getModuleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleName:[C

    return-object v0
.end method

.method public getModuleNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleNameIndex:I

    return v0
.end method

.method public getModuleVersionIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleVersionIndex:I

    return v0
.end method

.method public getModuleVersionValue()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->moduleVersionValue:[C

    return-object v0
.end method

.method public getOpensCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->opensCount:I

    return v0
.end method

.method public getOpensInfo()[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->opensInfo:[Lorg/eclipse/jdt/core/util/IPackageVisibilityInfo;

    return-object v0
.end method

.method public getProvidesCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->providesCount:I

    return v0
.end method

.method public getProvidesInfo()[Lorg/eclipse/jdt/core/util/IProvidesInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->providesInfo:[Lorg/eclipse/jdt/core/util/IProvidesInfo;

    return-object v0
.end method

.method public getRequiresCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->requiresCount:I

    return v0
.end method

.method public getRequiresInfo()[Lorg/eclipse/jdt/core/util/IRequiresInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->requiresInfo:[Lorg/eclipse/jdt/core/util/IRequiresInfo;

    return-object v0
.end method

.method public getUsesClassNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesNames:[[C

    return-object v0
.end method

.method public getUsesCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesCount:I

    return v0
.end method

.method public getUsesIndices()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;->usesIndices:[I

    return-object v0
.end method
