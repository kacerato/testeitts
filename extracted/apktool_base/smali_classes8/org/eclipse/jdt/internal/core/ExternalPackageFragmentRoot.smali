.class public Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;
.super Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;
.source "SourceFile"


# instance fields
.field protected final externalPath:Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    if-nez p2, :cond_0

    .line 4
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;->externalPath:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;-><init>(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;->externalPath:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method


# virtual methods
.method public determineKind(Lorg/eclipse/core/resources/IResource;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;->externalPath:Lorg/eclipse/core/runtime/IPath;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;->externalPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;->externalPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;->externalPath:Lorg/eclipse/core/runtime/IPath;

    return-object v0
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;->externalPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public internalKind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method public isExternal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource:Lorg/eclipse/core/resources/IResource;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalPackageFragmentRoot;->externalPath:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource:Lorg/eclipse/core/resources/IResource;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    return-object p1
.end method

.method public resourceExists(Lorg/eclipse/core/resources/IResource;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public toStringAncestors(Ljava/lang/StringBuffer;)V
    .locals 0

    return-void
.end method
