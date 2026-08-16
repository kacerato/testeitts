.class public final Lcom/android/tools/r8/internal/bm0;
.super Lcom/android/tools/r8/internal/Xl0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Xl0;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/bm0;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/Q41;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Q41;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/U51;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/U51;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/S41;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/S41;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/bm0;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;
    .locals 0

    .line 16
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    instance-of p1, p0, Lcom/android/tools/r8/internal/nZ;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Xl0;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/bm0;->b:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/V51;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/V51;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 7
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 8
    invoke-static {p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Xl0;

    return-object p1

    .line 9
    :cond_2
    new-instance p2, Lcom/android/tools/r8/internal/W51;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/W51;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 11
    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    .line 12
    sget-object p1, Lcom/android/tools/r8/internal/l2;->b:Lcom/android/tools/r8/internal/l2;

    return-object p1

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x3

    if-gt p2, p3, :cond_4

    .line 14
    new-instance p2, Lcom/android/tools/r8/internal/bm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/bm0;-><init>(Ljava/util/List;)V

    return-object p2

    .line 15
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bm0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Xl0;

    .line 2
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/bm0;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v1, p1, Lcom/android/tools/r8/internal/l2;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v1, p1, Lcom/android/tools/r8/internal/nZ;

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    instance-of v1, p1, Lcom/android/tools/r8/internal/bm0;

    const/4 v2, 0x3

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Xl0;->b()Lcom/android/tools/r8/internal/bm0;

    move-result-object p1

    .line 11
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 13
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/bm0;->b:Ljava/util/List;

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/bm0;->b:Ljava/util/List;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_4

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/bm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/bm0;-><init>(Ljava/util/List;)V

    return-object v0

    .line 20
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    :cond_5
    if-nez v0, :cond_7

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Xl0;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 22
    instance-of v0, p1, Lcom/android/tools/r8/internal/am0;

    if-eqz v0, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_7
    :goto_2
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 26
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/bm0;->b:Ljava/util/List;

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_8

    .line 32
    new-instance v0, Lcom/android/tools/r8/internal/bm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/bm0;-><init>(Ljava/util/List;)V

    return-object v0

    .line 33
    :cond_8
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/bm0;
    .locals 0

    .line 1
    return-object p0
.end method
