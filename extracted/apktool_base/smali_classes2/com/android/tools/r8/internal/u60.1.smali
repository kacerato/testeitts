.class public abstract Lcom/android/tools/r8/internal/u60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eC;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/qr0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/qr0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance p0, Lcom/android/tools/r8/internal/cl0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cl0;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/yu1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yu1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/zu1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zu1;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Au1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Au1;-><init>()V

    .line 5
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;Ljava/util/function/Predicate;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/s60;

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/internal/u60;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s60;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/s60;)Z
    .locals 0

    .line 8
    instance-of p0, p0, Lcom/android/tools/r8/internal/h40;

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eC;)V
    .locals 11

    new-instance v0, Lcom/android/tools/r8/internal/y00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/y00;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/IZ;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IZ;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/ZZ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/tools/r8/internal/ZZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/L4;)V

    new-instance v3, Lcom/android/tools/r8/internal/c00;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/c00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v4, Lcom/android/tools/r8/internal/k00;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/k00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v5, Lcom/android/tools/r8/internal/i00;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/i00;-><init>()V

    new-instance v6, Lcom/android/tools/r8/internal/j00;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/j00;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/q00;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/q00;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/u00;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/u00;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/A00;

    invoke-direct {v9, p0}, Lcom/android/tools/r8/internal/A00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v10, Lcom/android/tools/r8/internal/x00;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/x00;-><init>()V

    sget p0, Lcom/android/tools/r8/internal/hC;->c:I

    const/16 p0, 0xb

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/wu1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wu1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/xu1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xu1;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eC;)V
    .locals 9

    new-instance v0, Lcom/android/tools/r8/internal/y00;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/y00;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/IZ;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IZ;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/ZZ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/tools/r8/internal/ZZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/L4;)V

    new-instance v3, Lcom/android/tools/r8/internal/k00;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/k00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v4, Lcom/android/tools/r8/internal/i00;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/i00;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/j00;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/j00;-><init>()V

    new-instance v6, Lcom/android/tools/r8/internal/q00;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/q00;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/u00;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/u00;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/x00;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/x00;-><init>()V

    sget p0, Lcom/android/tools/r8/internal/hC;->c:I

    const/16 p0, 0x9

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/wu1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wu1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/xu1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/xu1;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
