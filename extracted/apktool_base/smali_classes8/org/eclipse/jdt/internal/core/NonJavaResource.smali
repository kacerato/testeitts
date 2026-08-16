.class public Lorg/eclipse/jdt/internal/core/NonJavaResource;
.super Lorg/eclipse/core/runtime/PlatformObject;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJarEntryResource;


# static fields
.field private static final NO_CHILDREN:[Lorg/eclipse/jdt/core/IJarEntryResource;


# instance fields
.field protected parent:Ljava/lang/Object;

.field protected resource:Lorg/eclipse/core/resources/IResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJarEntryResource;

    sput-object v0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->NO_CHILDREN:[Lorg/eclipse/jdt/core/IJarEntryResource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/eclipse/core/resources/IResource;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/core/runtime/PlatformObject;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->parent:Ljava/lang/Object;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/NonJavaResource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/NonJavaResource;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->parent:Ljava/lang/Object;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/NonJavaResource;->parent:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJarEntryResource;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    instance-of v1, v0, Lorg/eclipse/core/resources/IContainer;

    if-eqz v1, :cond_2

    :try_start_0
    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->NO_CHILDREN:[Lorg/eclipse/jdt/core/IJarEntryResource;

    return-object v0

    :cond_0
    new-array v2, v1, [Lorg/eclipse/jdt/core/IJarEntryResource;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    return-object v2

    :cond_1
    new-instance v4, Lorg/eclipse/jdt/internal/core/NonJavaResource;

    aget-object v5, v0, v3

    invoke-direct {v4, p0, v5}, Lorg/eclipse/jdt/internal/core/NonJavaResource;-><init>(Ljava/lang/Object;Lorg/eclipse/core/resources/IResource;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not retrieve children of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->NO_CHILDREN:[Lorg/eclipse/jdt/core/IJarEntryResource;

    return-object v0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->NO_CHILDREN:[Lorg/eclipse/jdt/core/IJarEntryResource;

    return-object v0
.end method

.method public getContents()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    instance-of v1, v0, Lorg/eclipse/core/resources/IFile;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/core/resources/IFile;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getContents()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->parent:Ljava/lang/Object;

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

    check-cast v0, Lorg/eclipse/jdt/internal/core/NonJavaResource;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/NonJavaResource;->getEntryName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NonJavaResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullPath()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NonJavaResource;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Path;->makeAbsolute()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->parent:Ljava/lang/Object;

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
    check-cast v0, Lorg/eclipse/jdt/internal/core/NonJavaResource;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/NonJavaResource;->getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->parent:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->parent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NonJavaResource;->resource:Lorg/eclipse/core/resources/IResource;

    instance-of v0, v0, Lorg/eclipse/core/resources/IFile;

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NonJavaResource["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NonJavaResource;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
