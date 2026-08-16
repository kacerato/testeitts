.class public abstract Lcom/android/tools/r8/internal/Bj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/nA;Lcom/android/tools/r8/internal/Lq0;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/WA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/WA0;-><init>()V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/tA;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/tA;-><init>(Lcom/android/tools/r8/internal/nA;Lcom/android/tools/r8/internal/Ff0;)V

    invoke-interface {p2, p0, v1}, Lcom/android/tools/r8/internal/Lq0;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method
