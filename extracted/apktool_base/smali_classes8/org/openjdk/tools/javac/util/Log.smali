.class public Lorg/openjdk/tools/javac/util/Log;
.super Lorg/openjdk/tools/javac/util/AbstractLog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;,
        Lorg/openjdk/tools/javac/util/Log$WriterKind;,
        Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;,
        Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;,
        Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;,
        Lorg/openjdk/tools/javac/util/Log$PrefixKind;
    }
.end annotation


# static fields
.field public static final errKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation
.end field

.field public static final logKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/util/Log;",
            ">;"
        }
    .end annotation
.end field

.field public static final outKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static useRawMessages:Z


# instance fields
.field protected MaxErrors:I

.field protected MaxWarnings:I

.field public compressedOutput:Z

.field private diagFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field

.field protected diagListener:Lorg/openjdk/javax/tools/DiagnosticListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "-",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

.field public dumpOnError:Z

.field public emitWarnings:Z

.field public expectDiagKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Lorg/openjdk/tools/javac/util/JavacMessages;

.field public nerrors:I

.field public nwarnings:I

.field public promptOnError:Z

.field protected recorded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected recordedSourceLevelErrors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public suppressNotes:Z

.field private final writers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Log$WriterKind;",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/Log;->logKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/Log;->outKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/Log;->errKey:Lorg/openjdk/tools/javac/util/Context$Key;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/openjdk/tools/javac/util/Log;->useRawMessages:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->initWriters(Lorg/openjdk/tools/javac/util/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/util/Log;-><init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 2
    invoke-static {p2, p2}, Lorg/openjdk/tools/javac/util/Log;->initWriters(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Log;-><init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .locals 0

    .line 3
    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/util/Log;->initWriters(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Log;-><init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p2, p3, p4}, Lorg/openjdk/tools/javac/util/Log;->initWriters(Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Log;-><init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Context;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Log$WriterKind;",
            "Ljava/io/PrintWriter;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    .line 7
    iput v0, p0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->recorded:Ljava/util/Set;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->recordedSourceLevelErrors:Ljava/util/Set;

    .line 10
    sget-object v0, Lorg/openjdk/tools/javac/util/Log;->logKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 11
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    .line 12
    const-class p2, Lorg/openjdk/javax/tools/DiagnosticListener;

    .line 13
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/javax/tools/DiagnosticListener;

    .line 14
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Log;->diagListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    .line 15
    new-instance p2, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Log$1;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Log;->diagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    .line 16
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JavacMessages;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/Log;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    .line 17
    const-string v0, "org.openjdk.tools.javac.resources.javac"

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/JavacMessages;->add(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->initOptions(Lorg/openjdk/tools/javac/util/Options;)V

    .line 20
    new-instance p2, Lorg/openjdk/tools/javac/util/i;

    invoke-direct {p2, p0, p1}, Lorg/openjdk/tools/javac/util/i;-><init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Options;)V

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Options;->addListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Options;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->lambda$new$1(Lorg/openjdk/tools/javac/util/Options;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/util/Log;)Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/Log;->diagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->diagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->shouldReport(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->lambda$preRegister$0(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p0

    return-object p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIntOption(Lorg/openjdk/tools/javac/util/Options;Lorg/openjdk/tools/javac/main/Option;I)I
    .locals 0

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    return p1

    :catch_0
    :cond_1
    return p3
.end method

.method public static varargs getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->COMPILER_MISC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->getDefaultLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initOptions(Lorg/openjdk/tools/javac/util/Options;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->DOE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/util/Log;->dumpOnError:Z

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->PROMPT:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/util/Log;->promptOnError:Z

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->XLINT_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    const-string v1, "none"

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/util/Log;->emitWarnings:Z

    const-string v0, "suppressNotes"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/util/Log;->suppressNotes:Z

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->XMAXERRS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Log;->getDefaultMaxErrors()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getIntOption(Lorg/openjdk/tools/javac/util/Options;Lorg/openjdk/tools/javac/main/Option;I)I

    move-result v0

    iput v0, p0, Lorg/openjdk/tools/javac/util/Log;->MaxErrors:I

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->XMAXWARNS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Log;->getDefaultMaxWarnings()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getIntOption(Lorg/openjdk/tools/javac/util/Options;Lorg/openjdk/tools/javac/main/Option;I)I

    move-result v0

    iput v0, p0, Lorg/openjdk/tools/javac/util/Log;->MaxWarnings:I

    const-string v0, "rawDiagnostics"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/RawDiagnosticFormatter;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/RawDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/util/Options;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Log;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/util/Options;Lorg/openjdk/tools/javac/util/JavacMessages;)V

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->diagFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    const-string v0, "expectKeys"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    const-string v1, ", *"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    :cond_1
    return-void
.end method

.method private static initWriters(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/io/PrintWriter;",
            ")",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Log$WriterKind;",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 9
    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->WARNING:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDOUT:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDERR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static initWriters(Ljava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/io/PrintWriter;",
            "Ljava/io/PrintWriter;",
            ")",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Log$WriterKind;",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 15
    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->WARNING:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDOUT:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDERR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static initWriters(Lorg/openjdk/tools/javac/util/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Context;",
            ")",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Log$WriterKind;",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/util/Log;->outKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 2
    sget-object v1, Lorg/openjdk/tools/javac/util/Log;->errKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 4
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 5
    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/util/Log;->initWriters(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0, p0}, Lorg/openjdk/tools/javac/util/Log;->initWriters(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p0

    .line 7
    :goto_1
    invoke-static {v0, v0}, Lorg/openjdk/tools/javac/util/Log;->initWriters(Ljava/io/PrintWriter;Ljava/io/PrintWriter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Log;->logKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Log;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/Log;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$new$1(Lorg/openjdk/tools/javac/util/Options;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->initOptions(Lorg/openjdk/tools/javac/util/Options;)V

    return-void
.end method

.method private static synthetic lambda$preRegister$0(Ljava/io/PrintWriter;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, p1, p0}, Lorg/openjdk/tools/javac/util/Log;-><init>(Lorg/openjdk/tools/javac/util/Context;Ljava/io/PrintWriter;)V

    return-object v0
.end method

.method public static preRegister(Lorg/openjdk/tools/javac/util/Context;Ljava/io/PrintWriter;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/j;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/j;-><init>(Ljava/io/PrintWriter;)V

    const-class p1, Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Lorg/openjdk/tools/javac/util/Context$Factory;)V

    return-void
.end method

.method private printErrLine(ILjava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getLine(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getColumnNumber(IZ)I

    move-result p1

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, p1, -0x1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    const-string v1, "\t"

    goto :goto_2

    :cond_2
    const-string v1, " "

    :goto_2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "^"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method private printRawDiag(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getLineNumber(I)I

    move-result p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p3, p1}, Lorg/openjdk/tools/javac/util/Log;->printErrLine(ILjava/io/PrintWriter;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public static printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    :goto_0
    const/16 v0, 0xa

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private shouldReport(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 3

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/util/Log;->shouldReport(Lorg/openjdk/javax/tools/JavaFileObject;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    sget-object v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isFlagSet(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 7
    :cond_2
    new-instance v1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->recordedSourceLevelErrors:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->recordedSourceLevelErrors:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return v0
.end method


# virtual methods
.method public currentSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public varargs directError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/PrintWriter;

    .line 2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flush(Lorg/openjdk/tools/javac/util/Log$WriterKind;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getDefaultMaxErrors()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getDefaultMaxWarnings()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getDiagnosticFormatter()Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->diagFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    return-object v0
.end method

.method public getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/PrintWriter;

    return-object p1
.end method

.method public getWriterForDiagnosticType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;)Ljava/io/PrintWriter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/PrintWriter;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->WARNING:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/PrintWriter;

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/PrintWriter;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public hasDiagnosticListener()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->diagListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->COMPILER_MISC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localize(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-boolean v0, Lorg/openjdk/tools/javac/util/Log;->useRawMessages:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->key()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->key()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 5
    sget-boolean v0, Lorg/openjdk/tools/javac/util/Log;->useRawMessages:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/openjdk/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->diagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->prev:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->diagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    return-void
.end method

.method public varargs printLines(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public varargs printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public varargs printLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public varargs printLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p4}, Lorg/openjdk/tools/javac/util/Log;->localize(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public printNewline()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public printNewline(Lorg/openjdk/tools/javac/util/Log$WriterKind;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public printRawLines(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    .line 2
    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public printRawLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public varargs printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verbose."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public prompt()V
    .locals 3

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/util/Log;->promptOnError:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resume.abort"

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/util/Log;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_2

    const/16 v1, 0x52

    if-eq v0, v1, :cond_1

    const/16 v1, 0x58

    if-eq v0, v1, :cond_0

    const/16 v1, 0x61

    if-eq v0, v1, :cond_2

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "user abort"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public rawError(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    iget v1, p0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    iget v2, p0, Lorg/openjdk/tools/javac/util/Log;->MaxErrors:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Log;->currentSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/util/Log;->shouldReport(Lorg/openjdk/javax/tools/JavaFileObject;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "error: "

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->printRawDiag(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Log;->prompt()V

    iget p1, p0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public rawWarning(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintWriter;

    iget v1, p0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    iget v2, p0, Lorg/openjdk/tools/javac/util/Log;->MaxWarnings:I

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/util/Log;->emitWarnings:Z

    if-eqz v1, :cond_0

    const-string v1, "warning: "

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->printRawDiag(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Log;->prompt()V

    iget p1, p0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->diagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public setDiagnosticFormatter(Lorg/openjdk/tools/javac/api/DiagnosticFormatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->diagFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    return-void
.end method

.method public setEndPosTable(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/tree/EndPosTable;)V
    .locals 0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->getSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->setEndPosTable(Lorg/openjdk/tools/javac/tree/EndPosTable;)V

    return-void
.end method

.method public setWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWriters(Ljava/io/PrintWriter;)V
    .locals 5

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/openjdk/tools/javac/util/Log$WriterKind;->values()[Lorg/openjdk/tools/javac/util/Log$WriterKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/openjdk/tools/javac/util/Log;->writers:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldReport(Lorg/openjdk/javax/tools/JavaFileObject;I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->recorded:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Log;->recorded:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return p2
.end method

.method public varargs strictWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/AbstractLog;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Log;->writeDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget p1, p0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    return-void
.end method

.method public writeDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log;->diagListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Log;->getWriterForDiagnosticType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Log;->diagFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/Log;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->format(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/util/Log;->promptOnError:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Log;->prompt()V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/util/Log;->dumpOnError:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method
