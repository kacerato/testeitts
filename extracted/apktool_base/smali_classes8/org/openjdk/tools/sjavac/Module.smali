.class public Lorg/openjdk/tools/sjavac/Module;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/openjdk/tools/sjavac/Module;",
        ">;"
    }
.end annotation


# instance fields
.field private artifacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private dirname:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Package;",
            ">;"
        }
    .end annotation
.end field

.field private sources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/Module;->packages:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/Module;->sources:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/Module;->artifacts:Ljava/util/Map;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Module;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/Module;->dirname:Ljava/lang/String;

    return-void
.end method

.method public static load(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Module;
    .locals 3

    const/16 v0, 0x3a

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/openjdk/tools/sjavac/Module;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/sjavac/Module;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static saveModules(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Module;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/sjavac/Module;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/sjavac/Module;->save(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addArtifacts(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Module;->lookupPackage(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/sjavac/Package;->addArtifact(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPackage(Lorg/openjdk/tools/sjavac/Package;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->packages:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSource(Ljava/lang/String;Lorg/openjdk/tools/sjavac/Source;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Module;->lookupPackage(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/sjavac/Source;->setPackage(Lorg/openjdk/tools/sjavac/Package;)V

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/sjavac/Package;->addSource(Lorg/openjdk/tools/sjavac/Source;)V

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/Module;->sources:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/Source;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public artifacts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->artifacts:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/sjavac/Module;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Module;->compareTo(Lorg/openjdk/tools/sjavac/Module;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/openjdk/tools/sjavac/Module;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/Module;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dirname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->dirname:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/sjavac/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->name:Ljava/lang/String;

    check-cast p1, Lorg/openjdk/tools/sjavac/Module;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/Module;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasPubapiChanged(Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Module;->lookupPackage(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/sjavac/Package;->hasPubApiChanged(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public lookupPackage(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->packages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/sjavac/Package;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/sjavac/Package;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/sjavac/Package;-><init>(Lorg/openjdk/tools/sjavac/Module;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/Module;->packages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public lookupSource(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Source;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->sources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/sjavac/Source;

    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public packages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Package;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->packages:Ljava/util/Map;

    return-object v0
.end method

.method public save(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "M "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->packages:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/Package;->savePackages(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public setDependencies(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Module;->lookupPackage(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/sjavac/Package;->setDependencies(Ljava/util/Map;Z)V

    return-void
.end method

.method public setPubapi(Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/Module;->lookupPackage(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/sjavac/Package;->setPubapi(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    return-void
.end method

.method public sources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/Module;->sources:Ljava/util/Map;

    return-object v0
.end method
