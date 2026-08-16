.class public Lorg/openjdk/tools/sjavac/options/Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;
    }
.end annotation


# instance fields
.field private classSearchPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private destDir:Ljava/nio/file/Path;

.field private genSrcDir:Ljava/nio/file/Path;

.field private headerDir:Ljava/nio/file/Path;

.field private implicitPolicy:Ljava/lang/String;

.field private javacArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logLevel:Ljava/lang/String;

.field private moduleSearchPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private numCores:I

.field private permitSourcesInDefaultPackage:Z

.field private permitUnidentifiedArtifacts:Z

.field private permitted_artifacts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverConf:Ljava/lang/String;

.field private sourceReferenceList:Ljava/nio/file/Path;

.field private sourceSearchPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private startServer:Z

.field private stateDir:Ljava/nio/file/Path;

.field private trRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Transformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->sources:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->sourceSearchPaths:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->classSearchPaths:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->moduleSearchPaths:Ljava/util/List;

    const-string v0, "info"

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->logLevel:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitted_artifacts:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitUnidentifiedArtifacts:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitSourcesInDefaultPackage:Z

    const/4 v1, 0x4

    iput v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->numCores:I

    const-string v1, "none"

    iput-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->implicitPolicy:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->javacArgs:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->trRules:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->startServer:Z

    return-void
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->sources:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1002(Lorg/openjdk/tools/sjavac/options/Options;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitUnidentifiedArtifacts:Z

    return p1
.end method

.method public static synthetic access$1102(Lorg/openjdk/tools/sjavac/options/Options;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitSourcesInDefaultPackage:Z

    return p1
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->serverConf:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1202(Lorg/openjdk/tools/sjavac/options/Options;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->serverConf:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1302(Lorg/openjdk/tools/sjavac/options/Options;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->implicitPolicy:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1402(Lorg/openjdk/tools/sjavac/options/Options;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->startServer:Z

    return p1
.end method

.method public static synthetic access$1500(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->javacArgs:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1600(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->destDir:Ljava/nio/file/Path;

    return-object p0
.end method

.method public static synthetic access$1602(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->destDir:Ljava/nio/file/Path;

    return-object p1
.end method

.method public static synthetic access$1702(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->genSrcDir:Ljava/nio/file/Path;

    return-object p1
.end method

.method public static synthetic access$1802(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->headerDir:Ljava/nio/file/Path;

    return-object p1
.end method

.method public static synthetic access$1902(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->stateDir:Ljava/nio/file/Path;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->trRules:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->sourceSearchPaths:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->moduleSearchPaths:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->classSearchPaths:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$602(Lorg/openjdk/tools/sjavac/options/Options;I)I
    .locals 0

    iput p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->numCores:I

    return p1
.end method

.method public static synthetic access$702(Lorg/openjdk/tools/sjavac/options/Options;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->logLevel:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$802(Lorg/openjdk/tools/sjavac/options/Options;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options;->sourceReferenceList:Ljava/nio/file/Path;

    return-object p1
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/sjavac/options/Options;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitted_artifacts:Ljava/util/Set;

    return-object p0
.end method

.method private static concatenateSourceLocations(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/StringJoiner;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/sjavac/options/SourceLocation;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/options/SourceLocation;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseArgs([Ljava/lang/String;)Lorg/openjdk/tools/sjavac/options/Options;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/sjavac/options/Options;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/options/Options;-><init>()V

    new-instance v1, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/sjavac/options/Options$ArgDecoderOptionHelper;-><init>(Lorg/openjdk/tools/sjavac/options/Options;Lorg/openjdk/tools/sjavac/options/Options$1;)V

    invoke-virtual {v1, p0}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->traverse([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public areUnidentifiedArtifactsPermitted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitUnidentifiedArtifacts:Z

    return v0
.end method

.method public getClassSearchPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->classSearchPaths:Ljava/util/List;

    return-object v0
.end method

.method public getDestDir()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->destDir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getGenSrcDir()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->genSrcDir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getHeaderDir()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->headerDir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getImplicitPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->implicitPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getJavacArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->javacArgs:Ljava/util/List;

    return-object v0
.end method

.method public getLogLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->logLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleSearchPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->moduleSearchPaths:Ljava/util/List;

    return-object v0
.end method

.method public getNumCores()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->numCores:I

    return v0
.end method

.method public getServerConf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->serverConf:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceReferenceList()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->sourceReferenceList:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getSourceSearchPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->sourceSearchPaths:Ljava/util/List;

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->sources:Ljava/util/List;

    return-object v0
.end method

.method public getStateArgsString()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;-><init>(Lorg/openjdk/tools/sjavac/options/Options;)V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->genSrcDir:Ljava/nio/file/Path;

    if-eqz v1, :cond_0

    sget-object v2, Lorg/openjdk/tools/sjavac/options/Option;->S:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->headerDir:Ljava/nio/file/Path;

    if-eqz v1, :cond_1

    sget-object v2, Lorg/openjdk/tools/sjavac/options/Option;->H:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->destDir:Ljava/nio/file/Path;

    if-eqz v1, :cond_2

    sget-object v2, Lorg/openjdk/tools/sjavac/options/Option;->D:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->stateDir:Ljava/nio/file/Path;

    if-eqz v1, :cond_3

    sget-object v2, Lorg/openjdk/tools/sjavac/options/Option;->STATE_DIR:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lorg/openjdk/tools/sjavac/options/Option;->SRC:Lorg/openjdk/tools/sjavac/options/Option;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/options/Options;->sources:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addSourceLocations(Lorg/openjdk/tools/sjavac/options/Option;Ljava/util/List;)V

    sget-object v1, Lorg/openjdk/tools/sjavac/options/Option;->SOURCE_PATH:Lorg/openjdk/tools/sjavac/options/Option;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/options/Options;->sourceSearchPaths:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addSourceLocations(Lorg/openjdk/tools/sjavac/options/Option;Ljava/util/List;)V

    sget-object v1, Lorg/openjdk/tools/sjavac/options/Option;->CLASS_PATH:Lorg/openjdk/tools/sjavac/options/Option;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/options/Options;->classSearchPaths:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addSourceLocations(Lorg/openjdk/tools/sjavac/options/Option;Ljava/util/List;)V

    sget-object v1, Lorg/openjdk/tools/sjavac/options/Option;->MODULE_PATH:Lorg/openjdk/tools/sjavac/options/Option;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/options/Options;->moduleSearchPaths:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addSourceLocations(Lorg/openjdk/tools/sjavac/options/Option;Ljava/util/List;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitSourcesInDefaultPackage:Z

    if-eqz v1, :cond_4

    sget-object v1, Lorg/openjdk/tools/sjavac/options/Option;->PERMIT_SOURCES_WITHOUT_PACKAGE:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;)V

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitted_artifacts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/openjdk/tools/sjavac/options/Option;->PERMIT_ARTIFACT:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitUnidentifiedArtifacts:Z

    if-eqz v1, :cond_6

    sget-object v1, Lorg/openjdk/tools/sjavac/options/Option;->PERMIT_UNIDENTIFIED_ARTIFACTS:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;)V

    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->trRules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/sjavac/Transformer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/sjavac/options/Option;->TR:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->javacArgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addAll(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateDir()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->stateDir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getTranslationRules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/Transformer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->trRules:Ljava/util/Map;

    return-object v0
.end method

.method public isDefaultPackagePermitted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitSourcesInDefaultPackage:Z

    return v0
.end method

.method public isJavaFilesAmongJavacArgs()Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->javacArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isUnidentifiedArtifactPermitted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->permitted_artifacts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public prepJavacArgs()[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->destDir:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Options;->getGenSrcDir()Ljava/nio/file/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "-s"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->genSrcDir:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->headerDir:Ljava/nio/file/Path;

    if-eqz v1, :cond_1

    const-string v1, "-h"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->headerDir:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/options/Options;->sources:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/options/Options;->sourceSearchPaths:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "-sourcepath"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/options/Options;->concatenateSourceLocations(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->classSearchPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "-classpath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->classSearchPaths:Ljava/util/List;

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/options/Options;->concatenateSourceLocations(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "--debug:completionDeps=source,class"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-implicit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/options/Options;->implicitPolicy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options;->javacArgs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public startServerFlag()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/options/Options;->startServer:Z

    return v0
.end method
