.class public final Lcom/android/tools/r8/internal/Ro0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b6;


# instance fields
.field public a:Lcom/android/tools/r8/internal/Oo0;

.field public b:I

.field public final c:Lcom/android/tools/r8/internal/r60;

.field public final d:Lcom/android/tools/r8/internal/Jx0;

.field public final e:Lcom/android/tools/r8/internal/r60;

.field public final f:Lcom/android/tools/r8/internal/V50;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Ro0;->b:I

    new-instance v1, Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/zV0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/zV0;-><init>(Lcom/android/tools/r8/internal/Ro0;)V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ro0;->c:Lcom/android/tools/r8/internal/r60;

    new-instance v2, Lcom/android/tools/r8/internal/Jx0;

    new-instance v3, Lcom/android/tools/r8/internal/AV0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/AV0;-><init>(Lcom/android/tools/r8/internal/Ro0;)V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Jx0;-><init>(Ljava/util/function/Predicate;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/Ro0;->d:Lcom/android/tools/r8/internal/Jx0;

    new-instance v3, Lcom/android/tools/r8/internal/r60;

    new-instance v4, Lcom/android/tools/r8/internal/BV0;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/BV0;-><init>(Lcom/android/tools/r8/internal/Ro0;)V

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/r60;-><init>(Ljava/util/function/Predicate;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ro0;->e:Lcom/android/tools/r8/internal/r60;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/tools/r8/internal/T50;

    aput-object v1, v4, v0

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    new-instance v1, Lcom/android/tools/r8/internal/V50;

    invoke-direct {v1, v0, v4}, Lcom/android/tools/r8/internal/V50;-><init>(Z[Lcom/android/tools/r8/internal/T50;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ro0;->f:Lcom/android/tools/r8/internal/V50;

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


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jS;)Z
    .locals 9

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ro0;->f:Lcom/android/tools/r8/internal/V50;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/V50;->a(Lcom/android/tools/r8/internal/jS;)Lcom/android/tools/r8/internal/yV;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ro0;->a:Lcom/android/tools/r8/internal/Oo0;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ro0;->c:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v3, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v2, v2, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->M0()Lcom/android/tools/r8/internal/Oo0;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ro0;->d:Lcom/android/tools/r8/internal/Jx0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v4, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v3, v3, Lcom/android/tools/r8/internal/Jx0;->b:I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 18
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ro0;->e:Lcom/android/tools/r8/internal/r60;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object v0, v0, Lcom/android/tools/r8/internal/yV;->a:Ljava/util/ArrayList;

    iget v4, v4, Lcom/android/tools/r8/internal/r60;->b:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v0

    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 22
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    instance-of v4, v4, Lcom/android/tools/r8/internal/ko0;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 23
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/ko0;

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    instance-of v4, v4, Lcom/android/tools/r8/internal/lo0;

    if-eqz v4, :cond_2

    .line 25
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/lo0;

    .line 26
    iget-object v3, v3, Lcom/android/tools/r8/internal/lo0;->p:[Lcom/android/tools/r8/internal/ko0;

    .line 27
    array-length v4, v3

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    goto :goto_0

    :cond_2
    move-object v3, v6

    :goto_0
    if-eqz v3, :cond_4

    .line 28
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 29
    :cond_3
    iget-object v4, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 31
    check-cast v1, Lcom/android/tools/r8/internal/ko0;

    .line 32
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 33
    iget-object v4, v2, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 34
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 35
    iput-object v6, v2, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 37
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    .line 38
    new-instance v2, Lcom/android/tools/r8/internal/yV0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/yV0;-><init>(Lcom/android/tools/r8/internal/JT;)V

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 39
    iget v0, v1, Lcom/android/tools/r8/internal/ko0;->p:I

    .line 40
    new-instance v2, Lcom/android/tools/r8/internal/ko0;

    iget-object v4, v3, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-direct {v2, v4, v7, v0}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 41
    iget v0, v2, Lcom/android/tools/r8/internal/ko0;->p:I

    add-int/2addr v0, v5

    .line 42
    new-instance v4, Lcom/android/tools/r8/internal/ko0;

    iget-object v7, v1, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-direct {v4, v7, v8, v0}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    .line 43
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 44
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 45
    new-instance v0, Lcom/android/tools/r8/internal/Zq0;

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/android/tools/r8/internal/Zq0;-><init>(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/ko0;)V

    .line 46
    invoke-interface {p1, v0, v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    const/4 v0, 0x2

    .line 47
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/jS;I)V

    return v5

    :cond_4
    :goto_1
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p1, Lcom/android/tools/r8/internal/Oo0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->M0()Lcom/android/tools/r8/internal/Oo0;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->M0()Lcom/android/tools/r8/internal/Oo0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->M0()Lcom/android/tools/r8/internal/Oo0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ro0;->a:Lcom/android/tools/r8/internal/Oo0;

    .line 10
    iput v1, p0, Lcom/android/tools/r8/internal/Ro0;->b:I

    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/Ro0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/JT;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ro0;->a:Lcom/android/tools/r8/internal/Oo0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-ne v0, v3, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Ro0;->b:I

    invoke-static {p1}, Lcom/android/tools/r8/internal/U50;->a(Lcom/android/tools/r8/internal/zE;)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/Ro0;->b:I

    if-gez v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ro0;->a:Lcom/android/tools/r8/internal/Oo0;

    return v1

    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/U50;->b(Lcom/android/tools/r8/internal/zE;)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/Ro0;->b:I

    return v2
.end method

.method public final c(Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ro0;->a:Lcom/android/tools/r8/internal/Oo0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/JT;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m0()Lcom/android/tools/r8/internal/JT;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ro0;->a:Lcom/android/tools/r8/internal/Oo0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method
