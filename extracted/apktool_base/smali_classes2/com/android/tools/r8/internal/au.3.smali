.class public abstract Lcom/android/tools/r8/internal/au;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/VJ;ILcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/h51;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/h51;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 4
    invoke-interface {p3, p2, p4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    .line 6
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, p0, Lcom/android/tools/r8/internal/oZ;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
