.class public final Lcom/android/tools/r8/internal/NT;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/internal/Ku0;

.field public d:Ljava/util/IdentityHashMap;

.field public e:Lcom/android/tools/r8/internal/Z5;

.field public f:Lcom/android/tools/r8/internal/Y5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Ku0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NT;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/NT;->c:Lcom/android/tools/r8/internal/Ku0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance p1, Lcom/android/tools/r8/internal/qh;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    return-object p1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance p1, Lcom/android/tools/r8/internal/vh;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/vh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/L2;)V

    return-object p1

    .line 105
    :cond_1
    instance-of v1, v0, Lcom/android/tools/r8/internal/uq;

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p1

    .line 107
    new-instance v0, Lcom/android/tools/r8/internal/uq;

    .line 108
    iget-object v1, p1, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 109
    iget-object p1, p1, Lcom/android/tools/r8/internal/uq;->m:Lcom/android/tools/r8/internal/ZY;

    .line 110
    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/r8/internal/uq;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    return-object v0

    .line 111
    :cond_2
    instance-of v1, v0, Lcom/android/tools/r8/internal/jh;

    if-eqz v1, :cond_3

    .line 112
    new-instance p1, Lcom/android/tools/r8/internal/jh;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v0

    .line 113
    iget-object v0, v0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    .line 114
    invoke-direct {p1, p0, v0, v1}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    return-object p1

    .line 115
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected constant value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/JT;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/JT;-><init>(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/xw0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/NJ;)V
    .locals 3

    .line 84
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    sget-boolean p1, Lcom/android/tools/r8/internal/NT;->g:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/NT;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/NT;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ku0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gu0;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NT;->a:Lcom/android/tools/r8/graph/y;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/ko0;->a(Lcom/android/tools/r8/internal/Ju0;ILcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ko0;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v0, v1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    .line 92
    :cond_3
    iget-object v0, p2, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x0

    .line 93
    iput-object v1, p2, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 94
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    if-eqz v0, :cond_4

    .line 95
    iput-object v1, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 96
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/v60;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/v60;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 98
    iget-object p1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ya;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sget-boolean v2, Lcom/android/tools/r8/internal/NT;->g:Z

    if-nez v2, :cond_2

    .line 4
    iget-object v2, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v2, v2, Lcom/android/tools/r8/internal/bY;

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 8
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v5

    .line 11
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/f60;

    .line 13
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/f60;->Q()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    iget-object v8, v7, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v9

    invoke-static {v8}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 16
    new-instance v9, Lcom/android/tools/r8/internal/MT;

    invoke-direct {v9, v7, v8}, Lcom/android/tools/r8/internal/MT;-><init>(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    .line 18
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 19
    sget-boolean v7, Lcom/android/tools/r8/internal/NT;->g:Z

    if-nez v7, :cond_7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    if-ne v4, v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_7
    :goto_3
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    move v9, v8

    :goto_4
    if-ge v8, v7, :cond_8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Lcom/android/tools/r8/internal/MT;

    .line 23
    iget-object v11, v10, Lcom/android/tools/r8/internal/MT;->a:Lcom/android/tools/r8/internal/f60;

    add-int/lit8 v12, v9, 0x1

    .line 24
    iget-object v13, p0, Lcom/android/tools/r8/internal/NT;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {v13, v11}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v11

    iget-object v13, p0, Lcom/android/tools/r8/internal/NT;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v11, v9, v13}, Lcom/android/tools/r8/internal/ko0;->a(Lcom/android/tools/r8/internal/Ju0;ILcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ko0;

    move-result-object v9

    .line 25
    iget-object v11, v10, Lcom/android/tools/r8/internal/MT;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-static {v9, v11}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    .line 26
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 27
    iget-object v13, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v13, v11}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v9, v10, Lcom/android/tools/r8/internal/MT;->b:Lcom/android/tools/r8/internal/xw0;

    iget-object v10, v10, Lcom/android/tools/r8/internal/MT;->a:Lcom/android/tools/r8/internal/f60;

    .line 30
    iget-object v11, v9, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 31
    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 32
    iput-object v10, v9, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    move v9, v12

    goto :goto_4

    .line 33
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_5
    if-ltz v7, :cond_9

    .line 34
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/MT;

    .line 35
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/ko0;

    .line 36
    new-instance v10, Lcom/android/tools/r8/internal/hx;

    iget-object v11, v8, Lcom/android/tools/r8/internal/MT;->a:Lcom/android/tools/r8/internal/f60;

    invoke-direct {v10, v11}, Lcom/android/tools/r8/internal/hx;-><init>(Lcom/android/tools/r8/internal/f60;)V

    .line 37
    new-instance v11, Lcom/android/tools/r8/internal/Oo0;

    invoke-direct {v11, v9, v10}, Lcom/android/tools/r8/internal/Oo0;-><init>(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/xw0;)V

    .line 38
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 39
    iget-object v9, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v9, v11}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 40
    iget-object v8, v8, Lcom/android/tools/r8/internal/MT;->a:Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v8, v10}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 41
    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    .line 43
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->Q()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 44
    iget-object v4, p1, Lcom/android/tools/r8/internal/Ya;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/eB;

    iget-object v4, v4, Lcom/android/tools/r8/internal/eB;->c:Ljava/util/ArrayDeque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_6

    .line 45
    :cond_b
    iget-object v4, p1, Lcom/android/tools/r8/internal/Ya;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/eB;

    iget-object v4, v4, Lcom/android/tools/r8/internal/eB;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 46
    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/tools/r8/internal/RN0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RN0;-><init>()V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)V
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    .line 48
    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 50
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    add-int/lit8 v3, v1, 0x1

    .line 52
    iget-object v4, p0, Lcom/android/tools/r8/internal/NT;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/NT;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v4, v1, v5}, Lcom/android/tools/r8/internal/ko0;->a(Lcom/android/tools/r8/internal/Ju0;ILcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ko0;

    move-result-object v1

    .line 53
    sget-boolean v4, Lcom/android/tools/r8/internal/NT;->g:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/tools/r8/internal/NT;->d:Ljava/util/IdentityHashMap;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/NT;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/lh;

    if-eqz v4, :cond_8

    .line 55
    sget v2, Lcom/android/tools/r8/internal/lh;->k:I

    .line 56
    instance-of v2, v4, Lcom/android/tools/r8/internal/jh;

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/jh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/jh;)Lcom/android/tools/r8/internal/jh;

    move-result-object v2

    goto :goto_3

    .line 58
    :cond_2
    instance-of v2, v4, Lcom/android/tools/r8/internal/mh;

    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->H()Lcom/android/tools/r8/internal/mh;

    move-result-object v2

    .line 60
    new-instance v4, Lcom/android/tools/r8/internal/mh;

    .line 61
    iget-object v2, v2, Lcom/android/tools/r8/internal/mh;->l:Lcom/android/tools/r8/graph/C2;

    .line 62
    invoke-direct {v4, v1, v2}, Lcom/android/tools/r8/internal/mh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/C2;)V

    :goto_2
    move-object v2, v4

    goto :goto_3

    .line 63
    :cond_3
    instance-of v2, v4, Lcom/android/tools/r8/internal/nh;

    if-eqz v2, :cond_4

    .line 64
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->I()Lcom/android/tools/r8/internal/nh;

    move-result-object v2

    .line 65
    new-instance v4, Lcom/android/tools/r8/internal/nh;

    .line 66
    iget-object v2, v2, Lcom/android/tools/r8/internal/nh;->l:Lcom/android/tools/r8/graph/I2;

    .line 67
    invoke-direct {v4, v1, v2}, Lcom/android/tools/r8/internal/nh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/I2;)V

    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 69
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/qh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    goto :goto_3

    .line 70
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/vh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/vh;)Lcom/android/tools/r8/internal/vh;

    move-result-object v2

    goto :goto_3

    .line 72
    :cond_6
    instance-of v2, v4, Lcom/android/tools/r8/internal/uq;

    if-eqz v2, :cond_7

    .line 73
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/uq;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/uq;)Lcom/android/tools/r8/internal/uq;

    move-result-object v2

    .line 74
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 75
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 76
    iget-object v4, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v4, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 77
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 78
    :cond_8
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 80
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 81
    iget-object v4, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v4, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 82
    :goto_4
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto/16 :goto_0

    .line 83
    :cond_9
    iget-object p1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)V
    .locals 7

    sget-boolean v0, Lcom/android/tools/r8/internal/NT;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    instance-of v0, v0, Lcom/android/tools/r8/internal/ko0;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v3

    if-lez v3, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    if-eq v4, v1, :cond_6

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->W()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v1

    sget-object v3, Lcom/android/tools/r8/internal/LT;->a:[I

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    const/4 v4, 0x4

    if-eq v3, v4, :cond_b

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    sget-boolean v3, Lcom/android/tools/r8/internal/qh;->m:Z

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    if-ne v3, v4, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_2
    iget-wide v3, v1, Lcom/android/tools/r8/internal/qh;->l:J

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_e

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_e

    goto/16 :goto_5

    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_b
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->v2()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    const-wide/16 v5, 0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_c
    sget-boolean v1, Lcom/android/tools/r8/internal/NT;->g:Z

    if-nez v1, :cond_e

    instance-of v1, v0, Lcom/android/tools/r8/internal/jh;

    if-nez v1, :cond_e

    instance-of v1, v0, Lcom/android/tools/r8/internal/mh;

    if-nez v1, :cond_e

    instance-of v1, v0, Lcom/android/tools/r8/internal/nh;

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v1

    if-nez v1, :cond_e

    instance-of v1, v0, Lcom/android/tools/r8/internal/uq;

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/NT;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v4

    sget-object v5, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-boolean v1, Lcom/android/tools/r8/internal/NT;->g:Z

    if-nez v1, :cond_10

    instance-of v1, v0, Lcom/android/tools/r8/internal/uq;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->W()I

    move-result v1

    if-ne v1, v2, :cond_f

    goto :goto_4

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/NT;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->d()V

    iget-object p1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void

    :cond_11
    :goto_5
    sget-boolean v0, Lcom/android/tools/r8/internal/NT;->g:Z

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/tools/r8/internal/NT;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected instruction to be removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_13
    :goto_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/NT;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/NT;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/ko0;->a(Lcom/android/tools/r8/internal/Ju0;ILcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ko0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v4, p0, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v1, v3, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    :cond_14
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    iput-object v2, p1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_15

    iput-object v2, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    :cond_15
    new-instance v1, Lcom/android/tools/r8/internal/v60;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/v60;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {p1, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    :cond_16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/NT;->c:Lcom/android/tools/r8/internal/Ku0;

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/Ku0;->b(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ju0;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/NT;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/ko0;->a(Lcom/android/tools/r8/internal/Ju0;ILcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ko0;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    iput-object v2, p1, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    if-eqz v1, :cond_17

    iput-object v2, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    :cond_17
    new-instance v2, Lcom/android/tools/r8/internal/Oo0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Oo0;-><init>(Lcom/android/tools/r8/internal/ko0;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v4, p0, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v1, v3, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    :cond_18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/android/tools/r8/internal/NT;->f:Lcom/android/tools/r8/internal/Y5;

    iget-object v0, p0, Lcom/android/tools/r8/internal/NT;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    iget-object p1, p0, Lcom/android/tools/r8/internal/NT;->e:Lcom/android/tools/r8/internal/Z5;

    iget-object v0, p1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, p1, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    :cond_19
    return-void
.end method
