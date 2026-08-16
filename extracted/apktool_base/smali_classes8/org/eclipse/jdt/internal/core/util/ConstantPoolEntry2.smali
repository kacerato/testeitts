.class public Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;
.super Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IConstantPoolEntry3;


# instance fields
.field private bootstrapMethodAttributeIndex:I

.field private descriptorIndex:I

.field private moduleIndex:I

.field private moduleName:[C

.field private packageIndex:I

.field private packageName:[C

.field private referenceIndex:I

.field private referenceKind:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootstrapMethodAttributeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->bootstrapMethodAttributeIndex:I

    return v0
.end method

.method public getDescriptorIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->descriptorIndex:I

    return v0
.end method

.method public getModuleIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->moduleIndex:I

    return v0
.end method

.method public getModuleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->moduleName:[C

    return-object v0
.end method

.method public getPackageIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->packageIndex:I

    return v0
.end method

.method public getPackageName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->packageName:[C

    return-object v0
.end method

.method public getReferenceIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->referenceIndex:I

    return v0
.end method

.method public getReferenceKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->referenceKind:I

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->descriptorIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->referenceKind:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->referenceIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->bootstrapMethodAttributeIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->moduleIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->moduleName:[C

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->packageIndex:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->packageName:[C

    return-void
.end method

.method public setBootstrapMethodAttributeIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->bootstrapMethodAttributeIndex:I

    return-void
.end method

.method public setDescriptorIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->descriptorIndex:I

    return-void
.end method

.method public setModuleIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->moduleIndex:I

    return-void
.end method

.method public setModuleName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->moduleName:[C

    return-void
.end method

.method public setPackageIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->packageIndex:I

    return-void
.end method

.method public setPackageName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->packageName:[C

    return-void
.end method

.method public setReferenceIndex(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->referenceIndex:I

    return-void
.end method

.method public setReferenceKind(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->referenceKind:I

    return-void
.end method
