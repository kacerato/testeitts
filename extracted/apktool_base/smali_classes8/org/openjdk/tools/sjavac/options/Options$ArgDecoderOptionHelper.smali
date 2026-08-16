.class Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;
.super Lorg/openjdk/tools/sjavac/options/OptionHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/sjavac/options/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArgDecoderOptionHelper"
.end annotation


# instance fields
.field excludeFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field excludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field genSrcProvided:Z

.field headerProvided:Z

.field includeFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field includes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field stateProvided:Z

.field final synthetic this$0:Lorg/openjdk/tools/sjavac/options/Options;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/sjavac/options/Options;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/options/OptionHelper;-><init>()V

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->resetFilters()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->headerProvided:Z

    .line 4
    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->genSrcProvided:Z

    .line 5
    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->stateProvided:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/sjavac/options/Options;Lorg/openjdk/tools/sjavac/options/Options$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;-><init>(Lorg/openjdk/tools/sjavac/options/Options;)V

    return-void
.end method

.method private createSourceLocations(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    new-instance v2, Lorg/openjdk/tools/sjavac/options/SourceLocation;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->includes:Ljava/util/List;

    iget-object v4, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->excludes:Ljava/util/List;

    invoke-direct {v2, v1, v3, v4}, Lorg/openjdk/tools/sjavac/options/SourceLocation;-><init>(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->resetFilters()V

    return-object v0
.end method

.method private resetFilters()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->includes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->excludes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->includeFiles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->excludeFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTransformer(Ljava/lang/String;Lorg/openjdk/tools/sjavac/Transformer;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$200(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "More than one transformer specified for suffix "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->reportError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$200(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public classpath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$500(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->createSourceLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public compareFoundSources(Ljava/nio/file/Path;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$802(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    return-void
.end method

.method public destDir(Ljava/nio/file/Path;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$1600(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "Destination directory already specified."

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->reportError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1602(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    return-void
.end method

.method public exclude(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Util;->normalizeDriveLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->excludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generatedSourcesDir(Ljava/nio/file/Path;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->genSrcProvided:Z

    if-eqz v0, :cond_0

    const-string p1, "Directory for generated sources already specified."

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->reportError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->genSrcProvided:Z

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1702(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    return-void
.end method

.method public headerDir(Ljava/nio/file/Path;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->headerProvided:Z

    if-eqz v0, :cond_0

    const-string p1, "Header directory already specified."

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->reportError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->headerProvided:Z

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1802(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    return-void
.end method

.method public implicit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1302(Lorg/openjdk/tools/sjavac/options/Options;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public include(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Util;->normalizeDriveLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->includes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs javacArg([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$1500(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public logLevel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$702(Lorg/openjdk/tools/sjavac/options/Options;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public modulepath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$400(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->createSourceLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public numCores(I)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$602(Lorg/openjdk/tools/sjavac/options/Options;I)I

    return-void
.end method

.method public permitArtifact(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$900(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public permitDefaultPackage()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1102(Lorg/openjdk/tools/sjavac/options/Options;Z)Z

    return-void
.end method

.method public permitUnidentifiedArtifacts()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1002(Lorg/openjdk/tools/sjavac/options/Options;Z)Z

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serverConf(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$1200(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "Can not specify more than one server configuration."

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1202(Lorg/openjdk/tools/sjavac/options/Options;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public sourceRoots(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$100(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->createSourceLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public sourcepath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$300(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->createSourceLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public startServerConf(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/options/Options;->access$1200(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "Can not specify more than one server configuration."

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1402(Lorg/openjdk/tools/sjavac/options/Options;Z)Z

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1202(Lorg/openjdk/tools/sjavac/options/Options;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public stateDir(Ljava/nio/file/Path;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->stateProvided:Z

    if-eqz v0, :cond_0

    const-string p1, "State directory already specified."

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->reportError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->stateProvided:Z

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/options/Options;->access$1902(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    return-void
.end method
