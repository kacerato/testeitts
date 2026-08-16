.class public abstract Lcom/android/tools/r8/internal/sj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/Kq0;)I
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/ct1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ct1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/dt1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dt1;-><init>()V

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/uf;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/uf;-><init>(Lcom/android/tools/r8/internal/Ff0;Lcom/android/tools/r8/internal/Ff0;)V

    .line 5
    invoke-interface {p2, p0, p1, v2}, Lcom/android/tools/r8/internal/Kq0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    return-object p0
.end method
