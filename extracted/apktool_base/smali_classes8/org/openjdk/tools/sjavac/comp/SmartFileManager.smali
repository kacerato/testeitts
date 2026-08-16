.class public Lorg/openjdk/tools/sjavac/comp/SmartFileManager;
.super Lorg/openjdk/javax/tools/ForwardingJavaFileManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/tools/ForwardingJavaFileManager<",
        "Lorg/openjdk/javax/tools/JavaFileManager;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/openjdk/tools/javac/api/ClientCodeWrapper$Trusted;
.end annotation


# instance fields
.field packageArtifacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation
.end field

.field visibleSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;-><init>(Lorg/openjdk/javax/tools/JavaFileManager;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->visibleSources:Ljava/util/Set;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->packageArtifacts:Ljava/util/Map;

    return-void
.end method

.method private isModuleInfo(Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 3

    instance-of v0, p1, Lorg/openjdk/javax/tools/JavaFileObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    const-string v2, "module-info"

    invoke-interface {p1, v2, v0}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {p1, v2, v0}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static locUnwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/openjdk/tools/sjavac/comp/FileObjectWithLocation;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/openjdk/tools/sjavac/comp/FileObjectWithLocation;

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/comp/FileObjectWithLocation;->getDelegate()Lorg/openjdk/javax/tools/FileObject;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->getDelegate()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static locUnwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    .line 5
    instance-of v0, p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->getDelegate()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static locWrap(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/FileObject;
    .locals 1

    .line 3
    instance-of v0, p0, Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrap(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lorg/openjdk/tools/sjavac/comp/FileObjectWithLocation;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/sjavac/comp/FileObjectWithLocation;-><init>(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static locWrap(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    .line 1
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;-><init>(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static locWrapMany(Ljava/lang/Iterable;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {v1, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrap(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static packageNameFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addArtifact(Ljava/lang/String;Ljava/net/URI;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->packageArtifacts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->packageArtifacts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanArtifacts()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->packageArtifacts:Ljava/util/Map;

    return-void
.end method

.method public getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrap(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->visibleSources:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->visibleSources:Ljava/util/Set;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->isModuleInfo(Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p4

    invoke-static {p4, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrap(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->NATIVE_HEADER_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, ":"

    if-eqz p1, :cond_1

    instance-of p1, p4, Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;-><init>(Lorg/openjdk/javax/tools/JavaFileObject;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->packageNameFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    :cond_1
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->addArtifact(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method public getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrap(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->visibleSources:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->visibleSources:Ljava/util/Set;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->isModuleInfo(Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p3

    invoke-static {p3, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrap(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    const/4 p4, -0x1

    const-string v0, ""

    if-eq p3, p4, :cond_1

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->addArtifact(Ljava/lang/String;Ljava/net/URI;)V

    return-object p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locUnwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    return-object p1
.end method

.method public getPackageArtifacts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->packageArtifacts:Ljava/util/Map;

    return-object v0
.end method

.method public inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locUnwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 0

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locUnwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locUnwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p1

    return p1
.end method

.method public list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;Z)",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object p2

    iget-object p3, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->visibleSources:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrapMany(Ljava/lang/Iterable;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {p4}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->visibleSources:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    invoke-virtual {p3, p4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {p3, p1}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrapMany(Ljava/lang/Iterable;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public setSymbolFileEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v1, v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setSymbolFileEnabled(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setVisibleSources(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->visibleSources:Ljava/util/Set;

    return-void
.end method
