.class public Lorg/openjdk/tools/javac/main/Arguments;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;,
        Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;
    }
.end annotation


# static fields
.field public static final argsKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/main/Arguments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apiHelper:Lorg/openjdk/tools/javac/main/OptionHelper;

.field private classNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cmdLineHelper:Lorg/openjdk/tools/javac/main/OptionHelper;

.field private final context:Lorg/openjdk/tools/javac/util/Context;

.field private deferredFileManagerOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/main/Option;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptyAllowed:Z

.field private errorMode:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

.field private errors:Z

.field private fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private fileObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private files:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private final options:Lorg/openjdk/tools/javac/util/Options;

.field private ownName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/main/Arguments;->argsKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/main/Arguments$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/main/Arguments$1;-><init>(Lorg/openjdk/tools/javac/main/Arguments;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->cmdLineHelper:Lorg/openjdk/tools/javac/main/OptionHelper;

    new-instance v0, Lorg/openjdk/tools/javac/main/Arguments$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/main/Arguments$2;-><init>(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/util/Log;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->apiHelper:Lorg/openjdk/tools/javac/main/OptionHelper;

    sget-object v0, Lorg/openjdk/tools/javac/main/Arguments;->argsKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->context:Lorg/openjdk/tools/javac/util/Context;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/main/Arguments;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZLjava/lang/Iterable;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/main/Arguments;->lambda$processArgs$1(Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZLjava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/main/Arguments;)Lorg/openjdk/tools/javac/util/Options;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/main/Arguments;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/main/Arguments;->deferredFileManagerOptions:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/main/Arguments;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/main/Arguments;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/main/Arguments;->ownName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/main/Arguments;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/main/Arguments;->files:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/main/Arguments;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/main/Arguments;->classNames:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/jvm/Target;Lorg/openjdk/tools/javac/main/Option;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/main/Arguments;->lambda$validate$2(Lorg/openjdk/tools/javac/jvm/Target;Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/jvm/Target;Lorg/openjdk/tools/javac/main/Option;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/main/Arguments;->lambda$validate$3(Lorg/openjdk/tools/javac/jvm/Target;Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method

.method private checkDirectory(Lorg/openjdk/tools/javac/main/Option;)Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "err.file.not.directory"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    return v0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/main/Option;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/main/Arguments;->lambda$handleReleaseOptions$0(Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method

.method private doProcessArgs(Ljava/lang/Iterable;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/main/Option;",
            ">;",
            "Lorg/openjdk/tools/javac/main/OptionHelper;",
            "ZZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/main/Arguments;->getFileManager()Lorg/openjdk/javax/tools/JavaFileManager;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, v0

    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "err.invalid.flag"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, p2}, Lorg/openjdk/tools/javac/main/Option;->lookup(Ljava/lang/String;Ljava/util/Set;)Lorg/openjdk/tools/javac/main/Option;

    move-result-object v2

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->SOURCEFILE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/main/Option;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {v2, p3, v1, p1}, Lorg/openjdk/tools/javac/main/Option;->handleOption(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;Ljava/util/Iterator;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/main/Option$InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/Arguments;->error(Lorg/openjdk/tools/javac/main/Option$InvalidValueException;)V

    return v4

    :cond_4
    if-eqz p5, :cond_5

    invoke-interface {p5, v1, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private getFileManager()Lorg/openjdk/javax/tools/JavaFileManager;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->context:Lorg/openjdk/tools/javac/util/Context;

    const-class v1, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    return-object v0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/Arguments;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/Arguments;->argsKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/main/Arguments;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/main/Arguments;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/main/Arguments;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$handleReleaseOptions$0(Lorg/openjdk/tools/javac/main/Option;)V
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/main/Option;->getPrimaryName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "err.release.bootclasspath.conflict"

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processArgs$1(Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZLjava/lang/Iterable;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/main/Arguments;->doProcessArgs(Ljava/lang/Iterable;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZ)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$validate$2(Lorg/openjdk/tools/javac/jvm/Target;Lorg/openjdk/tools/javac/main/Option;)V
    .locals 0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/main/Option;->getPrimaryName()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "err.option.not.allowed.with.target"

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$validate$3(Lorg/openjdk/tools/javac/jvm/Target;Lorg/openjdk/tools/javac/main/Option;)V
    .locals 0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/main/Option;->getPrimaryName()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "err.option.not.allowed.with.target"

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private processArgs(Ljava/lang/Iterable;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/main/Option;",
            ">;",
            "Lorg/openjdk/tools/javac/main/OptionHelper;",
            "ZZ)Z"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/main/Arguments;->doProcessArgs(Ljava/lang/Iterable;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZ)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/main/f;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/main/f;-><init>(Lorg/openjdk/tools/javac/main/Arguments;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZ)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/Arguments;->handleReleaseOptions(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Options;->notifyListeners()V

    const/4 p1, 0x1

    return p1
.end method

.method private varargs report(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->ownName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v3, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {v2, v3, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/lang/String;)V

    return-void
.end method

.method private report(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->ownName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/lang/String;)V

    return-void
.end method

.method private validateAddExports(Lorg/openjdk/javax/lang/model/SourceVersion;)V
    .locals 12

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->ADD_EXPORTS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/main/Option;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->ADD_EXPORTS:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v9, v7}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->ADD_EXPORTS:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v9, v7}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_1
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const-string v10, "ALL-UNNAMED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v9, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v11, Lorg/openjdk/tools/javac/main/Option;->ADD_EXPORTS:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v11, v9}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_2
    add-int/2addr v8, v0

    goto :goto_1

    :cond_3
    add-int/2addr v5, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private validateAddModules(Lorg/openjdk/javax/lang/model/SourceVersion;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->ADD_MODULES:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "ALL-MODULE-PATH"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_1
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v0

    goto :goto_1

    :sswitch_2
    const-string v7, "ALL-SYSTEM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    packed-switch v6, :pswitch_data_0

    invoke-static {v5, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v7, Lorg/openjdk/tools/javac/main/Option;->ADD_MODULES:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v7, v5}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_3
    :pswitch_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f083005 -> :sswitch_2
        0x0 -> :sswitch_1
        0x3fca5c9a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddReads(Lorg/openjdk/javax/lang/model/SourceVersion;)V
    .locals 12

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->ADD_READS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/main/Option;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->ADD_READS:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v9, v7}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const-string v10, "ALL-UNNAMED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v9, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v11, Lorg/openjdk/tools/javac/main/Option;->ADD_READS:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v11, v9}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_1
    add-int/2addr v8, v0

    goto :goto_1

    :cond_2
    add-int/2addr v5, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private validateDefaultModuleForCreatedFiles(Lorg/openjdk/javax/lang/model/SourceVersion;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->DEFAULT_MODULE_FOR_CREATED_FILES:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    return-void
.end method

.method private validateLimitModules(Lorg/openjdk/javax/lang/model/SourceVersion;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->LIMIT_MODULES:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3, p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v5, Lorg/openjdk/tools/javac/main/Option;->LIMIT_MODULES:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v5, v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public allowEmpty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->emptyAllowed:Z

    return-void
.end method

.method public varargs checkOptionAllowed(ZLorg/openjdk/tools/javac/main/Arguments$ErrorReporter;[Lorg/openjdk/tools/javac/main/Option;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object p3, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/openjdk/tools/javac/main/a;

    invoke-direct {v0, p3}, Lorg/openjdk/tools/javac/main/a;-><init>(Lorg/openjdk/tools/javac/util/Options;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lorg/openjdk/tools/javac/main/b;

    invoke-direct {p3, p2}, Lorg/openjdk/tools/javac/main/b;-><init>(Lorg/openjdk/tools/javac/main/Arguments$ErrorReporter;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->errors:Z

    .line 9
    sget-object v1, Lorg/openjdk/tools/javac/main/Arguments$3;->$SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode:[I

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->errorMode:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/main/Arguments;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Lorg/openjdk/tools/javac/util/PropagatedException;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw p2

    .line 13
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Lorg/openjdk/tools/javac/util/PropagatedException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw p2
.end method

.method public error(Lorg/openjdk/tools/javac/main/Option$InvalidValueException;)V
    .locals 4

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/main/Arguments;->errors:Z

    .line 17
    sget-object v2, Lorg/openjdk/tools/javac/main/Arguments$3;->$SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode:[I

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/Arguments;->errorMode:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->ownName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 19
    :cond_1
    new-instance v1, Lorg/openjdk/tools/javac/util/PropagatedException;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw v1

    .line 20
    :cond_2
    new-instance v1, Lorg/openjdk/tools/javac/util/PropagatedException;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->errors:Z

    .line 2
    sget-object v1, Lorg/openjdk/tools/javac/main/Arguments$3;->$SwitchMap$com$sun$tools$javac$main$Arguments$ErrorMode:[I

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->errorMode:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/main/Arguments;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Lorg/openjdk/tools/javac/util/PropagatedException;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Lorg/openjdk/tools/javac/util/PropagatedException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public getClassNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->classNames:Ljava/util/Set;

    return-object v0
.end method

.method public getDeferredFileManagerOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/main/Option;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->deferredFileManagerOptions:Ljava/util/Map;

    return-object v0
.end method

.method public getDocLintOpts()Lorg/openjdk/tools/javac/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->XDOCLINT:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->XDOCLINT_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v0, :cond_1

    const-string v0, "-Xmsgs"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    const-string v3, "\\s+"

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-Xmsgs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "-Xmsgs:none"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v4, Lorg/openjdk/tools/javac/main/Option;->XDOCLINT_PACKAGE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v0, v3, :cond_5

    aget-object v4, v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-XcheckPackage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->DOCLINT_FORMAT:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-XhtmlVersion:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v0, "-XimplicitHeaders:2"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->from([Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileObjects()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->files:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/main/Arguments;->getFileManager()Lorg/openjdk/javax/tools/JavaFileManager;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/Arguments;->files:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    return-object v0
.end method

.method public getPluginOpts()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->PLUGIN:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v2, "\\x00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/List;->from([Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleReleaseOptions(Ljava/util/function/Predicate;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->RELEASE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    new-instance v5, Lorg/openjdk/tools/javac/main/c;

    invoke-direct {v5, v1}, Lorg/openjdk/tools/javac/main/c;-><init>(Lorg/openjdk/tools/javac/main/Arguments;)V

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->BOOT_CLASS_PATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v7, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v8, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_APPEND:Lorg/openjdk/tools/javac/main/Option;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_PREPEND:Lorg/openjdk/tools/javac/main/Option;

    sget-object v10, Lorg/openjdk/tools/javac/main/Option;->ENDORSEDDIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v11, Lorg/openjdk/tools/javac/main/Option;->DJAVA_ENDORSED_DIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v12, Lorg/openjdk/tools/javac/main/Option;->EXTDIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v13, Lorg/openjdk/tools/javac/main/Option;->DJAVA_EXT_DIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v15, Lorg/openjdk/tools/javac/main/Option;->SOURCE:Lorg/openjdk/tools/javac/main/Option;

    sget-object v14, Lorg/openjdk/tools/javac/main/Option;->TARGET:Lorg/openjdk/tools/javac/main/Option;

    sget-object v16, Lorg/openjdk/tools/javac/main/Option;->SYSTEM:Lorg/openjdk/tools/javac/main/Option;

    sget-object v17, Lorg/openjdk/tools/javac/main/Option;->UPGRADE_MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    move-object/from16 v18, v14

    move-object v14, v15

    move-object v2, v15

    move-object/from16 v15, v18

    filled-new-array/range {v6 .. v17}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lorg/openjdk/tools/javac/main/Arguments;->checkOptionAllowed(ZLorg/openjdk/tools/javac/main/Arguments$ErrorReporter;[Lorg/openjdk/tools/javac/main/Option;)V

    if-eqz v0, :cond_5

    invoke-static {v0}, Lorg/openjdk/tools/javac/platform/PlatformUtils;->lookupPlatformDescription(Ljava/lang/String;)Lorg/openjdk/tools/javac/platform/PlatformDescription;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v2, "err.unsupported.release.version"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-interface {v4}, Lorg/openjdk/tools/javac/platform/PlatformDescription;->getSourceVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/openjdk/tools/javac/util/Options;->put(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-interface {v4}, Lorg/openjdk/tools/javac/platform/PlatformDescription;->getTargetVersion()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v18

    invoke-virtual {v0, v5, v2}, Lorg/openjdk/tools/javac/util/Options;->put(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->context:Lorg/openjdk/tools/javac/util/Context;

    const-class v2, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    invoke-virtual {v0, v2, v4}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v4}, Lorg/openjdk/tools/javac/platform/PlatformDescription;->getAdditionalOptions()Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-interface {v4}, Lorg/openjdk/tools/javac/platform/PlatformDescription;->getPlatformPath()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lorg/openjdk/tools/javac/main/Arguments;->getFileManager()Lorg/openjdk/javax/tools/JavaFileManager;

    move-result-object v2

    instance-of v4, v2, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    if-nez v4, :cond_3

    const-string v0, "err.release.not.standard.file.manager"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    :try_start_0
    check-cast v2, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    iget-object v4, v1, Lorg/openjdk/tools/javac/main/Arguments;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v4}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "--system"

    const-string v5, "none"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/openjdk/javax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->UPGRADE_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v2, v4, v0}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->setLocationFromPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/util/Collection;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v2, v4, v0}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->setLocationFromPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :goto_2
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v4, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const-string v5, "msg.io"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5, v6}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v4, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return v3

    :goto_3
    return v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->ownName:Ljava/lang/String;

    .line 18
    sget-object p1, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->LOG:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->errorMode:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->ownName:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/main/Arguments;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->classNames:Ljava/util/Set;

    .line 12
    invoke-virtual {p0, p4}, Lorg/openjdk/tools/javac/main/Arguments;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->files:Ljava/util/Set;

    .line 14
    sget-object p1, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->ILLEGAL_ARGUMENT:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->errorMode:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/main/Arguments;->toList(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/main/Option;->getJavacToolOptions()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/Arguments;->apiHelper:Lorg/openjdk/tools/javac/main/OptionHelper;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/main/Arguments;->processArgs(Ljava/lang/Iterable;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZ)Z

    .line 16
    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->ILLEGAL_STATE:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->errorMode:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    return-void
.end method

.method public varargs init(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/main/Arguments;->ownName:Ljava/lang/String;

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;->LOG:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->errorMode:Lorg/openjdk/tools/javac/main/Arguments$ErrorMode;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->files:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->deferredFileManagerOptions:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->classNames:Ljava/util/Set;

    .line 7
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->from([Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {}, Lorg/openjdk/tools/javac/main/Option;->getJavaCompilerOptions()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/main/Arguments;->cmdLineHelper:Lorg/openjdk/tools/javac/main/OptionHelper;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/main/Arguments;->processArgs(Ljava/lang/Iterable;Ljava/util/Set;Lorg/openjdk/tools/javac/main/OptionHelper;ZZ)Z

    .line 8
    iget-boolean p2, p0, Lorg/openjdk/tools/javac/main/Arguments;->errors:Z

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const-string v1, "msg.usage"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->files:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Arguments;->classNames:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toList(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public validate()Z
    .locals 30

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lorg/openjdk/tools/javac/main/Arguments;->getFileManager()Lorg/openjdk/javax/tools/JavaFileManager;

    move-result-object v0

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->MODULE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    sget-object v2, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->OutputDirMustBeSpecifiedWithDashMOption:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto/16 :goto_3

    :cond_0
    sget-object v2, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModulesourcepathMustBeSpecifiedWithDashMOption:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto/16 :goto_3

    :cond_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v6, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v6, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleNotFoundInModuleSourcePath(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    sget-object v7, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v7, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v3

    const-string v7, ""

    sget-object v8, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    invoke-interface {v0, v6, v7, v8, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, v6, v8}, Lorg/openjdk/javax/tools/JavaFileManager;->inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v0, v3, v9, v10}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v9}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v9

    invoke-interface {v8}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    :cond_5
    iget-object v9, v1, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    if-nez v9, :cond_6

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, v1, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    :cond_6
    iget-object v9, v1, Lorg/openjdk/tools/javac/main/Arguments;->fileObjects:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v3, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const-string v4, "msg.io"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v3, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return v5

    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/main/Arguments;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->HELP:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->X:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->VERSION:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->FULLVERSION:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->MODULE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    iget-boolean v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->emptyAllowed:Z

    if-nez v2, :cond_c

    iget-boolean v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->errors:Z

    if-nez v0, :cond_a

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested(Lorg/openjdk/tools/javac/util/Options;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "err.no.source.files.classes"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    const-string v0, "err.no.source.files"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_4
    return v5

    :cond_b
    :goto_5
    return v4

    :cond_c
    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->D:Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/main/Arguments;->checkDirectory(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-nez v2, :cond_d

    return v5

    :cond_d
    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->S:Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/main/Arguments;->checkDirectory(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-nez v2, :cond_e

    return v5

    :cond_e
    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->H:Lorg/openjdk/tools/javac/main/Option;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/main/Arguments;->checkDirectory(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-nez v2, :cond_f

    return v5

    :cond_f
    instance-of v2, v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    const-string v3, "-"

    if-eqz v2, :cond_11

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v2, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    sget-object v6, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v2, v6}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v2, v6}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/Path;

    sget-object v7, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v2, v7}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v2

    const-string v7, "module-info.class"

    if-eqz v2, :cond_10

    invoke-interface {v6, v7}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v7, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v6}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->MultiModuleOutdirCannotBeExplodedModule(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_6

    :cond_10
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v8, Lorg/openjdk/tools/javac/main/Option;->XLINT_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    iget-object v11, v10, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v6}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2, v7}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v7, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v6}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->OutdirIsInExplodedModule(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_11
    :goto_6
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->SOURCE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Source;->lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v6

    goto :goto_7

    :cond_12
    sget-object v6, Lorg/openjdk/tools/javac/code/Source;->DEFAULT:Lorg/openjdk/tools/javac/code/Source;

    :goto_7
    iget-object v7, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v8, Lorg/openjdk/tools/javac/main/Option;->TARGET:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-static {v7}, Lorg/openjdk/tools/javac/jvm/Target;->lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v8

    goto :goto_8

    :cond_13
    sget-object v8, Lorg/openjdk/tools/javac/jvm/Target;->DEFAULT:Lorg/openjdk/tools/javac/jvm/Target;

    :goto_8
    iget-object v9, v8, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Source;->requiredTarget()Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_16

    if-eqz v7, :cond_15

    if-nez v2, :cond_14

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Source;->requiredTarget()Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "warn.target.default.source.conflict"

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_14
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Source;->requiredTarget()Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "warn.source.target.conflict"

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9
    return v5

    :cond_15
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Source;->requiredTarget()Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v8

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    iget-object v7, v8, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    const-string v9, "-target"

    invoke-virtual {v2, v9, v7}, Lorg/openjdk/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v7, Lorg/openjdk/tools/javac/main/Option;->PROFILE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v7}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/Profile;->lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Profile;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/openjdk/tools/javac/jvm/Profile;->isValid(Lorg/openjdk/tools/javac/jvm/Target;)Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, v8, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    filled-new-array {v2, v9}, [Ljava/lang/Object;

    move-result-object v2

    const-string v9, "warn.profile.target.conflict"

    invoke-virtual {v1, v9, v2}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->BOOT_CLASS_PATH:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v9}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    const-string v2, "err.profile.bootclasspath.conflict"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v9}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->SOURCE_PATH:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v9}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->MODULE_SOURCE_PATH:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v9}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "err.sourcepath.modulesourcepath.conflict"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v9}, Lorg/openjdk/tools/javac/main/Arguments;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iget-object v2, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->XLINT_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPTIONS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    iget-object v11, v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v9, Lorg/openjdk/tools/javac/code/Source;->DEFAULT:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {v6, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gez v9, :cond_1a

    iget-object v9, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v10, Lorg/openjdk/tools/javac/main/Option;->RELEASE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v9

    if-nez v9, :cond_1a

    instance-of v9, v0, Lorg/openjdk/tools/javac/file/BaseFileManager;

    if-eqz v9, :cond_1a

    move-object v9, v0

    check-cast v9, Lorg/openjdk/tools/javac/file/BaseFileManager;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/file/BaseFileManager;->isDefaultBootClassPath()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v10, v6, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "source.no.bootclasspath"

    invoke-virtual {v9, v3, v11, v10}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    sget-object v9, Lorg/openjdk/tools/javac/code/Source;->MIN:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {v6, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v10

    if-gez v10, :cond_1b

    iget-object v10, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v11, v6, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    invoke-static {v11, v9}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->OptionRemovedSource(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_a

    :cond_1b
    if-ne v6, v9, :cond_1c

    if-eqz v2, :cond_1c

    iget-object v9, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v10, v6, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    invoke-static {v10}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->OptionObsoleteSource(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    move v9, v4

    goto :goto_b

    :cond_1c
    :goto_a
    move v9, v5

    :goto_b
    sget-object v10, Lorg/openjdk/tools/javac/jvm/Target;->MIN:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v8, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-gez v11, :cond_1d

    iget-object v11, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v12, v8, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    iget-object v10, v10, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-static {v12, v10}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->OptionRemovedTarget(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_c

    :cond_1d
    if-ne v8, v10, :cond_1e

    if-eqz v2, :cond_1e

    iget-object v9, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v10, v8, Lorg/openjdk/tools/javac/jvm/Target;->name:Ljava/lang/String;

    invoke-static {v10}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->OptionObsoleteTarget(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    move/from16 v18, v4

    goto :goto_d

    :cond_1e
    :goto_c
    move/from16 v18, v9

    :goto_d
    sget-object v9, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_8:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-gtz v9, :cond_1f

    move v15, v4

    goto :goto_e

    :cond_1f
    move v15, v5

    :goto_e
    new-instance v14, Lorg/openjdk/tools/javac/main/d;

    invoke-direct {v14, v1, v8}, Lorg/openjdk/tools/javac/main/d;-><init>(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/jvm/Target;)V

    sget-object v9, Lorg/openjdk/tools/javac/main/Option;->BOOT_CLASS_PATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v10, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_PREPEND:Lorg/openjdk/tools/javac/main/Option;

    sget-object v11, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v12, Lorg/openjdk/tools/javac/main/Option;->XBOOTCLASSPATH_APPEND:Lorg/openjdk/tools/javac/main/Option;

    sget-object v13, Lorg/openjdk/tools/javac/main/Option;->ENDORSEDDIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v16, Lorg/openjdk/tools/javac/main/Option;->DJAVA_ENDORSED_DIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v17, Lorg/openjdk/tools/javac/main/Option;->EXTDIRS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v19, Lorg/openjdk/tools/javac/main/Option;->DJAVA_EXT_DIRS:Lorg/openjdk/tools/javac/main/Option;

    move-object v4, v14

    move-object/from16 v14, v16

    move v5, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    filled-new-array/range {v9 .. v17}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v7

    invoke-virtual {v1, v5, v4, v7}, Lorg/openjdk/tools/javac/main/Arguments;->checkOptionAllowed(ZLorg/openjdk/tools/javac/main/Arguments$ErrorReporter;[Lorg/openjdk/tools/javac/main/Option;)V

    sget-object v4, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_9:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v8, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_f

    :cond_20
    const/4 v4, 0x0

    :goto_f
    new-instance v5, Lorg/openjdk/tools/javac/main/e;

    invoke-direct {v5, v1, v8}, Lorg/openjdk/tools/javac/main/e;-><init>(Lorg/openjdk/tools/javac/main/Arguments;Lorg/openjdk/tools/javac/jvm/Target;)V

    sget-object v20, Lorg/openjdk/tools/javac/main/Option;->MODULE_SOURCE_PATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v21, Lorg/openjdk/tools/javac/main/Option;->UPGRADE_MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v22, Lorg/openjdk/tools/javac/main/Option;->SYSTEM:Lorg/openjdk/tools/javac/main/Option;

    sget-object v23, Lorg/openjdk/tools/javac/main/Option;->MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    sget-object v24, Lorg/openjdk/tools/javac/main/Option;->ADD_MODULES:Lorg/openjdk/tools/javac/main/Option;

    sget-object v25, Lorg/openjdk/tools/javac/main/Option;->ADD_EXPORTS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v7, Lorg/openjdk/tools/javac/main/Option;->ADD_OPENS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v27, Lorg/openjdk/tools/javac/main/Option;->ADD_READS:Lorg/openjdk/tools/javac/main/Option;

    sget-object v28, Lorg/openjdk/tools/javac/main/Option;->LIMIT_MODULES:Lorg/openjdk/tools/javac/main/Option;

    sget-object v29, Lorg/openjdk/tools/javac/main/Option;->PATCH_MODULE:Lorg/openjdk/tools/javac/main/Option;

    move-object/from16 v26, v7

    filled-new-array/range {v20 .. v29}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v8

    invoke-virtual {v1, v4, v5, v8}, Lorg/openjdk/tools/javac/main/Arguments;->checkOptionAllowed(ZLorg/openjdk/tools/javac/main/Arguments$ErrorReporter;[Lorg/openjdk/tools/javac/main/Option;)V

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v5, Lorg/openjdk/tools/javac/main/Option;->PROC:Lorg/openjdk/tools/javac/main/Option;

    const-string v8, "only"

    invoke-virtual {v4, v5, v8}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v5, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->NoOutputDir:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_21
    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v4

    if-eqz v4, :cond_22

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v4, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ProcessorpathNoProcessormodulepath:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_22
    if-eqz v18, :cond_23

    if-eqz v2, :cond_23

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v4, "option.obsolete.suppression"

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_23
    const/4 v5, 0x0

    :goto_10
    invoke-static {v6}, Lorg/openjdk/tools/javac/code/Source;->toSourceVersion(Lorg/openjdk/tools/javac/code/Source;)Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/main/Arguments;->validateAddExports(Lorg/openjdk/javax/lang/model/SourceVersion;)V

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/main/Arguments;->validateAddModules(Lorg/openjdk/javax/lang/model/SourceVersion;)V

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/main/Arguments;->validateAddReads(Lorg/openjdk/javax/lang/model/SourceVersion;)V

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/main/Arguments;->validateLimitModules(Lorg/openjdk/javax/lang/model/SourceVersion;)V

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/main/Arguments;->validateDefaultModuleForCreatedFiles(Lorg/openjdk/javax/lang/model/SourceVersion;)V

    if-eqz v2, :cond_24

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, v7}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v2, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->AddopensIgnored:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_24
    iget-boolean v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->errors:Z

    if-nez v0, :cond_25

    iget-object v0, v1, Lorg/openjdk/tools/javac/main/Arguments;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v0, v0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-nez v0, :cond_25

    const/4 v4, 0x1

    goto :goto_11

    :cond_25
    move v4, v5

    :goto_11
    return v4
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/main/Arguments;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
