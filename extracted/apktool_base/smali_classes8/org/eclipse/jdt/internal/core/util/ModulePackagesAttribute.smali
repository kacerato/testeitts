.class public Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IModulePackagesAttribute;


# instance fields
.field private packageIndices:[I

.field private packageNames:[[C

.field private packagesCount:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packagesCount:I

    if-eqz v0, :cond_3

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packageIndices:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v0, v2, v4

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packageNames:[[C

    const/16 v2, 0x8

    :goto_0
    if-lt v4, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packageIndices:[I

    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    aput v5, v3, v4

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packageIndices:[I

    aget v3, v3, v4

    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_2

    check-cast v3, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;->getPackageName()[C

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packageNames:[[C

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_1
    aput-object v3, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packageNames:[[C

    :goto_2
    return-void
.end method


# virtual methods
.method public getPackageIndices()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packageIndices:[I

    return-object v0
.end method

.method public getPackageNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packageNames:[[C

    return-object v0
.end method

.method public getPackagesCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;->packagesCount:I

    return v0
.end method
