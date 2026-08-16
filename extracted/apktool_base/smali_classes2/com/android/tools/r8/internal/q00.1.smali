.class public final Lcom/android/tools/r8/internal/q00;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/h1;)Z
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->c0()Lcom/android/tools/r8/kotlin/Q;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/kotlin/Q;->c()Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/q00;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/sq1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/sq1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/q00;->b:Z

    if-nez v0, :cond_2

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/graph/H2;->x:Lcom/android/tools/r8/kotlin/p;

    .line 3
    invoke-interface {v1}, Lcom/android/tools/r8/kotlin/p;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/q00;->b(Lcom/android/tools/r8/graph/H2;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoKotlinMetadata"

    return-object v0
.end method
