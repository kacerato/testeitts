.class public abstract Lcom/android/tools/r8/internal/l10;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/l10;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/li1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/li1;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    .line 2
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/R00;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/R00;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p3, :cond_0

    .line 3
    instance-of p3, v0, Lcom/android/tools/r8/internal/u3;

    if-eqz p3, :cond_0

    .line 4
    new-instance p3, Lcom/android/tools/r8/internal/k10;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p0

    invoke-direct {p3, p0, p1, p2}, Lcom/android/tools/r8/internal/k10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/R00;)V

    return-object p3

    .line 5
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/j10;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/j10;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;)Z
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/u3;

    if-nez v0, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/NW;)V
.end method
