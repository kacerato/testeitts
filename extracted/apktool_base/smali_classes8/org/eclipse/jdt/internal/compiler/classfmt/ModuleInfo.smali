.class public Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;
    }
.end annotation


# instance fields
.field protected annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

.field protected exports:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

.field protected exportsCount:I

.field protected flags:I

.field protected name:[C

.field protected opens:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

.field protected opensCount:I

.field provides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

.field protected providesCount:I

.field protected requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

.field protected requiresCount:I

.field private tagBits:J

.field uses:[[C

.field protected usesCount:I

.field protected version:[C


# direct methods
.method public constructor <init>([B[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;-><init>([B[II)V

    return-void
.end method

.method public static createModule([B[II)Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;-><init>([B[II)V

    add-int/lit8 p2, p2, 0x6

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->readModuleAttribute(I)V

    return-object v0
.end method

.method private readModuleAttribute(I)V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    aget v0, v1, v0

    add-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->name:[C

    const/16 v1, 0x2f

    const/16 v3, 0x2e

    invoke-static {v0, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->flags:I

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aget v0, v4, v0

    add-int/lit8 v4, v0, 0x3

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->version:[C

    :cond_0
    add-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requiresCount:I

    new-array v4, v0, [Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    add-int/lit8 p1, p1, 0x8

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v0, :cond_b

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    add-int/lit8 p1, p1, 0x2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->exportsCount:I

    new-array v0, v6, [Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->exports:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    move v0, v4

    :goto_1
    if-lt v0, v6, :cond_8

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    add-int/lit8 p1, p1, 0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->opensCount:I

    new-array v0, v5, [Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->opens:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    move v0, v4

    :goto_2
    if-lt v0, v5, :cond_5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    add-int/lit8 p1, p1, 0x2

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->usesCount:I

    new-array v0, v6, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->uses:[[C

    move v0, v4

    :goto_3
    if-lt v0, v6, :cond_4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    add-int/lit8 p1, p1, 0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->providesCount:I

    new-array v0, v5, [Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->provides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    move v0, v4

    :goto_4
    if-lt v0, v5, :cond_1

    return-void

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    aget v6, v6, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    aget v6, v7, v6

    add-int/lit8 v7, v6, 0x3

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    invoke-virtual {p0, v7, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v6

    invoke-static {v6, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;

    invoke-direct {v7, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->provides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    aput-object v7, v8, v0

    iput-object v6, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;->serviceName:[C

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    add-int/lit8 p1, p1, 0x4

    new-array v8, v6, [[C

    iput-object v8, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;->with:[[C

    if-lez v6, :cond_3

    new-array v8, v6, [[C

    iput-object v8, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;->with:[[C

    move v8, v4

    :goto_5
    if-lt v8, v6, :cond_2

    goto :goto_6

    :cond_2
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v10

    aget v9, v9, v10

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    aget v9, v10, v9

    add-int/lit8 v10, v9, 0x3

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    invoke-virtual {p0, v10, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v9

    invoke-static {v9, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ServiceInfo;->with:[[C

    aput-object v9, v10, v8

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    aget v5, v5, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    aget v5, v7, v5

    add-int/lit8 v7, v5, 0x3

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    invoke-virtual {p0, v7, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v5

    invoke-static {v5, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->uses:[[C

    aput-object v5, v7, v0

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    aget v6, v6, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    aget v6, v7, v6

    add-int/lit8 v7, v6, 0x3

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    invoke-virtual {p0, v7, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v6

    invoke-static {v6, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    invoke-direct {v7, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->opens:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    aput-object v7, v8, v0

    iput-object v6, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->packageName:[C

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    iput v6, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->modifiers:I

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    add-int/lit8 p1, p1, 0x6

    if-lez v6, :cond_7

    new-array v8, v6, [[C

    iput-object v8, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedTo:[[C

    iput v6, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedToCount:I

    move v8, v4

    :goto_7
    if-lt v8, v6, :cond_6

    goto :goto_8

    :cond_6
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v10

    aget v9, v9, v10

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    aget v9, v10, v9

    add-int/lit8 v10, v9, 0x3

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    invoke-virtual {p0, v10, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v9

    invoke-static {v9, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedTo:[[C

    aput-object v9, v10, v8

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    aget v5, v5, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    aget v5, v7, v5

    add-int/lit8 v7, v5, 0x3

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    invoke-virtual {p0, v7, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v5

    invoke-static {v5, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    invoke-direct {v7, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->exports:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    aput-object v7, v8, v0

    iput-object v5, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->packageName:[C

    add-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    iput v5, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->modifiers:I

    add-int/lit8 v5, p1, 0x4

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v5

    add-int/lit8 p1, p1, 0x6

    if-lez v5, :cond_a

    new-array v8, v5, [[C

    iput-object v8, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedTo:[[C

    iput v5, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedToCount:I

    move v8, v4

    :goto_9
    if-lt v8, v5, :cond_9

    goto :goto_a

    :cond_9
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v10

    aget v9, v9, v10

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    aget v9, v10, v9

    add-int/lit8 v10, v9, 0x3

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    invoke-virtual {p0, v10, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v9

    invoke-static {v9, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->exportedTo:[[C

    aput-object v9, v10, v8

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    aget v6, v6, v7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    aget v6, v7, v6

    add-int/lit8 v7, v6, 0x3

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    invoke-virtual {p0, v7, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    invoke-direct {v8, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;)V

    aput-object v8, v7, v5

    invoke-static {v6, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    aget-object v7, v7, v5

    iput-object v6, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->refName:[C

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    aget-object v7, v7, v5

    iput v6, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->modifiers:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_c

    move v6, v2

    goto :goto_b

    :cond_c
    move v6, v4

    :goto_b
    iput-boolean v6, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->isTransitive:Z

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    if-lez v6, :cond_d

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aget v6, v7, v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    aget-object v7, v7, v5

    add-int/lit8 v8, v6, 0x3

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    invoke-virtual {p0, v8, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v6

    iput-object v6, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->required_version:[C

    :cond_d
    add-int/lit8 p1, p1, 0x6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IModule;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->name:[C

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exports()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->exports:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    return-object v0
.end method

.method public exportsCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->exportsCount:I

    return v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->tagBits:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->name:[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isOpen()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public name()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->name:[C

    return-object v0
.end method

.method public opens()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IPackageExport;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->opens:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    return-object v0
.end method

.method public provides()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->provides:[Lorg/eclipse/jdt/internal/compiler/env/IModule$IService;

    return-object v0
.end method

.method public providesCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->providesCount:I

    return v0
.end method

.method public requires()[Lorg/eclipse/jdt/internal/compiler/env/IModule$IModuleReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    return-object v0
.end method

.method public requiresCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requiresCount:I

    return v0
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;JZ)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->tagBits:J

    if-eqz p4, :cond_1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-lt p3, p2, :cond_0

    goto :goto_1

    :cond_0
    aget-object p4, p1, p3

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->initialize()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->name:[C

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->toStringContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringContent(Ljava/lang/StringBuffer;)V
    .locals 4

    const-string v0, "\nmodule "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->name:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requiresCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requiresCount:I

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "\trequires "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->isTransitive:Z

    if-eqz v3, :cond_1

    const-string v3, " public "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->requires:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$ModuleReferenceInfo;->refName:[C

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->exportsCount:I

    if-lez v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->exportsCount:I

    if-lt v2, v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "\texports "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->exports:[Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo$PackageExportInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public uses()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->uses:[[C

    return-object v0
.end method

.method public usesCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->usesCount:I

    return v0
.end method
