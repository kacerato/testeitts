.class public final Lcom/android/tools/r8/internal/P60;
.super Lcom/android/tools/r8/internal/gX;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public c:Lcom/android/tools/r8/internal/E8;

.field public final d:Lcom/android/tools/r8/internal/fX;

.field public final e:Lcom/android/tools/r8/internal/m80;

.field public final f:Lcom/android/tools/r8/internal/m80;

.field public final g:Lcom/android/tools/r8/internal/Ef;

.field public final h:Ljava/util/ArrayDeque;

.field public final i:Lcom/android/tools/r8/internal/h80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x8;Lcom/android/tools/r8/internal/fX;Lcom/android/tools/r8/internal/m80;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gX;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/P60;->f:Lcom/android/tools/r8/internal/m80;

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/P60;->i:Lcom/android/tools/r8/internal/h80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/P60;->d:Lcom/android/tools/r8/internal/fX;

    iput-object p4, p0, Lcom/android/tools/r8/internal/P60;->e:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/P60;->g:Lcom/android/tools/r8/internal/Ef;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    iget-boolean p4, p3, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_2

    new-instance p3, Lcom/android/tools/r8/internal/C8;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/tools/r8/internal/C8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x8;Lcom/android/tools/r8/internal/gX;)V

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/android/tools/r8/internal/D8;->a:Lcom/android/tools/r8/internal/D8;

    :goto_1
    iput-object p3, p0, Lcom/android/tools/r8/internal/P60;->c:Lcom/android/tools/r8/internal/E8;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/P60;->a(Lcom/android/tools/r8/internal/x8;)Ljava/util/ArrayDeque;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/P60;->h:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/D00;Ljava/util/function/Consumer;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/LQ0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/LQ0;-><init>(Ljava/util/function/Consumer;)V

    .line 4
    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/D00;)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/P60;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/u70;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ns0;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->g:Lcom/android/tools/r8/internal/Ef;

    .line 64
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object v0

    .line 65
    invoke-interface {p1, p2, v0}, Lcom/android/tools/r8/internal/u70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/x8;)Ljava/util/ArrayDeque;
    .locals 2

    .line 14
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/y8;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/PQ0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/PQ0;-><init>(Lcom/android/tools/r8/internal/P60;)V

    .line 17
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/x8;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/m80;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/D00;)V
    .locals 4

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/D00;->e:Ljava/util/TreeSet;

    .line 6
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->i:Lcom/android/tools/r8/internal/h80;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/MQ0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/MQ0;-><init>(Lcom/android/tools/r8/internal/D00;)V

    .line 9
    invoke-static {v2}, Lcom/android/tools/r8/internal/m80;->a(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v2, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 12
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/u70;Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 20
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {p5}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v0

    const-string v1, "secondary-processor"

    invoke-virtual {p6, v0, v1}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object p6

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 24
    sget-boolean v1, Lcom/android/tools/r8/internal/P60;->j:Z

    if-nez v1, :cond_1

    .line 25
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    new-instance v2, Lcom/android/tools/r8/internal/NQ0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/NQ0;-><init>(Lcom/android/tools/r8/internal/P60;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Vn;->removeIf(Ljava/util/function/Predicate;)Z

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 30
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 31
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->b:Lcom/android/tools/r8/internal/j80;

    .line 33
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 34
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 35
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/android/tools/r8/internal/P60;->j:Z

    if-nez v0, :cond_5

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/l40;->b()V

    .line 37
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    new-instance v1, Lcom/android/tools/r8/internal/OQ0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/OQ0;-><init>(Lcom/android/tools/r8/internal/P60;Lcom/android/tools/r8/internal/u70;)V

    .line 40
    invoke-static {v0, v1, p4, p5}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    invoke-virtual {p6, v0}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p2, v0, p5}, Lcom/android/tools/r8/internal/y70;->a(Lcom/android/tools/r8/internal/m80;Ljava/util/concurrent/ExecutorService;)V

    .line 43
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/l40;->c()V

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->f:Lcom/android/tools/r8/internal/m80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 45
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 46
    iget-object v1, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gX;->g()V

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 49
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    .line 51
    :cond_6
    sget-boolean p1, Lcom/android/tools/r8/internal/P60;->j:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/internal/P60;->h:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/P60;->i:Lcom/android/tools/r8/internal/h80;

    .line 53
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 55
    iget-object p1, p0, Lcom/android/tools/r8/internal/P60;->e:Lcom/android/tools/r8/internal/m80;

    .line 56
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 57
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 58
    iget-object p1, p0, Lcom/android/tools/r8/internal/P60;->f:Lcom/android/tools/r8/internal/m80;

    .line 59
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 60
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 61
    sget-object p1, Lcom/android/tools/r8/internal/D8;->a:Lcom/android/tools/r8/internal/D8;

    iput-object p1, p0, Lcom/android/tools/r8/internal/P60;->c:Lcom/android/tools/r8/internal/E8;

    .line 62
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/ls0;->a()V

    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/E8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->c:Lcom/android/tools/r8/internal/E8;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/P60;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->f:Lcom/android/tools/r8/internal/m80;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final d()Lcom/android/tools/r8/internal/fX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->d:Lcom/android/tools/r8/internal/fX;

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->e:Lcom/android/tools/r8/internal/m80;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final e(Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    sget-boolean v0, Lcom/android/tools/r8/internal/P60;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/P60;->e:Lcom/android/tools/r8/internal/m80;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/P60;->i:Lcom/android/tools/r8/internal/h80;

    sget-object v2, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    sget-object v3, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, v3, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v2, p1

    :cond_2
    check-cast v2, Lcom/android/tools/r8/internal/m80;

    iget-object p1, v2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/gX;->a:Lcom/android/tools/r8/internal/m80;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/P60;->e:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
