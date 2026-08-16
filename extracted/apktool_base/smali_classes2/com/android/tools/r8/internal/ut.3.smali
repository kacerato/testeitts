.class public final Lcom/android/tools/r8/internal/ut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b6;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/r60;

.field public final b:Lcom/android/tools/r8/internal/r60;

.field public final c:Lcom/android/tools/r8/internal/r60;

.field public final d:Lcom/android/tools/r8/internal/V50;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/r60;

    new-instance v1, Lcom/android/tools/r8/internal/Dv1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Dv1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ut;->a:Lcom/android/tools/r8/internal/r60;

    new-instance v1, Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/Ev1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Ev1;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ut;->b:Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/r60;

    new-instance v3, Lcom/android/tools/r8/internal/Fv1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Fv1;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/ut;->c:Lcom/android/tools/r8/internal/r60;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/tools/r8/internal/T50;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object v2, v3, v1

    new-instance v1, Lcom/android/tools/r8/internal/V50;

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/V50;-><init>(Z[Lcom/android/tools/r8/internal/T50;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/ut;->d:Lcom/android/tools/r8/internal/V50;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p0, Lcom/android/tools/r8/internal/tt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/android/tools/r8/internal/tt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static c(Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/android/tools/r8/internal/tt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jS;)Z
    .locals 14

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/ut;->d:Lcom/android/tools/r8/internal/V50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/V50;->a(Lcom/android/tools/r8/internal/jS;)Lcom/android/tools/r8/internal/yV;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/ut;->c:Lcom/android/tools/r8/internal/r60;

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
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Q()Lcom/android/tools/r8/internal/tt;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/internal/ut;->b:Lcom/android/tools/r8/internal/r60;

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
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->Q()Lcom/android/tools/r8/internal/tt;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/android/tools/r8/internal/ut;->a:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v4, v4, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Q()Lcom/android/tools/r8/internal/tt;

    move-result-object v0

    .line 15
    iget-object v4, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/ko0;

    .line 17
    iget v4, v4, Lcom/android/tools/r8/internal/ko0;->p:I

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tt;->u2()Lcom/android/tools/r8/internal/ko0;

    move-result-object v5

    .line 19
    new-instance v7, Lcom/android/tools/r8/internal/ko0;

    .line 20
    iget-object v6, v5, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    .line 21
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-direct {v7, v6, v5, v4}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 22
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/tt;->u2()Lcom/android/tools/r8/internal/ko0;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 23
    new-instance v8, Lcom/android/tools/r8/internal/ko0;

    .line 24
    iget-object v9, v5, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    .line 25
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-direct {v8, v9, v5, v6}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt;->u2()Lcom/android/tools/r8/internal/ko0;

    move-result-object v5

    add-int/lit8 v6, v4, 0x2

    .line 27
    new-instance v9, Lcom/android/tools/r8/internal/ko0;

    .line 28
    iget-object v10, v5, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    .line 29
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-direct {v9, v10, v5, v6}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/lo0;

    .line 31
    iget-object v5, v5, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    const/4 v13, 0x1

    .line 32
    aget-object v5, v5, v13

    add-int/lit8 v4, v4, 0x3

    .line 33
    new-instance v10, Lcom/android/tools/r8/internal/ko0;

    .line 34
    iget-object v6, v5, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    .line 35
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-direct {v10, v6, v5, v4}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 36
    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/ko0;

    .line 37
    iget-object v5, v4, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 38
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 39
    iput-object v5, v4, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 40
    iget-object v4, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ko0;

    .line 41
    iget-object v4, v1, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 42
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 43
    iput-object v5, v1, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tt;->u2()Lcom/android/tools/r8/internal/ko0;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 45
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/tt;->u2()Lcom/android/tools/r8/internal/ko0;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt;->u2()Lcom/android/tools/r8/internal/ko0;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/lo0;

    .line 48
    iget-object v0, v0, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 49
    aget-object v0, v0, v13

    .line 50
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/st;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tt;->u2()Lcom/android/tools/r8/internal/ko0;

    move-result-object v11

    .line 52
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/lo0;

    .line 53
    iget-object v1, v1, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 54
    aget-object v12, v1, v13

    move-object v6, v0

    .line 55
    invoke-direct/range {v6 .. v12}, Lcom/android/tools/r8/internal/st;-><init>(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;)V

    .line 56
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 57
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 58
    invoke-interface {p1, v0, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 59
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    return v13
.end method
