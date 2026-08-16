.class public Lcom/android/tools/r8/internal/Ne0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Ljava/util/TreeSet;

.field public final b:Lcom/android/tools/r8/internal/hF;

.field public final c:Lcom/android/tools/r8/internal/EE;

.field public final d:Lcom/android/tools/r8/internal/B60;

.field public final e:I

.field public f:I

.field public final g:I

.field public final h:Lcom/android/tools/r8/internal/lI;

.field public final i:Lcom/android/tools/r8/internal/lI;

.field public final j:Lcom/android/tools/r8/internal/dI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/EE;I)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/Ne0;-><init>(Lcom/android/tools/r8/internal/EE;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/EE;II)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Ne0;-><init>(Lcom/android/tools/r8/internal/EE;IILcom/android/tools/r8/internal/B60;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/EE;IILcom/android/tools/r8/internal/B60;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/hF;

    const/16 v1, 0x10

    .line 4
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/hF;-><init>(I)V

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/lI;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/lI;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ne0;->h:Lcom/android/tools/r8/internal/lI;

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/lI;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/lI;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/dI;

    .line 9
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 10
    iput-object v2, p0, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ne0;->c:Lcom/android/tools/r8/internal/EE;

    .line 12
    iput p2, p0, Lcom/android/tools/r8/internal/Ne0;->e:I

    .line 13
    iput p2, p0, Lcom/android/tools/r8/internal/Ne0;->f:I

    .line 14
    iput p3, p0, Lcom/android/tools/r8/internal/Ne0;->g:I

    .line 15
    iput-object p4, p0, Lcom/android/tools/r8/internal/Ne0;->d:Lcom/android/tools/r8/internal/B60;

    const/high16 p1, -0x80000000

    .line 16
    iput p1, v0, Lcom/android/tools/r8/internal/K;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/Ne0;->f:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ne0;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/util/TreeSet;)Lcom/android/tools/r8/internal/Ke0;
    .locals 3

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/SN0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/SN0;-><init>(Lcom/android/tools/r8/internal/Ne0;)V

    .line 15
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/TN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/TN0;-><init>()V

    .line 17
    new-instance v2, Lcom/android/tools/r8/internal/Y60;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Y60;-><init>(Lcom/android/tools/r8/internal/V60;)V

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ke0;

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/Ke0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ke0;

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/U30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public a(Lcom/android/tools/r8/internal/Ke0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/Ke0;->d:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {v1, v0, v0}, Lcom/android/tools/r8/internal/hF;->b(II)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    iget p1, p1, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-virtual {v0, p1, p1}, Lcom/android/tools/r8/internal/hF;->b(II)I

    return-void
.end method

.method public final a(Ljava/util/ArrayDeque;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/tools/r8/internal/UN0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/UN0;-><init>(Lcom/android/tools/r8/internal/Ne0;Ljava/util/Deque;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final a(Ljava/util/ArrayDeque;Ljava/util/TreeSet;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/VN0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/VN0;-><init>(Lcom/android/tools/r8/internal/Ne0;Ljava/util/TreeSet;Ljava/util/Deque;)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final synthetic a(Ljava/util/Deque;Lcom/android/tools/r8/internal/Ke0;)Z
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {p2, p0, v0, v1}, Lcom/android/tools/r8/internal/Ke0;->a(Lcom/android/tools/r8/internal/Ne0;Ljava/util/TreeSet;Lcom/android/tools/r8/internal/hF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic a(Ljava/util/TreeSet;Ljava/util/Deque;Lcom/android/tools/r8/internal/Ke0;)Z
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {p3, p0, v0, v1}, Lcom/android/tools/r8/internal/Ke0;->a(Lcom/android/tools/r8/internal/Ne0;Ljava/util/TreeSet;Lcom/android/tools/r8/internal/hF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/U30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {p1, p3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dI;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lI;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ke0;

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/WN0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/WN0;-><init>(Lcom/android/tools/r8/internal/qI;)V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Ke0;->a(Ljava/util/function/IntConsumer;)V

    goto :goto_2

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ke0;

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/XN0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/XN0;-><init>(Lcom/android/tools/r8/internal/qI;)V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Ke0;->b(Ljava/util/function/IntConsumer;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final b(Ljava/util/ArrayDeque;Ljava/util/TreeSet;)V
    .locals 12

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1b

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ke0;

    .line 11
    sget-boolean v2, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/tools/r8/internal/Ke0;->a(Lcom/android/tools/r8/internal/Ne0;Ljava/util/TreeSet;Lcom/android/tools/r8/internal/hF;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Ke0;->b(Lcom/android/tools/r8/internal/Ne0;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_5
    :goto_3
    iget-object v3, v0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    if-eqz v3, :cond_a

    .line 15
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 18
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 19
    iget v3, v3, Lcom/android/tools/r8/internal/FT;->k:I

    .line 20
    new-instance v4, Lcom/android/tools/r8/internal/ix;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    iget v6, v0, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-direct {v4, v6, v5}, Lcom/android/tools/r8/internal/ix;-><init>(ILcom/android/tools/r8/internal/pu0;)V

    .line 21
    new-instance v5, Lcom/android/tools/r8/internal/ix;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-direct {v5, v3, v2}, Lcom/android/tools/r8/internal/ix;-><init>(ILcom/android/tools/r8/internal/pu0;)V

    .line 22
    new-instance v2, Lcom/android/tools/r8/internal/aY;

    invoke-direct {v2, v4, v5}, Lcom/android/tools/r8/internal/aY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    goto/16 :goto_a

    :cond_6
    if-nez v2, :cond_8

    .line 23
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e2()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_8
    :goto_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->a1()Lcom/android/tools/r8/internal/lh;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 26
    new-instance v3, Lcom/android/tools/r8/internal/ix;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Ke0;->e:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    iget v5, v0, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-direct {v3, v5, v4}, Lcom/android/tools/r8/internal/ix;-><init>(ILcom/android/tools/r8/internal/pu0;)V

    .line 27
    new-instance v4, Lcom/android/tools/r8/internal/qh;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v5

    invoke-direct {v4, v3, v5, v6}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    move-object v2, v4

    goto/16 :goto_a

    .line 28
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected definition"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_a
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    iget v4, v0, Lcom/android/tools/r8/internal/Ke0;->d:I

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v3

    .line 30
    new-instance v4, Lcom/android/tools/r8/internal/ix;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    iget v6, v0, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-direct {v4, v6, v5}, Lcom/android/tools/r8/internal/ix;-><init>(ILcom/android/tools/r8/internal/pu0;)V

    .line 31
    new-instance v5, Lcom/android/tools/r8/internal/ix;

    iget-object v6, v0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-direct {v5, v3, v6}, Lcom/android/tools/r8/internal/ix;-><init>(ILcom/android/tools/r8/internal/pu0;)V

    .line 32
    new-instance v6, Lcom/android/tools/r8/internal/aY;

    invoke-direct {v6, v4, v5}, Lcom/android/tools/r8/internal/aY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 33
    iget-object v4, v0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v4

    .line 34
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/dI;->remove(I)Z

    move-result v5

    if-eqz v4, :cond_e

    if-eqz v5, :cond_c

    .line 35
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/dI;->remove(I)Z

    move-result v7

    if-nez v2, :cond_e

    if-eqz v7, :cond_b

    goto :goto_5

    .line 36
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    if-nez v2, :cond_e

    .line 37
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/dI;->h(I)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_5
    if-eqz v5, :cond_12

    .line 38
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    move-result v5

    if-nez v2, :cond_10

    if-eqz v5, :cond_f

    goto :goto_6

    .line 39
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_6
    if-eqz v4, :cond_17

    .line 40
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    move-result v3

    if-nez v2, :cond_17

    if-eqz v3, :cond_11

    goto :goto_9

    .line 41
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_12
    iget v5, p0, Lcom/android/tools/r8/internal/Ne0;->e:I

    if-lt v3, v5, :cond_17

    if-nez v2, :cond_14

    if-lt v3, v5, :cond_13

    goto :goto_7

    .line 43
    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_14
    :goto_7
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ne0;->h:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    if-eqz v4, :cond_17

    if-nez v2, :cond_16

    add-int/lit8 v2, v3, 0x1

    .line 45
    iget v4, p0, Lcom/android/tools/r8/internal/Ne0;->e:I

    if-lt v2, v4, :cond_15

    goto :goto_8

    .line 46
    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 47
    :cond_16
    :goto_8
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ne0;->h:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/lI;->add(I)Z

    :cond_17
    :goto_9
    move-object v2, v6

    .line 48
    :goto_a
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ne0;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 49
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ne0;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v3, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 50
    iget v2, v0, Lcom/android/tools/r8/internal/Ke0;->d:I

    if-eq v2, v1, :cond_18

    .line 51
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    iget v4, v0, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-virtual {v3, v2, v4}, Lcom/android/tools/r8/internal/hF;->b(II)I

    .line 52
    :cond_18
    iget v2, v0, Lcom/android/tools/r8/internal/Ke0;->c:I

    .line 53
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    .line 54
    invoke-static {}, Lcom/android/tools/r8/internal/MH;->a()Ljava/util/function/IntConsumer;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 56
    invoke-interface {v3, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_19
    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-interface {v3, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    goto/16 :goto_2

    .line 59
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ne0;->a(Ljava/util/ArrayDeque;Ljava/util/TreeSet;)V

    goto/16 :goto_1

    .line 60
    :cond_1b
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ne0;->a(Ljava/util/TreeSet;)Lcom/android/tools/r8/internal/Ke0;

    move-result-object v0

    .line 62
    iget v2, v0, Lcom/android/tools/r8/internal/Ke0;->c:I

    iget-object v3, v0, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-boolean v5, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v5, :cond_1d

    if-eq v2, v1, :cond_1c

    goto :goto_b

    :cond_1c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_1d
    :goto_b
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Ke0;

    .line 66
    iget v7, v6, Lcom/android/tools/r8/internal/Ke0;->d:I

    if-ne v7, v1, :cond_1f

    goto :goto_c

    .line 67
    :cond_1f
    iget-object v8, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v7

    if-ne v7, v2, :cond_20

    .line 68
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 69
    :cond_20
    iget-object v8, v6, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v8

    if-eqz v8, :cond_21

    add-int/lit8 v8, v7, 0x1

    if-ne v8, v2, :cond_21

    .line 70
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 71
    :cond_21
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v8

    if-eqz v8, :cond_1e

    add-int/lit8 v7, v7, -0x1

    if-ne v7, v2, :cond_1e

    .line 72
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 73
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 74
    sget-boolean v1, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v1, :cond_36

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Ke0;->b(Lcom/android/tools/r8/internal/Ne0;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto/16 :goto_15

    :cond_23
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :cond_24
    sget-boolean v2, Lcom/android/tools/r8/internal/Ne0;->k:Z

    const/4 v3, 0x0

    if-nez v2, :cond_27

    .line 76
    new-instance v2, Lcom/android/tools/r8/internal/dI;

    const/16 v5, 0x10

    .line 77
    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/dI;-><init>(I)V

    .line 78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :cond_25
    :goto_d
    if-ge v6, v5, :cond_27

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/Ke0;

    .line 79
    sget-boolean v8, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v8, :cond_25

    iget v7, v7, Lcom/android/tools/r8/internal/Ke0;->d:I

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    move-result v7

    if-eqz v7, :cond_26

    goto :goto_d

    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_e
    if-ge v3, v2, :cond_36

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/Ke0;

    .line 81
    iget-object v6, v5, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    .line 82
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v6

    .line 83
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    .line 84
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    new-instance v8, Lcom/android/tools/r8/internal/iI;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/internal/iI;-><init>(Lcom/android/tools/r8/internal/lI;)V

    .line 86
    :cond_28
    :goto_f
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/iI;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 87
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/iI;->r()I

    move-result v9

    if-eqz v6, :cond_29

    add-int/lit8 v10, v9, 0x1

    .line 88
    iget v11, p0, Lcom/android/tools/r8/internal/Ne0;->g:I

    if-eq v10, v11, :cond_28

    .line 89
    invoke-virtual {v7, v10}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    move-result v10

    if-nez v10, :cond_29

    goto :goto_f

    .line 90
    :cond_29
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    goto :goto_10

    :cond_2a
    move v9, v1

    :goto_10
    if-eq v9, v1, :cond_2e

    .line 91
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    move-result v7

    .line 92
    sget-boolean v8, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v8, :cond_2c

    if-eqz v7, :cond_2b

    goto :goto_11

    :cond_2b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2c
    :goto_11
    if-eqz v6, :cond_35

    .line 93
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    add-int/lit8 v7, v9, 0x1

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/dI;->add(I)Z

    move-result v6

    if-nez v8, :cond_35

    if-eqz v6, :cond_2d

    goto :goto_14

    .line 94
    :cond_2d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 95
    :cond_2e
    iget-object v7, p0, Lcom/android/tools/r8/internal/Ne0;->h:Lcom/android/tools/r8/internal/lI;

    .line 96
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    new-instance v8, Lcom/android/tools/r8/internal/iI;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/internal/iI;-><init>(Lcom/android/tools/r8/internal/lI;)V

    .line 98
    :cond_2f
    :goto_12
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/iI;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31

    .line 99
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/iI;->r()I

    move-result v9

    if-eqz v6, :cond_30

    add-int/lit8 v10, v9, 0x1

    .line 100
    iget v11, p0, Lcom/android/tools/r8/internal/Ne0;->g:I

    if-eq v10, v11, :cond_2f

    .line 101
    invoke-virtual {v7, v10}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    move-result v10

    if-nez v10, :cond_30

    goto :goto_12

    .line 102
    :cond_30
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    goto :goto_13

    :cond_31
    move v9, v1

    :goto_13
    if-eq v9, v1, :cond_32

    goto :goto_14

    .line 103
    :cond_32
    iget v9, p0, Lcom/android/tools/r8/internal/Ne0;->f:I

    add-int/lit8 v7, v9, 0x1

    iput v7, p0, Lcom/android/tools/r8/internal/Ne0;->f:I

    if-nez v6, :cond_33

    goto :goto_14

    .line 104
    :cond_33
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ne0;->h:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v7, v9, -0x1

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    move-result v6

    if-eqz v6, :cond_34

    move v9, v7

    goto :goto_14

    .line 105
    :cond_34
    iget v6, p0, Lcom/android/tools/r8/internal/Ne0;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/tools/r8/internal/Ne0;->f:I

    .line 106
    :cond_35
    :goto_14
    new-instance v6, Lcom/android/tools/r8/internal/ix;

    iget-object v7, v5, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-direct {v6, v9, v7}, Lcom/android/tools/r8/internal/ix;-><init>(ILcom/android/tools/r8/internal/pu0;)V

    .line 107
    new-instance v7, Lcom/android/tools/r8/internal/ix;

    iget-object v8, v5, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    iget-object v10, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    iget v11, v5, Lcom/android/tools/r8/internal/Ke0;->d:I

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v10

    invoke-direct {v7, v10, v8}, Lcom/android/tools/r8/internal/ix;-><init>(ILcom/android/tools/r8/internal/pu0;)V

    .line 108
    new-instance v8, Lcom/android/tools/r8/internal/aY;

    invoke-direct {v8, v6, v7}, Lcom/android/tools/r8/internal/aY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    .line 109
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ne0;->d:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 110
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ne0;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v6, v8}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 111
    iget-object v6, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    iget v5, v5, Lcom/android/tools/r8/internal/Ke0;->d:I

    invoke-virtual {v6, v5, v9}, Lcom/android/tools/r8/internal/hF;->b(II)I

    goto/16 :goto_e

    .line 112
    :cond_36
    :goto_15
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/Ke0;)Z
    .locals 1

    .line 113
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Ke0;->a(Lcom/android/tools/r8/internal/Ne0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Ke0;->b(Lcom/android/tools/r8/internal/Ne0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 14

    sget-boolean v0, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/tools/r8/internal/FH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FH;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ke0;

    iget v2, v2, Lcom/android/tools/r8/internal/Ke0;->c:I

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/FH;->add(I)Z

    move-result v2

    sget-boolean v3, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ne0;->b()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_4

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/Me0;->a(Ljava/util/TreeSet;)Lcom/android/tools/r8/internal/QF;

    move-result-object v9

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/ArrayDeque;

    invoke-direct {v11}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/tools/r8/internal/Ke0;

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v13

    move-object v3, v10

    move-object v4, v9

    move-object v5, v11

    move-object v6, v12

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/internal/Me0;->a(Lcom/android/tools/r8/internal/Ke0;Ljava/util/HashSet;Lcom/android/tools/r8/internal/QF;Ljava/util/ArrayDeque;Ljava/util/TreeSet;Ljava/util/ArrayList;)V

    sget-boolean v2, Lcom/android/tools/r8/internal/Me0;->a:Z

    if-nez v2, :cond_7

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_2
    if-nez v2, :cond_9

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_3
    if-nez v2, :cond_4

    invoke-virtual {v12}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    move-object v1, v8

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Le0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/Le0;->a:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ke0;

    sget-boolean v5, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Ne0;->b:Lcom/android/tools/r8/internal/hF;

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/tools/r8/internal/Ke0;->a(Lcom/android/tools/r8/internal/Ne0;Ljava/util/TreeSet;Lcom/android/tools/r8/internal/hF;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_7
    iget v5, v4, Lcom/android/tools/r8/internal/Ke0;->c:I

    iget-object v4, v4, Lcom/android/tools/r8/internal/Ke0;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v4

    invoke-static {}, Lcom/android/tools/r8/internal/MH;->a()Ljava/util/function/IntConsumer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6, v5}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_10
    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/lI;->remove(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v6, v5}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_6

    :cond_11
    iget-boolean v3, v2, Lcom/android/tools/r8/internal/Le0;->b:Z

    if-eqz v3, :cond_16

    sget-boolean v3, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v3, :cond_13

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    iget-object v5, v2, Lcom/android/tools/r8/internal/Le0;->a:Ljava/util/TreeSet;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_8

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    :goto_8
    if-nez v3, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    :goto_9
    iget-object v2, v2, Lcom/android/tools/r8/internal/Le0;->a:Ljava/util/TreeSet;

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/Ne0;->b(Ljava/util/ArrayDeque;Ljava/util/TreeSet;)V

    :cond_16
    sget-boolean v2, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ne0;->j:Lcom/android/tools/r8/internal/dI;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dI;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_5

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ne0;->a(Ljava/util/ArrayDeque;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ne0;->a:Ljava/util/TreeSet;

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/Ne0;->b(Ljava/util/ArrayDeque;Ljava/util/TreeSet;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/Ne0;->k:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ne0;->i:Lcom/android/tools/r8/internal/lI;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lI;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_a

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1a
    :goto_a
    return-void
.end method
