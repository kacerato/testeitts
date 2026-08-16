.class public final Lcom/android/tools/r8/internal/cY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b6;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/xw0;

.field public b:I

.field public c:Lcom/android/tools/r8/internal/zE;

.field public final d:Lcom/android/tools/r8/internal/r60;

.field public final e:Lcom/android/tools/r8/internal/V50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/cY;->a:Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/tools/r8/internal/cY;->b:I

    iput-object v0, p0, Lcom/android/tools/r8/internal/cY;->c:Lcom/android/tools/r8/internal/zE;

    new-instance v0, Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/q71;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/q71;-><init>(Lcom/android/tools/r8/internal/cY;)V

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/cY;->d:Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/Jx0;

    new-instance v3, Lcom/android/tools/r8/internal/r71;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/r71;-><init>(Lcom/android/tools/r8/internal/cY;)V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Jx0;-><init>(Ljava/util/function/Predicate;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/tools/r8/internal/T50;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    new-instance v1, Lcom/android/tools/r8/internal/V50;

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/V50;-><init>(Z[Lcom/android/tools/r8/internal/T50;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/cY;->e:Lcom/android/tools/r8/internal/V50;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jS;)Z
    .locals 8

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/tools/r8/internal/cY;->b:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/tools/r8/internal/cY;->c:Lcom/android/tools/r8/internal/zE;

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/cY;->e:Lcom/android/tools/r8/internal/V50;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/V50;->a(Lcom/android/tools/r8/internal/jS;)Lcom/android/tools/r8/internal/yV;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/internal/cY;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v3, :cond_9

    .line 10
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v3

    .line 12
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 13
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 14
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    if-ne v3, v5, :cond_4

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 18
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v5

    const/16 v6, -0x80

    if-lt v5, v6, :cond_4

    .line 19
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v4

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_4

    .line 20
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 22
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    if-ne v3, v5, :cond_3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    const/4 v5, 0x4

    .line 24
    invoke-static {p1, v5}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/jS;I)V

    .line 25
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    if-ne v3, v5, :cond_5

    .line 26
    instance-of v3, v4, Lcom/android/tools/r8/internal/Oo0;

    if-eqz v3, :cond_5

    goto/16 :goto_6

    :cond_3
    :goto_0
    const/4 v3, 0x3

    .line 27
    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/jS;I)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x2

    .line 28
    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/jS;I)V

    .line 29
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/cY;->d:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v2, v2, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v3, v3, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v2

    .line 32
    sget-boolean v3, Lcom/android/tools/r8/internal/cY;->f:Z

    if-nez v3, :cond_7

    .line 33
    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 35
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_7
    :goto_3
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/ko0;

    .line 37
    iget v4, v3, Lcom/android/tools/r8/internal/ko0;->p:I

    .line 38
    new-instance v5, Lcom/android/tools/r8/internal/ko0;

    iget-object v6, v3, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 39
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 40
    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 41
    iget-object v4, v3, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 42
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 43
    iput-object v1, v3, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 44
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 45
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    const/4 v3, 0x1

    move v4, v3

    .line 46
    :goto_4
    iget-object v6, p0, Lcom/android/tools/r8/internal/cY;->c:Lcom/android/tools/r8/internal/zE;

    if-eq v1, v6, :cond_8

    .line 47
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 48
    :cond_8
    new-instance v1, Lcom/android/tools/r8/internal/JT;

    .line 49
    iget-object v2, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 50
    invoke-direct {v1, v5, v2}, Lcom/android/tools/r8/internal/JT;-><init>(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/xw0;)V

    .line 51
    iget-object v2, p0, Lcom/android/tools/r8/internal/cY;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 52
    invoke-interface {p1, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    add-int/2addr v4, v3

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_9

    .line 53
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/uK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uK0;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/U50;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/cY;->a:Lcom/android/tools/r8/internal/xw0;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/bY;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/Oo0;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/cY;->a:Lcom/android/tools/r8/internal/xw0;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/cY;->b:I

    invoke-static {p1}, Lcom/android/tools/r8/internal/U50;->b(Lcom/android/tools/r8/internal/zE;)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/tools/r8/internal/cY;->b:I

    if-lez v2, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/zE;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/tools/r8/internal/cY;->b:I

    if-nez v2, :cond_2

    instance-of v0, p1, Lcom/android/tools/r8/internal/hj;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/tools/r8/internal/cY;->c:Lcom/android/tools/r8/internal/zE;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method
