.class public Lorg/openjdk/tools/sjavac/JavacState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field addedSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;"
        }
    .end annotation
.end field

.field private binArtifacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private binDir:Ljava/io/File;

.field private compileJavaPackages:Lorg/openjdk/tools/sjavac/CompileJavaPackages;

.field private gensrcArtifacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private gensrcDir:Ljava/io/File;

.field private headerArtifacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private headerDir:Ljava/io/File;

.field private javacState:Ljava/io/File;

.field modifiedSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;"
        }
    .end annotation
.end field

.field private needsSaving:Z

.field private newJavacState:Z

.field private now:Lorg/openjdk/tools/sjavac/BuildState;

.field numCores:I

.field private options:Lorg/openjdk/tools/sjavac/options/Options;

.field private packagesWithChangedPublicApis:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prev:Lorg/openjdk/tools/sjavac/BuildState;

.field private recompiledPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field removedSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;"
        }
    .end annotation
.end field

.field private stateDir:Ljava/io/File;

.field private taintedModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taintedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field theArgs:Ljava/lang/String;

.field visibleSrcs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/options/Options;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->removedSources:Ljava/util/Set;

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->addedSources:Ljava/util/Set;

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->modifiedSources:Ljava/util/Set;

    new-instance v0, Lorg/openjdk/tools/sjavac/CompileJavaPackages;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/CompileJavaPackages;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->compileJavaPackages:Lorg/openjdk/tools/sjavac/CompileJavaPackages;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getNumCores()I

    move-result p1

    iput p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->numCores:I

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getStateArgsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->theArgs:Ljava/lang/String;

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getDestDir()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Util;->pathToFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->binDir:Ljava/io/File;

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getGenSrcDir()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Util;->pathToFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->gensrcDir:Ljava/io/File;

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getHeaderDir()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Util;->pathToFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->headerDir:Ljava/io/File;

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->getStateDir()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Util;->pathToFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->stateDir:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->stateDir:Ljava/io/File;

    const-string v1, "javac_state"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->javacState:Ljava/io/File;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->javacState:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->newJavacState:Z

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->javacState:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->newJavacState:Z

    iget-object p2, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/options/Options;->areUnidentifiedArtifactsPermitted()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/sjavac/JavacState;->binDir:Ljava/io/File;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/sjavac/JavacState;->deleteContents(Ljava/io/File;)V

    iget-object p2, p0, Lorg/openjdk/tools/sjavac/JavacState;->gensrcDir:Ljava/io/File;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/sjavac/JavacState;->deleteContents(Ljava/io/File;)V

    iget-object p2, p0, Lorg/openjdk/tools/sjavac/JavacState;->headerDir:Ljava/io/File;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/sjavac/JavacState;->deleteContents(Ljava/io/File;)V

    :cond_1
    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->needsSaving:Z

    :cond_2
    new-instance p1, Lorg/openjdk/tools/sjavac/BuildState;

    invoke-direct {p1}, Lorg/openjdk/tools/sjavac/BuildState;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    new-instance p1, Lorg/openjdk/tools/sjavac/BuildState;

    invoke-direct {p1}, Lorg/openjdk/tools/sjavac/BuildState;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->taintedPackages:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->recompiledPackages:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->packagesWithChangedPublicApis:Ljava/util/Set;

    return-void
.end method

