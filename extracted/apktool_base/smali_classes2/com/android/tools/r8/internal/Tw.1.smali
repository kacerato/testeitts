.class public final Lcom/android/tools/r8/internal/Tw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/internal/zE;

.field public final d:Lcom/android/tools/r8/graph/y;

.field public e:Lcom/android/tools/r8/internal/xw0;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tw;->e:Lcom/android/tools/r8/internal/xw0;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tw;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tw;->g:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tw;->a:Lcom/android/tools/r8/graph/l1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tw;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Tw;->c:Lcom/android/tools/r8/internal/zE;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Tw;->d:Lcom/android/tools/r8/graph/y;

    sget-boolean p1, Lcom/android/tools/r8/internal/Tw;->h:Z

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/xw0;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tw;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_5

    .line 4
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tw;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/android/tools/r8/internal/Tw;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Tw;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 8
    :cond_2
    sget-boolean v2, Lcom/android/tools/r8/internal/Tw;->h:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Tw;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tw;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 11
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/f60;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tw;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tw;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    iget-object v5, p0, Lcom/android/tools/r8/internal/Tw;->d:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v2, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    sget-object v10, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    const/4 v9, 0x0

    move-object v5, v1

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tw;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 17
    iget-object v5, p0, Lcom/android/tools/r8/internal/Tw;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    if-eqz v5, :cond_6

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/internal/Tw;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-nez v5, :cond_7

    .line 19
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Tw;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 20
    :cond_7
    sget-boolean v6, Lcom/android/tools/r8/internal/Tw;->h:Z

    if-nez v6, :cond_9

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/android/tools/r8/internal/Tw;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_a
    invoke-virtual {v1, v0, v4}, Lcom/android/tools/r8/internal/f60;->a(Ljava/util/List;Z)V

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tw;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/f60;->d(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/internal/Tw;->h:Z

    if-nez v0, :cond_c

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tw;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_c
    :goto_5
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    .line 27
    :goto_6
    sget-boolean p1, Lcom/android/tools/r8/internal/Tw;->h:Z

    if-nez p1, :cond_e

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_7
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/xw0;
    .locals 8

    if-eqz p2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tw;->c:Lcom/android/tools/r8/internal/zE;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tw;->a:Lcom/android/tools/r8/graph/l1;

    if-ne v0, v2, :cond_2

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tw;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    return-object v1

    .line 35
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1

    .line 37
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/Tw;->h:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tw;->c:Lcom/android/tools/r8/internal/zE;

    if-ne v0, p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Tw;->e:Lcom/android/tools/r8/internal/xw0;

    if-nez p2, :cond_9

    .line 39
    iget-object p2, p0, Lcom/android/tools/r8/internal/Tw;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v2, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    .line 41
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tw;->a:Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 42
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tw;->b:Lcom/android/tools/r8/internal/fB;

    iget-object p2, p0, Lcom/android/tools/r8/internal/Tw;->a:Lcom/android/tools/r8/graph/l1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 43
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/Tw;->d:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, v0, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 44
    invoke-interface {p1, p2, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/tools/r8/internal/Tw;->e:Lcom/android/tools/r8/internal/xw0;

    .line 46
    new-instance p1, Lcom/android/tools/r8/internal/qh;

    iget-object p2, p0, Lcom/android/tools/r8/internal/Tw;->e:Lcom/android/tools/r8/internal/xw0;

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    .line 47
    iget-object p2, p0, Lcom/android/tools/r8/internal/Tw;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 48
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_3

    .line 49
    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/Tw;->b:Lcom/android/tools/r8/internal/fB;

    iget-object p1, p0, Lcom/android/tools/r8/internal/Tw;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    .line 50
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v7

    const-wide/16 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/tools/r8/internal/Tw;->e:Lcom/android/tools/r8/internal/xw0;

    .line 52
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tw;->e:Lcom/android/tools/r8/internal/xw0;

    return-object p1
.end method
