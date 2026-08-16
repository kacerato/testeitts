.class public final Lcom/android/tools/r8/internal/TV;
.super Lcom/android/tools/r8/internal/Hj;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:Ljava/util/AbstractMap;

.field public final g:Ljava/util/AbstractMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Hj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/TV;->f:Ljava/util/AbstractMap;

    iput-object p4, p0, Lcom/android/tools/r8/internal/TV;->g:Ljava/util/AbstractMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/SV;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p5

    .line 27
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 28
    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 29
    invoke-virtual {p5, p0, p2}, Lcom/android/tools/r8/graph/l1;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    .line 30
    invoke-virtual {p0, p5}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 31
    sget-boolean p1, Lcom/android/tools/r8/internal/SV;->e:Z

    if-nez p1, :cond_1

    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {p0, p5}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 35
    :cond_1
    :goto_0
    iget-object p1, p3, Lcom/android/tools/r8/internal/SV;->c:Ljava/util/AbstractMap;

    .line 36
    invoke-interface {p1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static a(Ljava/util/Deque;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/SV;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 37
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/R00;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    instance-of v1, v0, Lcom/android/tools/r8/internal/cx0;

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->e()Lcom/android/tools/r8/internal/cx0;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p6}, Lcom/android/tools/r8/internal/cx0;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p6

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, p6}, Lcom/android/tools/r8/internal/R00;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p6

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 44
    invoke-virtual {p1, p2, p0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 45
    invoke-virtual {p6, p0, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    .line 46
    invoke-virtual {p0, p6}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 47
    sget-boolean p1, Lcom/android/tools/r8/internal/SV;->e:Z

    if-nez p1, :cond_3

    .line 48
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-virtual {p0, p6}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 51
    :cond_3
    :goto_1
    iget-object p1, p4, Lcom/android/tools/r8/internal/SV;->d:Ljava/util/AbstractMap;

    .line 52
    invoke-interface {p1, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    .line 1
    sget-boolean p2, Lcom/android/tools/r8/internal/TV;->h:Z

    if-nez p2, :cond_1

    .line 2
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    sget-object p3, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 5
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 6
    move-object v1, p3

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 7
    iget-object p3, p0, Lcom/android/tools/r8/internal/TV;->g:Ljava/util/AbstractMap;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    if-nez p2, :cond_3

    .line 8
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    move-object v2, v1

    :goto_2
    if-eqz p3, :cond_4

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/TV;->g:Ljava/util/AbstractMap;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    move-object v2, p3

    move-object p3, p2

    goto :goto_2

    .line 11
    :cond_4
    iget-object v5, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 12
    iget-object v4, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 13
    iget-object v3, p1, Lcom/android/tools/r8/internal/NW;->c:Lcom/android/tools/r8/internal/t40;

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/NW;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/TV;
    .locals 7

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    .line 17
    new-instance v6, Lcom/android/tools/r8/internal/SV;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v6, p1, p4, v0, v1}, Lcom/android/tools/r8/internal/SV;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/TV;->f:Ljava/util/AbstractMap;

    new-instance p4, Lcom/android/tools/r8/internal/pX0;

    invoke-direct {p4, p2, p3, v4, v6}, Lcom/android/tools/r8/internal/pX0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/SV;)V

    invoke-interface {p1, p4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 19
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    move-object p1, p2

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object p1

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/TV;->g:Ljava/util/AbstractMap;

    new-instance p4, Lcom/android/tools/r8/internal/qX0;

    move-object v0, p4

    move-object v2, p2

    move-object v3, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/qX0;-><init>(Ljava/util/Deque;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/SV;)V

    invoke-interface {p1, p4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 25
    new-instance p1, Lcom/android/tools/r8/internal/TV;

    iget-object p2, v6, Lcom/android/tools/r8/internal/SV;->c:Ljava/util/AbstractMap;

    iget-object p3, v6, Lcom/android/tools/r8/internal/SV;->d:Ljava/util/AbstractMap;

    iget-object p4, v6, Lcom/android/tools/r8/internal/SV;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v6, Lcom/android/tools/r8/internal/SV;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-direct {p1, p4, v0, p2, p3}, Lcom/android/tools/r8/internal/TV;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/TV;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iw;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object v0, p0, Lcom/android/tools/r8/internal/TV;->f:Ljava/util/AbstractMap;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    new-instance v1, Lcom/android/tools/r8/internal/iw;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/android/tools/r8/internal/iw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-object v1
.end method

.method public final c()Lcom/android/tools/r8/internal/TV;
    .locals 0

    return-object p0
.end method
