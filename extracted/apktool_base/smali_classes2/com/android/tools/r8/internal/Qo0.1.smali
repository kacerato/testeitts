.class public final Lcom/android/tools/r8/internal/Qo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b6;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/r60;

.field public final b:Lcom/android/tools/r8/internal/r60;

.field public final c:Lcom/android/tools/r8/internal/Jx0;

.field public final d:Lcom/android/tools/r8/internal/V50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/r60;

    new-instance v1, Lcom/android/tools/r8/internal/FR0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/FR0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/U50;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qo0;->a:Lcom/android/tools/r8/internal/r60;

    new-instance v1, Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/uK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/uK0;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Qo0;->b:Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/Jx0;

    new-instance v3, Lcom/android/tools/r8/internal/VT0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/VT0;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Jx0;-><init>(Ljava/util/function/Predicate;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/Qo0;->c:Lcom/android/tools/r8/internal/Jx0;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/tools/r8/internal/T50;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    new-instance v0, Lcom/android/tools/r8/internal/V50;

    invoke-direct {v0, v4, v3}, Lcom/android/tools/r8/internal/V50;-><init>(Z[Lcom/android/tools/r8/internal/T50;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Qo0;->d:Lcom/android/tools/r8/internal/V50;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/JT;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p0, Lcom/android/tools/r8/internal/tt;

    if-nez v0, :cond_1

    .line 4
    instance-of p0, p0, Lcom/android/tools/r8/internal/st;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jS;)Z
    .locals 12

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qo0;->d:Lcom/android/tools/r8/internal/V50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/V50;->a(Lcom/android/tools/r8/internal/jS;)Lcom/android/tools/r8/internal/yV;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qo0;->a:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v3, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v2, v2, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->M0()Lcom/android/tools/r8/internal/Oo0;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/internal/Qo0;->b:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v4, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v3, v3, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 11
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v3

    .line 12
    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-ne v4, v5, :cond_b

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    goto/16 :goto_6

    .line 15
    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/Qo0;->c:Lcom/android/tools/r8/internal/Jx0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v4, v4, Lcom/android/tools/r8/internal/Jx0;->b:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 17
    iget-object v4, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 18
    check-cast v4, Lcom/android/tools/r8/internal/ko0;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/ko0;

    goto/16 :goto_4

    .line 21
    :cond_2
    sget-boolean v6, Lcom/android/tools/r8/internal/Qo0;->e:Z

    if-nez v6, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    instance-of v6, v6, Lcom/android/tools/r8/internal/tt;

    if-eqz v6, :cond_3

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 24
    iget-object v6, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-ne v6, v7, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_4
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6, v1, v4}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    .line 27
    sget-boolean v4, Lcom/android/tools/r8/internal/U50;->a:Z

    if-nez v4, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 29
    iget-object v7, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v1

    :goto_3
    if-ge v9, v8, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 31
    iget-object v11, v10, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 32
    invoke-virtual {v11, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    .line 33
    iput-object v11, v10, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    goto :goto_3

    .line 34
    :cond_7
    iget-object v7, v6, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 35
    invoke-interface {p1, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/lo0;

    .line 37
    iget-object v4, v4, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 38
    array-length v6, v4

    sub-int/2addr v6, v5

    aget-object v4, v4, v6

    move-object v6, v4

    .line 39
    :goto_4
    iget v7, v6, Lcom/android/tools/r8/internal/ko0;->p:I

    .line 40
    new-instance v8, Lcom/android/tools/r8/internal/ko0;

    iget-object v9, v6, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-direct {v8, v9, v10, v7}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 41
    iget v7, v6, Lcom/android/tools/r8/internal/ko0;->p:I

    add-int/2addr v7, v5

    .line 42
    new-instance v9, Lcom/android/tools/r8/internal/ko0;

    iget-object v10, v6, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 43
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 44
    sget-boolean v6, Lcom/android/tools/r8/internal/Qo0;->e:Z

    if-nez v6, :cond_a

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_a
    :goto_5
    new-instance v6, Lcom/android/tools/r8/internal/tt;

    invoke-direct {v6, v8, v9, v4}, Lcom/android/tools/r8/internal/tt;-><init>(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;)V

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 47
    invoke-interface {p1, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v2, v1, v9}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    .line 49
    new-instance v1, Lcom/android/tools/r8/internal/UT0;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/UT0;-><init>(Lcom/android/tools/r8/internal/JT;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 50
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/jS;I)V

    return v5

    :cond_b
    :goto_6
    return v1
.end method
