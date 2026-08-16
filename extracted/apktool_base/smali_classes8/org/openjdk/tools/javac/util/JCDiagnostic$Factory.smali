.class public Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field protected static final diagnosticFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final defaultErrorFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;"
        }
    .end annotation
.end field

.field formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field

.field final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->diagnosticFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JavacMessages;

    move-result-object v0

    const-string v1, "compiler"

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;-><init>(Lorg/openjdk/tools/javac/util/JavacMessages;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->diagnosticFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->initOptions(Lorg/openjdk/tools/javac/util/Options;)V

    .line 5
    new-instance v0, Lorg/openjdk/tools/javac/util/b;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/util/b;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/Options;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->addListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/JavacMessages;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    .line 8
    new-instance p2, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/util/JavacMessages;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    .line 9
    sget-object p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->defaultErrorFlags:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->lambda$normalize$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/Options;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->lambda$new$0(Lorg/openjdk/tools/javac/util/Options;)V

    return-void
.end method

.method private initOptions(Lorg/openjdk/tools/javac/util/Options;)V
    .locals 1

    const-string v0, "onlySyntaxErrorsUnrecoverable"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->defaultErrorFlags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->diagnosticFactoryKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$new$0(Lorg/openjdk/tools/javac/util/Options;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->initOptions(Lorg/openjdk/tools/javac/util/Options;)V

    return-void
.end method

.method private synthetic lambda$normalize$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;",
            "Lorg/openjdk/tools/javac/util/DiagnosticSource;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;",
            ")",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    .line 4
    new-instance v7, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-virtual {p0, p5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->normalize(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object v2

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic;-><init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-object v7
.end method

.method public create(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    .line 2
    const-class v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public varargs create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;",
            "Lorg/openjdk/tools/javac/util/DiagnosticSource;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    invoke-static {p1, v0, p6, p7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public varargs create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    .line 1
    const-class v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    invoke-static {p1, v0, p4, p5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public varargs error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 0

    .line 1
    invoke-virtual {p0, p4, p5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->errorKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->defaultErrorFlags:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->setFlag(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V

    :cond_0
    return-object p2
.end method

.method public varargs errorKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    return-object p1
.end method

.method public varargs fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragmentKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    .line 2
    const-class v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public varargs fragmentKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    return-object p1
.end method

.method public varargs mandatoryNote(Lorg/openjdk/tools/javac/util/DiagnosticSource;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->noteKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->mandatoryNote(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public mandatoryNote(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public varargs mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 0

    .line 1
    invoke-virtual {p0, p4, p5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public mandatoryWarning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public normalize(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->type:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->prefix:Ljava/lang/String;

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->code:Ljava/lang/String;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->args:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lorg/openjdk/tools/javac/util/c;

    invoke-direct {v3, p0}, Lorg/openjdk/tools/javac/util/c;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object p1

    return-object p1
.end method

.method public varargs note(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->noteKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->note(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public note(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    .line 2
    const-class v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public varargs noteKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    return-object p1
.end method

.method public varargs warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 0

    .line 1
    invoke-virtual {p0, p4, p5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    .line 2
    const-class v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public varargs warningKey(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->prefix:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    return-object p1
.end method
