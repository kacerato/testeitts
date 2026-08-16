.class public Lcom/android/tools/r8/internal/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/function/BiConsumer;
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/P51;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/P51;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)Ljava/util/function/BiConsumer;
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/R51;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/R51;-><init>(Ljava/util/function/Consumer;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method public static a(Ljava/util/function/Consumer;Ljava/util/Set;)Ljava/util/function/Consumer;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/N51;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/N51;-><init>(Ljava/util/Set;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static b()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Q51;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Q51;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c()Lcom/android/tools/r8/internal/Wr0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/tools/r8/internal/Wr0<",
            "TT;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/O51;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/O51;-><init>()V

    return-object v0
.end method
