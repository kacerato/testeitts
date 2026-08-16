.class public abstract Lcom/android/tools/r8/ir/optimize/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2, p0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-interface {p2, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    return v1
.end method
