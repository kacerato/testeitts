.class public abstract Lorg/eclipse/jdt/internal/core/JarEntryResource;
.super Lorg/eclipse/core/runtime/PlatformObject;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJarEntryResource;


# instance fields
.field protected parent:Ljava/lang/Object;

.field protected simpleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/core/runtime/PlatformObject;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->simpleName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract clone(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/JarEntryResource;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JarEntryResource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/JarEntryResource;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->parent:Ljava/lang/Object;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/JarEntryResource;->parent:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->simpleName:Ljava/lang/String;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JarEntryResource;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->parent:Ljava/lang/Object;

    instance-of v1, v0, Lorg/eclipse/jdt/core/IPackageFragment;

    const-string v2, ""

    const/16 v3, 0x2f

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullPath()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Path;->makeAbsolute()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->parent:Ljava/lang/Object;

    instance-of v1, v0, Lorg/eclipse/jdt/core/IPackageFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object v0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->parent:Ljava/lang/Object;

    return-object v0
.end method

.method public getZipFile()Ljava/util/zip/ZipFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->parent:Ljava/lang/Object;

    instance-of v1, v0, Lorg/eclipse/jdt/core/IPackageFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getJar()Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getJar()Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/core/JarEntryDirectory;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->simpleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->parent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setParent(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->parent:Ljava/lang/Object;

    return-void
.end method
