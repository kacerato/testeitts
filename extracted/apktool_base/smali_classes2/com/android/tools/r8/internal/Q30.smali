.class public abstract Lcom/android/tools/r8/internal/Q30;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/android/tools/r8/internal/Q30;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Wt;->a:Lcom/android/tools/r8/internal/Wt;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Q30;
.end method

.method public a()Lcom/android/tools/r8/internal/Zu;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Ljava/util/function/BiConsumer;)V
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Predicate;)Z
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Q30;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-interface {p4, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public d()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Zu;

    return v0
.end method

.method public abstract e()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method
