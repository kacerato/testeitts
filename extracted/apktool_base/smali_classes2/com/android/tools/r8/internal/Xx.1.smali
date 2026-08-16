.class public abstract Lcom/android/tools/r8/internal/Xx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/internal/U6;Ljava/util/function/Predicate;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->a(Z)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/U6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/L21;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/L21;-><init>(Lcom/android/tools/r8/internal/U6;Ljava/util/function/Predicate;)V

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->d()Z

    move-result p0

    return p0
.end method
