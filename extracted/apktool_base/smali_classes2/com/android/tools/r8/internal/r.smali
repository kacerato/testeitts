.class public interface abstract Lcom/android/tools/r8/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZC;


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/internal/Q5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
.end method

.method public a(Lcom/android/tools/r8/internal/Q5;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/q;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/mr1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/mr1;-><init>(Lcom/android/tools/r8/internal/Q5;)V

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/android/tools/r8/internal/r;
    .locals 0

    return-object p0
.end method

.method public j()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Yf;

    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
