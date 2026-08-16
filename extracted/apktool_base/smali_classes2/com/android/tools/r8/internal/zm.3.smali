.class public abstract Lcom/android/tools/r8/internal/zm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
.end method

.method public abstract a(Ljava/util/function/Consumer;)V
.end method

.method public abstract a()Z
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/mF1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mF1;-><init>(Lcom/android/tools/r8/internal/zm;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zm;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
.end method

.method public abstract c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
.end method
