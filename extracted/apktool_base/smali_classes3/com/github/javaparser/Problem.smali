.class public Lcom/github/javaparser/Problem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static PROBLEM_BY_BEGIN_POSITION:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/github/javaparser/Problem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final location:Lcom/github/javaparser/TokenRange;

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/w0;

    invoke-direct {v0}, Lcom/github/javaparser/w0;-><init>()V

    sput-object v0, Lcom/github/javaparser/Problem;->PROBLEM_BY_BEGIN_POSITION:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/github/javaparser/TokenRange;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "location",
            "cause"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/github/javaparser/Problem;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/javaparser/Problem;->location:Lcom/github/javaparser/TokenRange;

    iput-object p3, p0, Lcom/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/TokenRange;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/Problem;->lambda$null$3(Lcom/github/javaparser/TokenRange;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/Problem;Lcom/github/javaparser/TokenRange;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/Problem;->lambda$getVerboseMessage$1(Lcom/github/javaparser/TokenRange;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/Problem;->lambda$null$4(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/github/javaparser/Problem;Lcom/github/javaparser/Problem;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/Problem;->lambda$static$6(Lcom/github/javaparser/Problem;Lcom/github/javaparser/Problem;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/github/javaparser/TokenRange;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/Problem;->lambda$null$5(Lcom/github/javaparser/TokenRange;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/Problem;->lambda$null$2(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/github/javaparser/Range;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/Problem;->lambda$null$0(Lcom/github/javaparser/Range;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getVerboseMessage$1(Lcom/github/javaparser/TokenRange;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/github/javaparser/t0;

    invoke-direct {v1}, Lcom/github/javaparser/t0;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const-string v1, "(line ?,col ?)"

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/github/javaparser/Problem;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/Range;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {p0}, Lcom/github/javaparser/Position;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$null$2(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    return-object p0
.end method

.method private static synthetic lambda$null$3(Lcom/github/javaparser/TokenRange;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/github/javaparser/y0;

    invoke-direct {v0}, Lcom/github/javaparser/y0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$null$4(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    return-object p0
.end method

.method private static synthetic lambda$null$5(Lcom/github/javaparser/TokenRange;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/github/javaparser/s0;

    invoke-direct {v0}, Lcom/github/javaparser/s0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$6(Lcom/github/javaparser/Problem;Lcom/github/javaparser/Problem;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/u0;

    invoke-direct {v1}, Lcom/github/javaparser/u0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/v0;

    invoke-direct {v2}, Lcom/github/javaparser/v0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Position;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Position;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Position;->compareTo(Lcom/github/javaparser/Position;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getCause()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/TokenRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/Problem;->location:Lcom/github/javaparser/TokenRange;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/Problem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getVerboseMessage()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/Problem;->getLocation()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/x0;

    invoke-direct {v1, p0}, Lcom/github/javaparser/x0;-><init>(Lcom/github/javaparser/Problem;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/Problem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/Problem;->getVerboseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Problem stacktrace : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/github/javaparser/Problem;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
