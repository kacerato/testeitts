.class public Lcom/android/tools/r8/ExtractMarkerCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    }
.end annotation


# static fields
.field static final g:Ljava/lang/String;


# instance fields
.field private final a:Z

.field private final b:Lcom/android/tools/r8/DiagnosticsHandler;

.field private final c:Lcom/android/tools/r8/MarkerInfoConsumer;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, " where <input-files> are D8 supported input/output files and options are:"

    const-string v1, "  --help                  # Print this message."

    const-string v2, "Usage: extractmarker [options] <input-files>"

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/ExtractMarkerCommand;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/MarkerInfoConsumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->a:Z

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->c:Lcom/android/tools/r8/MarkerInfoConsumer;

    .line 7
    iput-object p3, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->d:Ljava/util/ArrayList;

    .line 8
    iput-object p4, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->e:Ljava/util/ArrayList;

    .line 9
    iput-object p5, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/MarkerInfoConsumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/tools/r8/O1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/ExtractMarkerCommand;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/MarkerInfoConsumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->a:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->c:Lcom/android/tools/r8/MarkerInfoConsumer;

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->d:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->e:Ljava/util/ArrayList;

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/android/tools/r8/O1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/ExtractMarkerCommand;-><init>(Z)V

    return-void
.end method

.method private static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/o50;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/origin/Origin;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/function/BiConsumer;Ljava/nio/file/Path;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static a([Ljava/lang/String;Lcom/android/tools/r8/ExtractMarkerCommand$Builder;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 1
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 2
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 3
    const-string v4, "--help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    goto :goto_1

    .line 5
    :cond_0
    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/Path;

    aput-object v3, v4, v1

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/If;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private static synthetic b(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/o50;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/origin/Origin;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/BiConsumer;Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/ExtractMarkerCommand;->a(Ljava/util/function/BiConsumer;Ljava/nio/file/Path;)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/F;

    invoke-direct {v0}, Lcom/android/tools/r8/F;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/ExtractMarkerCommand;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object v0
.end method

.method public static synthetic c(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/o50;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/ExtractMarkerCommand;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/o50;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/o50;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/ExtractMarkerCommand;->b(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/o50;)V

    return-void
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/ExtractMarkerCommand;->builder()Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/ExtractMarkerCommand;->a([Ljava/lang/String;Lcom/android/tools/r8/ExtractMarkerCommand$Builder;)V

    return-object v0
.end method


# virtual methods
.method public forEachEntry(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/nio/file/Path;",
            "Lcom/android/tools/r8/origin/Origin;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "[B",
            "Lcom/android/tools/r8/origin/Origin;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "[B",
            "Lcom/android/tools/r8/origin/Origin;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/L1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/L1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/tools/r8/M1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/M1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->f:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/tools/r8/N1;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/N1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    return-object v0
.end method

.method public getMarkerInfoConsumer()Lcom/android/tools/r8/MarkerInfoConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->c:Lcom/android/tools/r8/MarkerInfoConsumer;

    return-object v0
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ExtractMarkerCommand;->a:Z

    return v0
.end method
