.class public abstract Lcom/android/tools/r8/graph/v2;
.super Lcom/android/tools/r8/graph/J2;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/n5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/android/tools/r8/graph/h1<",
        "TD;TR;>;R:",
        "Lcom/android/tools/r8/graph/v2<",
        "TD;TR;>;>",
        "Lcom/android/tools/r8/graph/J2;",
        "Lcom/android/tools/r8/graph/n5;"
    }
.end annotation


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/M2;

.field public final g:Lcom/android/tools/r8/graph/L2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/J2;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/v2;->h:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final S()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/G0;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/v2;
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->u0()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Pg;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Pg;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
.end method

.method public final a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/u1;)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/graph/v2;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract b(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/h1;
.end method

.method public b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final m0()Lcom/android/tools/r8/graph/v2;
    .locals 0

    return-object p0
.end method

.method public final q0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s0()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public t0()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public abstract u0()Ljava/lang/Iterable;
.end method