.method private addFileToTransform(Ljava/util/Map;Lorg/openjdk/tools/sjavac/Transformer;Lorg/openjdk/tools/sjavac/Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/sjavac/Transformer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;>;>;",
            "Lorg/openjdk/tools/sjavac/Transformer;",
            "Lorg/openjdk/tools/sjavac/Source;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p3}, Lorg/openjdk/tools/sjavac/Source;->pkg()Lorg/openjdk/tools/sjavac/Package;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p3}, Lorg/openjdk/tools/sjavac/Source;->pkg()Lorg/openjdk/tools/sjavac/Package;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p3}, Lorg/openjdk/tools/sjavac/Source;->file()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private calculateAddedSources()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private calculateModifiedSources()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/sjavac/Source;

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v4}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/sjavac/Source;

    iget-object v5, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v5}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/Source;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4}, Lorg/openjdk/tools/sjavac/Source;->lastModified()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/Source;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4}, Lorg/openjdk/tools/sjavac/Source;->lastModified()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The source file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/Source;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timestamp has moved backwards in time."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private calculateRemovedSources()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lorg/openjdk/tools/sjavac/JavacState;->deleteContents(Ljava/io/File;)V

    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/sjavac/options/Options;->isUnidentifiedArtifactPermitted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fetchPrevArtifacts(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/sjavac/Package;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/Package;->artifacts()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private static findAllFiles(Ljava/io/File;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/openjdk/tools/sjavac/JavacState;->recurse(Ljava/io/File;Ljava/util/Set;)V

    return-object v0
.end method

.method public static load(Lorg/openjdk/tools/sjavac/options/Options;)Lorg/openjdk/tools/sjavac/JavacState;
    .locals 13

    new-instance v0, Lorg/openjdk/tools/sjavac/JavacState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/sjavac/JavacState;-><init>(Lorg/openjdk/tools/sjavac/options/Options;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading javac state file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/openjdk/tools/sjavac/JavacState;->javacState:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, v0, Lorg/openjdk/tools/sjavac/JavacState;->javacState:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v4, 0x0

    move v6, v1

    move v7, v6

    move-object v5, v4

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x4d

    if-ne v9, v10, :cond_2

    iget-object v4, v0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v4, v8}, Lorg/openjdk/tools/sjavac/BuildState;->loadModule(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Module;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v4

    goto/16 :goto_7

    :cond_2
    const/16 v10, 0x50

    if-ne v9, v10, :cond_5

    if-nez v4, :cond_4

    :cond_3
    :goto_1
    move v4, v2

    goto/16 :goto_5

    :cond_4
    iget-object v5, v0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v5, v4, v8}, Lorg/openjdk/tools/sjavac/BuildState;->loadPackage(Lorg/openjdk/tools/sjavac/Module;Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;

    move-result-object v5

    goto :goto_0

    :cond_5
    const/16 v10, 0x44

    const/16 v11, 0x53

    const/4 v12, 0x2

    if-ne v9, v10, :cond_a

    if-eqz v4, :cond_3

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x43

    if-eq v9, v11, :cond_8

    if-ne v9, v10, :cond_7

    goto :goto_2

    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad dependency string: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    :goto_2
    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    if-ne v9, v10, :cond_9

    move v9, v2

    goto :goto_3

    :cond_9
    move v9, v1

    :goto_3
    invoke-virtual {v5, v8, v9}, Lorg/openjdk/tools/sjavac/Package;->parseAndAddDependency(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_a
    const/16 v10, 0x49

    if-ne v9, v10, :cond_c

    if-eqz v4, :cond_3

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v5}, Lorg/openjdk/tools/sjavac/Package;->getPubApi()Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object v9

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->appendItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v10, 0x41

    if-ne v9, v10, :cond_e

    if-eqz v4, :cond_3

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {v5, v8}, Lorg/openjdk/tools/sjavac/Package;->loadArtifact(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-ne v9, v11, :cond_10

    if-eqz v4, :cond_3

    if-nez v5, :cond_f

    goto :goto_1

    :cond_f
    iget-object v9, v0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v9, v5, v8, v1}, Lorg/openjdk/tools/sjavac/BuildState;->loadSource(Lorg/openjdk/tools/sjavac/Package;Ljava/lang/String;Z)Lorg/openjdk/tools/sjavac/Source;

    goto/16 :goto_0

    :cond_10
    const/16 v10, 0x47

    if-ne v9, v10, :cond_12

    if-eqz v4, :cond_3

    if-nez v5, :cond_11

    goto/16 :goto_1

    :cond_11
    iget-object v9, v0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v9, v5, v8, v2}, Lorg/openjdk/tools/sjavac/BuildState;->loadSource(Lorg/openjdk/tools/sjavac/Package;Ljava/lang/String;Z)Lorg/openjdk/tools/sjavac/Source;

    goto/16 :goto_0

    :cond_12
    const/16 v10, 0x52

    if-ne v9, v10, :cond_13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "R "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/openjdk/tools/sjavac/JavacState;->theArgs:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move v7, v2

    goto/16 :goto_0

    :cond_13
    const/16 v10, 0x23

    if-ne v9, v10, :cond_0

    const-string v9, "# javac_state ver "

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, " "

    const/16 v10, 0x12

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0.4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_14

    :goto_4
    move v4, v1

    :goto_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_a

    :catch_0
    :goto_6
    move v1, v6

    goto :goto_9

    :cond_14
    move v6, v2

    goto/16 :goto_0

    :goto_7
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v5
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_1
    move v4, v1

    goto :goto_6

    :catch_2
    move v4, v1

    move v7, v4

    goto :goto_9

    :catch_3
    const-string v0, "Dropping old javac_state because of errors when reading it."

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->warn(Ljava/lang/String;)V

    new-instance v0, Lorg/openjdk/tools/sjavac/JavacState;

    invoke-direct {v0, p0, v2}, Lorg/openjdk/tools/sjavac/JavacState;-><init>(Lorg/openjdk/tools/sjavac/options/Options;Z)V

    move v4, v1

    move v7, v4

    move v6, v2

    goto :goto_a

    :goto_9
    move v6, v1

    move v1, v2

    :goto_a
    if-nez v6, :cond_15

    if-nez v1, :cond_15

    const-string v0, "Dropping old javac_state since it is of an old version."

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v0, Lorg/openjdk/tools/sjavac/JavacState;

    invoke-direct {v0, p0, v2}, Lorg/openjdk/tools/sjavac/JavacState;-><init>(Lorg/openjdk/tools/sjavac/options/Options;Z)V

    goto :goto_b

    :cond_15
    if-ne v7, v2, :cond_16

    if-nez v1, :cond_16

    const-string v0, "Dropping old javac_state since a new command line is used!"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v0, Lorg/openjdk/tools/sjavac/JavacState;

    invoke-direct {v0, p0, v2}, Lorg/openjdk/tools/sjavac/JavacState;-><init>(Lorg/openjdk/tools/sjavac/options/Options;Z)V

    goto :goto_b

    :cond_16
    if-ne v4, v2, :cond_17

    const-string v0, "Dropping old javac_state since it contains syntax errors."

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->warn(Ljava/lang/String;)V

    new-instance v0, Lorg/openjdk/tools/sjavac/JavacState;

    invoke-direct {v0, p0, v2}, Lorg/openjdk/tools/sjavac/JavacState;-><init>(Lorg/openjdk/tools/sjavac/options/Options;Z)V

    :cond_17
    :goto_b
    iget-object p0, v0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/BuildState;->calculateDependents()V

    return-object v0
.end method

.method private needsSaving()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->needsSaving:Z

    return-void
.end method

.method private perform(Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/io/File;Ljava/util/Map;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/sjavac/comp/CompilationService;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Transformer;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/sjavac/Source;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/Source;->suffix()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/sjavac/Transformer;

    if-eqz v4, :cond_0

    iget-object v6, v0, Lorg/openjdk/tools/sjavac/JavacState;->taintedPackages:Ljava/util/Set;

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/Source;->pkg()Lorg/openjdk/tools/sjavac/Package;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/Source;->isLinkedOnly()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {v0, v1, v4, v3}, Lorg/openjdk/tools/sjavac/JavacState;->addFileToTransform(Ljava/util/Map;Lorg/openjdk/tools/sjavac/Transformer;Lorg/openjdk/tools/sjavac/Source;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/openjdk/tools/sjavac/Transformer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v21

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v22

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v23

    iget-object v9, v0, Lorg/openjdk/tools/sjavac/JavacState;->visibleSrcs:Ljava/util/Set;

    iget-object v7, v0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v7}, Lorg/openjdk/tools/sjavac/BuildState;->dependents()Ljava/util/Map;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/sjavac/JavacState;->isIncremental()Z

    move-result v18

    iget v15, v0, Lorg/openjdk/tools/sjavac/JavacState;->numCores:I

    const/16 v17, 0x0

    move-object/from16 v7, p1

    move-object v8, v4

    move-object v12, v5

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move/from16 v19, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v23

    invoke-interface/range {v6 .. v19}, Lorg/openjdk/tools/sjavac/Transformer;->transform(Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/net/URI;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZI)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_3

    move v3, v7

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v0, Lorg/openjdk/tools/sjavac/JavacState;->recompiledPackages:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Lorg/openjdk/tools/sjavac/BuildState;->findModuleFromPackageName(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Module;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v6, v8, v5}, Lorg/openjdk/tools/sjavac/Module;->addArtifacts(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2

    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget-object v8, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/sjavac/BuildState;->findModuleFromPackageName(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Module;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5, v6, v7}, Lorg/openjdk/tools/sjavac/Module;->setDependencies(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_3

    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/sjavac/BuildState;->findModuleFromPackageName(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Module;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5, v6, v2}, Lorg/openjdk/tools/sjavac/Module;->setDependencies(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_4

    :cond_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object v7, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/sjavac/BuildState;->findModuleFromPackageName(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Module;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/sjavac/Module;->lookupPackage(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/sjavac/Package;->getPubApi()Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object v8

    invoke-static {v8, v5}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->mergeTypes(Lorg/openjdk/tools/sjavac/pubapi/PubApi;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/openjdk/tools/sjavac/Package;->setPubapi(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    iget-object v8, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v8}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v7, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v7}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/sjavac/Package;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/sjavac/Package;->setPubapi(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    goto :goto_5

    :cond_8
    iget-object v5, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v5}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object v7, v0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/sjavac/BuildState;->findModuleFromPackageName(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Module;

    move-result-object v7

    iget-object v8, v0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/sjavac/BuildState;->findModuleFromPackageName(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Module;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Lorg/openjdk/tools/sjavac/Module;->setPubapi(Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V

    invoke-virtual {v7, v6, v5}, Lorg/openjdk/tools/sjavac/Module;->hasPubapiChanged(Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/sjavac/Module;->lookupPackage(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Package;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/sjavac/Package;->existsInJavacState()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v0, Lorg/openjdk/tools/sjavac/JavacState;->packagesWithChangedPublicApis:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The API of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/openjdk/tools/sjavac/Util;->justPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has changed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    return v3
.end method

.method private static recurse(Ljava/io/File;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, p1}, Lorg/openjdk/tools/sjavac/JavacState;->recurse(Ljava/io/File;Ljava/util/Set;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static removeArgsNotAffectingState([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    aget-object v4, p0, v2

    const-string v5, "-j"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    aget-object v4, p0, v2

    const-string v5, "--server:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, p0, v2

    const-string v5, "--log="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v4, p0, v2

    const-string v5, "--compare-found-sources"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    aget-object v4, p0, v2

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-array p0, v3, [Ljava/lang/String;

    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public checkSourceStatus(Z)V
    .locals 5

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/JavacState;->calculateRemovedSources()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->removedSources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "source "

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/Source;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->isGenerated()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->pkg()Lorg/openjdk/tools/sjavac/Package;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was removed"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/JavacState;->calculateAddedSources()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->addedSources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/Source;

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/JavacState;->isIncremental()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was added"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->isGenerated()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_3

    :cond_5
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->pkg()Lorg/openjdk/tools/sjavac/Package;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/JavacState;->calculateModifiedSources()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->modifiedSources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/Source;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->isGenerated()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    :cond_8
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->pkg()Lorg/openjdk/tools/sjavac/Package;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was modified"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method public clearTaintedPackages()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->taintedPackages:Ljava/util/Set;

    return-void
.end method

.method public compareWithMakefileList(Ljava/io/File;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/sjavac/ProblemException;
        }
    .end annotation

    const-string v0, ":"

    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v6, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v6}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/sjavac/Source;

    invoke-virtual {v7}, Lorg/openjdk/tools/sjavac/Source;->isLinkedOnly()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lorg/openjdk/tools/sjavac/Source;->file()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_3

    invoke-static {v7}, Lorg/openjdk/tools/sjavac/Util;->normalizeDriveLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_9

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lorg/openjdk/tools/sjavac/ProblemException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The makefile listed source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not calculated by the smart javac wrapper!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/openjdk/tools/sjavac/ProblemException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Lorg/openjdk/tools/sjavac/ProblemException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The smart javac wrapper calculated source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not listed by the makefiles!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/openjdk/tools/sjavac/ProblemException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void

    :cond_9
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_d

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v4, :cond_a

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_a

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v10, "\\\\"

    const-string v11, "/"

    if-ne v8, v4, :cond_b

    :try_start_4
    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_b

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_b
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_c

    invoke-virtual {v7, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c

    invoke-virtual {v7, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_c
    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_d
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :goto_6
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    new-instance v0, Lorg/openjdk/tools/sjavac/ProblemException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/sjavac/ProblemException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lorg/openjdk/tools/sjavac/ProblemException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " since it does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/sjavac/ProblemException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteClassArtifactsInTaintedPackages()V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->taintedPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/sjavac/JavacState;->fetchPrevArtifacts(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public findAllArtifacts()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->binDir:Ljava/io/File;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/JavacState;->findAllFiles(Ljava/io/File;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->binArtifacts:Ljava/util/Set;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->gensrcDir:Ljava/io/File;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/JavacState;->findAllFiles(Ljava/io/File;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->gensrcArtifacts:Ljava/util/Set;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->headerDir:Ljava/io/File;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/JavacState;->findAllFiles(Ljava/io/File;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->headerArtifacts:Ljava/util/Set;

    return-void
.end method

.method public getJavaSuffixRule()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Transformer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ".java"

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/JavacState;->compileJavaPackages:Lorg/openjdk/tools/sjavac/CompileJavaPackages;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public isIncremental()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/BuildState;->sources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public now()Lorg/openjdk/tools/sjavac/BuildState;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    return-object v0
.end method

.method public performCopying(Ljava/io/File;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Transformer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/sjavac/Transformer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/openjdk/tools/sjavac/CopyFile;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v0}, Lorg/openjdk/tools/sjavac/JavacState;->perform(Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/io/File;Ljava/util/Map;)Z

    return-void
.end method

.method public performJavaCompilations(Lorg/openjdk/tools/sjavac/comp/CompilationService;Lorg/openjdk/tools/sjavac/options/Options;Ljava/util/Set;[Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/sjavac/comp/CompilationService;",
            "Lorg/openjdk/tools/sjavac/options/Options;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[Z)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ".java"

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/JavacState;->compileJavaPackages:Lorg/openjdk/tools/sjavac/CompileJavaPackages;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->compileJavaPackages:Lorg/openjdk/tools/sjavac/CompileJavaPackages;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/sjavac/CompileJavaPackages;->setExtra(Lorg/openjdk/tools/sjavac/options/Options;)V

    iget-object p2, p0, Lorg/openjdk/tools/sjavac/JavacState;->binDir:Ljava/io/File;

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/sjavac/JavacState;->perform(Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/io/File;Ljava/util/Map;)Z

    move-result p1

    const/4 p2, 0x0

    aput-boolean p1, p4, p2

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/JavacState;->taintedPackages()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/JavacState;->clearTaintedPackages()V

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/JavacState;->packagesWithChangedPublicApis:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->packagesWithChangedPublicApis:Ljava/util/Set;

    invoke-virtual {p0, v0, p3}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackagesDependingOnChangedPackages(Ljava/util/Set;Ljava/util/Set;)V

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/JavacState;->packagesWithChangedPublicApis:Ljava/util/Set;

    if-nez p1, :cond_0

    aget-boolean p1, p4, p2

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public performTranslation(Ljava/io/File;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Transformer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/sjavac/Transformer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/openjdk/tools/sjavac/CompileJavaPackages;

    if-eq v2, v3, :cond_0

    const-class v3, Lorg/openjdk/tools/sjavac/CopyFile;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v0}, Lorg/openjdk/tools/sjavac/JavacState;->perform(Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/io/File;Ljava/util/Map;)Z

    return-void
.end method

.method public prev()Lorg/openjdk/tools/sjavac/BuildState;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    return-object v0
.end method

.method public removeSuperfluousArtifacts(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/BuildState;->artifacts()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/openjdk/tools/sjavac/JavacState;->fetchPrevArtifacts(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " since it is now superfluous!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public removeUnidentifiedArtifacts()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/sjavac/Package;

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/Package;->artifacts()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->javacState:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->binArtifacts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " since it is unknown to the javac_state."

    const-string v4, "Removing "

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/sjavac/options/Options;->isUnidentifiedArtifactPermitted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->headerArtifacts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->gensrcArtifacts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_7
    return-void
.end method

.method public save()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n"

    iget-boolean v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->needsSaving:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/JavacState;->javacState:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# javac_state ver 0.4 generated "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# This format might change at any time. Please do not depend on it.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# R arguments\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# M module\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# P package\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# S C source_tobe_compiled timestamp\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# S L link_only_source timestamp\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# G C generated_source timestamp\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# A artifact timestamp\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# D S dependant -> source dependency\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# D C dependant -> classpath dependency\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# I pubapi\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "R "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/JavacState;->theArgs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/JavacState;->recompiledPackages:Ljava/util/Set;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v3, v4, v5}, Lorg/openjdk/tools/sjavac/BuildState;->copyPackagesExcept(Lorg/openjdk/tools/sjavac/BuildState;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/BuildState;->modules()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/openjdk/tools/sjavac/Module;->saveModules(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public setVisibleSources(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Source;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->visibleSrcs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/Source;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/JavacState;->visibleSrcs:Ljava/util/Set;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Source;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public taintPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->taintedPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tainting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Util;->justPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->taintedPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/JavacState;->needsSaving()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->now:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/sjavac/Package;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/Package;->dependents()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public taintPackagesDependingOnChangedClasspathPackages()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/sjavac/Package;

    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/Package;->sources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/openjdk/tools/sjavac/Package;->typeClasspathDependencies()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/d11;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/d11;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/openjdk/tools/sjavac/PubApiExtractor;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/JavacState;->options:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/sjavac/PubApiExtractor;-><init>(Lorg/openjdk/tools/sjavac/options/Options;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/sjavac/PubApiExtractor;->getPubApi(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/PubApiExtractor;->close()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/Package;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->sources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->typeClasspathDependencies()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v6}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/sjavac/Package;

    invoke-virtual {v5}, Lorg/openjdk/tools/sjavac/Package;->getPubApi()Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object v5

    iget-object v5, v5, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/sjavac/pubapi/PubType;

    iget-object v5, v5, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object v6, v6, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->types:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/sjavac/pubapi/PubType;

    iget-object v4, v4, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->isBackwardCompatibleWith(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->diff(Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "depends on classpath package which has an updated package api: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-static {v5, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    return-void
.end method

.method public taintPackagesDependingOnChangedPackages(Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/Package;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->typeDependencies()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/sjavac/g;

    invoke-direct {v3}, Lorg/openjdk/tools/sjavac/g;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "its depending on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public taintPackagesThatMissArtifacts()V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->prev:Lorg/openjdk/tools/sjavac/BuildState;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/BuildState;->packages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/Package;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->artifacts()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/Package;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is missing."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lorg/openjdk/tools/sjavac/JavacState;->taintPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public taintedPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/JavacState;->taintedPackages:Ljava/util/Set;

    return-object v0
.end method
