.class public final Lcom/android/tools/r8/shaking/V4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/shaking/y;

.field public final c:Lcom/android/tools/r8/shaking/Y4;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/shaking/y;->a:Lcom/android/tools/r8/shaking/y;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/shaking/V4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/y;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/y;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/V4;->d:Ljava/util/Set;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/V4;->e:Ljava/util/Set;

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/V4;->f:Ljava/util/Set;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/V4;->g:Ljava/util/Set;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    iput-object p2, p0, Lcom/android/tools/r8/shaking/V4;->b:Lcom/android/tools/r8/shaking/y;

    .line 10
    iget-object p1, v0, Lcom/android/tools/r8/internal/nJ;->R1:Lcom/android/tools/r8/StringConsumer;

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Lcom/android/tools/r8/shaking/Y4;

    new-instance p2, Lcom/android/tools/r8/shaking/rb;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/shaking/rb;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    invoke-direct {p1, p2}, Lcom/android/tools/r8/shaking/Y4;-><init>(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcom/android/tools/r8/shaking/Y4;->e:Lcom/android/tools/r8/shaking/X4;

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/V4;->c:Lcom/android/tools/r8/shaking/Y4;

    return-void
.end method

.method public static a([Lcom/android/tools/r8/graph/g1;)Ljava/util/function/Predicate;
    .locals 4

    .line 110
    array-length v0, p0

    if-nez v0, :cond_0

    .line 111
    sget-object p0, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    return-object p0

    .line 112
    :cond_0
    array-length v0, p0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 113
    new-instance v0, Lcom/android/tools/r8/shaking/Bb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Bb;-><init>([Lcom/android/tools/r8/graph/g1;)V

    return-object v0

    .line 114
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 115
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 116
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_2
    new-instance p0, Lcom/android/tools/r8/shaking/Cb;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/shaking/Cb;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;Ljava/util/function/Function;)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/shaking/tb;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/shaking/tb;-><init>(Ljava/util/function/Function;Ljava/util/function/Predicate;)V

    .line 130
    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->R1:Lcom/android/tools/r8/StringConsumer;

    invoke-static {v0, p0, p1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 214
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 215
    iget-object p0, p0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 216
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/graph/P5;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/P5;->b:Lcom/android/tools/r8/graph/l1;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/p5;)Z
    .locals 1

    .line 131
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a([Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/P5;)Z
    .locals 1

    .line 118
    new-instance v0, Lcom/android/tools/r8/graph/md;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/md;-><init>()V

    .line 119
    iget-object p1, p1, Lcom/android/tools/r8/graph/P5;->b:Lcom/android/tools/r8/graph/l1;

    .line 120
    invoke-static {p0, v0, p1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;Ljava/util/function/Function;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;Ljava/util/function/Function;)V

    return-void

    .line 4
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/shaking/V4;->h:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->u1()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/p5;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/E0;

    if-eqz v2, :cond_8

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 12
    sget-boolean v4, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v4, :cond_7

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 13
    :cond_7
    :goto_2
    new-instance v4, Lcom/android/tools/r8/graph/o5;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/graph/o5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iput-object v4, v2, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/graph/p5;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/tools/r8/graph/p5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/M5;)Lcom/android/tools/r8/graph/O5;
    .locals 4

    .line 4
    const-string v0, "Pruning application"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3;->j()Lcom/android/tools/r8/graph/g3$a;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/V4;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g3$a;

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/shaking/V4;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->g1:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g3$a;->d()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 11
    sget-object v1, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->d()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/shaking/U4;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/U4;-><init>(Lcom/android/tools/r8/shaking/V4;)V

    .line 14
    invoke-static {v1, v2, p1, v3}, Lcom/android/tools/r8/internal/k40;->a(Ljava/util/Collection;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/j40;)V

    .line 15
    sget-boolean v1, Lcom/android/tools/r8/shaking/V4;->h:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u1;->e()V

    .line 16
    :cond_1
    iput-object v0, p3, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->f:Ljava/util/Set;

    .line 18
    iget-object v1, p3, Lcom/android/tools/r8/graph/M5;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v1, p3, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->d:Ljava/util/Set;

    .line 21
    iget-object v1, p3, Lcom/android/tools/r8/graph/M5;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->e:Ljava/util/Set;

    .line 23
    iget-object v1, p3, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->g:Ljava/util/Set;

    .line 25
    iget-object v1, p3, Lcom/android/tools/r8/graph/M5;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object p3

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 28
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p3
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 7

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 34
    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    .line 35
    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 36
    iget-boolean v5, v1, Lcom/android/tools/r8/internal/nJ;->g1:Z

    if-eqz v5, :cond_1

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/graph/H2;)V

    if-nez v4, :cond_0

    .line 39
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v4

    .line 40
    iput-object v4, v3, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    .line 41
    new-instance v4, Lcom/android/tools/r8/shaking/sb;

    invoke-direct {v4}, Lcom/android/tools/r8/shaking/sb;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_7

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v4, v0, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 44
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/t5;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-nez v4, :cond_3

    .line 45
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->a()Lcom/android/tools/r8/graph/g;

    .line 47
    :cond_2
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Q;->M()V

    .line 48
    :cond_3
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 49
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    .line 50
    invoke-virtual {p0, v6, v4}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/LinkedHashSet;)V

    goto :goto_1

    .line 51
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 52
    iget-object v5, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    .line 53
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v5

    .line 54
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v5

    .line 55
    iget-object v6, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 56
    iget-object v6, v3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v5, v6, v4, v3}, Lcom/android/tools/r8/shaking/V4;->a(ZLcom/android/tools/r8/graph/M2;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V

    .line 57
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 58
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v4

    iput-object v4, v3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    goto :goto_2

    .line 59
    :cond_6
    new-instance v5, Lcom/android/tools/r8/graph/O2;

    sget-object v6, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/tools/r8/graph/M2;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    iput-object v5, v3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    .line 60
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/graph/H2;)V

    goto/16 :goto_0

    .line 61
    :cond_7
    iget-object v4, p0, Lcom/android/tools/r8/shaking/V4;->f:Ljava/util/Set;

    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 63
    iget-object v4, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->M:Ljava/util/IdentityHashMap;

    .line 65
    invoke-virtual {v4, v5, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_8
    iget-object v4, p0, Lcom/android/tools/r8/shaking/V4;->c:Lcom/android/tools/r8/shaking/Y4;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/shaking/Y4;->a(Lcom/android/tools/r8/graph/H2;)V

    goto/16 :goto_0

    .line 67
    :cond_9
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V4;->c:Lcom/android/tools/r8/shaking/Y4;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/Y4;->a()V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->c:Lcom/android/tools/r8/shaking/Y4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Y4;->b(Lcom/android/tools/r8/graph/H2;)V

    .line 83
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v0

    .line 84
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/qK;->d(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;)[Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/N4;->a([Lcom/android/tools/r8/graph/j1;)V

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    .line 91
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 92
    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 93
    :cond_2
    invoke-static {v0}, Lcom/android/tools/r8/internal/qK;->d(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;)[Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/j1;)V

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/V4;->a(Ljava/util/List;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/g1;)V

    .line 99
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/V4;->a(Ljava/util/List;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 100
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->b([Lcom/android/tools/r8/graph/g1;)V

    .line 101
    :cond_5
    new-instance v1, Lcom/android/tools/r8/shaking/ub;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/ub;-><init>(Lcom/android/tools/r8/shaking/V4;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Predicate;)V

    .line 102
    new-instance v1, Lcom/android/tools/r8/shaking/vb;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/vb;-><init>(Lcom/android/tools/r8/shaking/V4;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Predicate;)V

    .line 103
    new-instance v1, Lcom/android/tools/r8/shaking/wb;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/wb;-><init>(Lcom/android/tools/r8/shaking/V4;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/shaking/xb;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/shaking/xb;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {p1, v1, v3}, Lcom/android/tools/r8/shaking/V4;->b(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Predicate;Ljava/util/function/Function;)V

    if-eqz v0, :cond_6

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->X0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 105
    invoke-static {v0}, Lcom/android/tools/r8/shaking/V4;->a([Lcom/android/tools/r8/graph/g1;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/X60;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->h(Ljava/util/function/Predicate;)V

    .line 107
    :cond_6
    new-instance v0, Lcom/android/tools/r8/shaking/yb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/yb;-><init>(Lcom/android/tools/r8/shaking/V4;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Predicate;)V

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->c:Lcom/android/tools/r8/shaking/Y4;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/Y4;->b()V

    .line 109
    sget-boolean v0, Lcom/android/tools/r8/shaking/V4;->h:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/V4;->b(Lcom/android/tools/r8/graph/H2;)V

    :cond_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/LinkedHashSet;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 125
    sget-boolean v0, Lcom/android/tools/r8/shaking/V4;->h:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 126
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 127
    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 128
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/LinkedHashSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final a(ZLcom/android/tools/r8/graph/M2;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 69
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 70
    :cond_1
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_4

    .line 71
    iget-object v2, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget-object v3, p4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_3

    move-object v2, p4

    goto :goto_1

    :cond_3
    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 73
    :goto_1
    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v3, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    .line 75
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v3

    .line 76
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 78
    :cond_4
    invoke-interface {p3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 79
    :cond_5
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_8

    .line 80
    sget-boolean v0, Lcom/android/tools/r8/shaking/V4;->h:Z

    if-nez v0, :cond_7

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_7
    :goto_2
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/V4;->a(ZLcom/android/tools/r8/graph/M2;Ljava/util/LinkedHashSet;Lcom/android/tools/r8/graph/H2;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A5;)Z
    .locals 1

    .line 152
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e4;)Z
    .locals 3

    .line 139
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 141
    iget-object v1, v1, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 142
    iget-object v1, v1, Lcom/android/tools/r8/shaking/u2;->a:Ljava/util/Set;

    .line 143
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/e4;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 148
    iget-object v0, v0, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    .line 149
    iget-object v0, v0, Lcom/android/tools/r8/shaking/u2;->a:Ljava/util/Set;

    .line 150
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/i3;)Z
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 134
    iget-object v1, p1, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 137
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 138
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/g1;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->b:Lcom/android/tools/r8/shaking/y;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/y;->a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/g1;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/List;)[Lcom/android/tools/r8/graph/g1;
    .locals 5

    .line 217
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 218
    new-instance v1, Lcom/android/tools/r8/shaking/Ab;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/shaking/Ab;-><init>(Lcom/android/tools/r8/shaking/V4;Lcom/android/tools/r8/shaking/i;)V

    const/4 v0, 0x0

    move v2, v0

    .line 219
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 220
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/h1;

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-ne v2, v4, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 222
    iget-object v4, p0, Lcom/android/tools/r8/shaking/V4;->c:Lcom/android/tools/r8/shaking/Y4;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/shaking/Y4;->b(Lcom/android/tools/r8/graph/g1;)V

    .line 223
    iget-object v4, p0, Lcom/android/tools/r8/shaking/V4;->d:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v0, v2, :cond_3

    .line 225
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 226
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 227
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 228
    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 230
    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/shaking/V4;->c:Lcom/android/tools/r8/shaking/Y4;

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/shaking/Y4;->b(Lcom/android/tools/r8/graph/g1;)V

    .line 231
    iget-object v4, p0, Lcom/android/tools/r8/shaking/V4;->d:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 232
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 233
    sget-object p1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    return-object p1

    .line 234
    :cond_6
    sget-object p1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/g1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;)[Lcom/android/tools/r8/graph/j1;
    .locals 11

    .line 154
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 155
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 156
    new-instance v2, Lcom/android/tools/r8/shaking/zb;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/zb;-><init>(Lcom/android/tools/r8/shaking/i;)V

    const/4 v3, 0x0

    move v4, v3

    .line 157
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_1

    .line 158
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/h1;

    invoke-interface {v2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_1
    if-ne v4, v6, :cond_4

    .line 159
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 160
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    .line 163
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    sget-object v2, Lcom/android/tools/r8/graph/l0;->e:Lcom/android/tools/r8/graph/l0;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 166
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    .line 167
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 168
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 169
    iget-object v7, v0, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 170
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 171
    invoke-virtual {v5, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    .line 172
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 173
    iget-object v7, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    .line 174
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 175
    sget-object v8, Lcom/android/tools/r8/graph/l0;->e:Lcom/android/tools/r8/graph/l0;

    invoke-virtual {v6, v8, v7}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 176
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 177
    :cond_6
    iget-boolean v6, v1, Lcom/android/tools/r8/internal/nJ;->g1:Z

    if-eqz v6, :cond_d

    .line 178
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->v1()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v6

    if-nez v6, :cond_7

    .line 179
    sget v6, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v6, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 180
    iput-object v6, v5, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 181
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 182
    :cond_7
    iget-object v6, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    .line 183
    sget-boolean v7, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v7, :cond_9

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/nJ$p;->b()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/nJ$p;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 184
    :cond_9
    :goto_4
    new-instance v7, Lcom/android/tools/r8/graph/j1$a;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/android/tools/r8/graph/j1$a;-><init>(Lcom/android/tools/r8/graph/j1;Z)V

    .line 185
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ$p;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 186
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;

    move-result-object v8

    goto :goto_5

    .line 187
    :cond_a
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/WS;

    move-result-object v8

    .line 188
    :goto_5
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v7

    .line 189
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_b

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v8

    if-nez v8, :cond_b

    move v8, v9

    goto :goto_6

    :cond_b
    move v8, v3

    .line 190
    :goto_6
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v10

    if-eqz v8, :cond_c

    .line 191
    invoke-virtual {v7, v10}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v7

    goto :goto_7

    .line 192
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    :goto_7
    iget-object v6, v6, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 194
    iput-object v6, v7, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 195
    sget v6, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v6, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 196
    iput-object v6, v7, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 197
    iput-boolean v9, v5, Lcom/android/tools/r8/graph/j1;->t:Z

    .line 198
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v6

    .line 199
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_8
    iget-object v6, p0, Lcom/android/tools/r8/shaking/V4;->g:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 201
    :cond_d
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 202
    iget-object v7, v0, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 203
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->v1()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v6

    if-nez v6, :cond_e

    .line 204
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 205
    :cond_e
    new-instance v6, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v6, p1, v5}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    iget-object v7, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/H5;->c(Lcom/android/tools/r8/graph/y;)V

    .line 206
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 207
    sget-object v6, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    iput-object v6, v5, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 208
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 209
    :cond_f
    iget-object v6, p0, Lcom/android/tools/r8/shaking/V4;->c:Lcom/android/tools/r8/shaking/Y4;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/shaking/Y4;->b(Lcom/android/tools/r8/graph/j1;)V

    .line 210
    iget-object v6, p0, Lcom/android/tools/r8/shaking/V4;->e:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 211
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 212
    sget-object p1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    return-object p1

    .line 213
    :cond_11
    sget-object p1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 17
    sget-boolean v1, Lcom/android/tools/r8/shaking/V4;->h:Z

    if-nez v1, :cond_0

    .line 18
    iget-object v1, v0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 20
    iget-object v2, v1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected field `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "` to be absent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method
