.class public final Lcom/android/tools/r8/internal/Kn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic r:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/internal/t8;

.field public final d:Lcom/android/tools/r8/internal/mS;

.field public final e:Lcom/android/tools/r8/internal/nJ;

.field public final f:Lcom/android/tools/r8/internal/EW;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/Set;

.field public j:I

.field public k:I

.field public l:[Lcom/android/tools/r8/internal/Fn;

.field public m:Lcom/android/tools/r8/internal/Fn;

.field public n:I

.field public o:I

.field public p:Z

.field public q:Lcom/android/tools/r8/internal/W5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/EW;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kn;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kn;->h:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kn;->i:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Kn;->j:I

    iput v0, p0, Lcom/android/tools/r8/internal/Kn;->k:I

    iput v0, p0, Lcom/android/tools/r8/internal/Kn;->n:I

    iput v0, p0, Lcom/android/tools/r8/internal/Kn;->o:I

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Kn;->p:Z

    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p3}, Lcom/android/tools/r8/internal/Je0;->c()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kn;->a:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    sget-object v0, Lcom/android/tools/r8/internal/u8;->b:Lcom/android/tools/r8/internal/u8;

    new-instance v0, Lcom/android/tools/r8/internal/t8;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/t8;-><init>(Lcom/android/tools/r8/internal/v8;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Kn;->c:Lcom/android/tools/r8/internal/t8;

    check-cast p3, Lcom/android/tools/r8/internal/mS;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Kn;->e:Lcom/android/tools/r8/internal/nJ;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Kn;->f:Lcom/android/tools/r8/internal/EW;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/tools/r8/internal/Fn;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    :cond_2
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 12

    .line 170
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    const v4, 0xffff

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/Jn;

    .line 171
    iget v6, v5, Lcom/android/tools/r8/internal/Jn;->d:I

    iget v5, v5, Lcom/android/tools/r8/internal/Jn;->c:I

    sub-int/2addr v6, v5

    :goto_0
    if-le v6, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v6, v4

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return-object p0

    .line 172
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/Jn;

    .line 175
    iget v6, v5, Lcom/android/tools/r8/internal/Jn;->d:I

    iget v7, v5, Lcom/android/tools/r8/internal/Jn;->c:I

    sub-int v8, v6, v7

    if-gt v8, v4, :cond_3

    .line 176
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_3
    iget-object v5, v5, Lcom/android/tools/r8/internal/Jn;->b:Lcom/android/tools/r8/internal/N8;

    :goto_2
    sub-int v8, v6, v7

    if-le v8, v4, :cond_9

    add-int v8, v7, v4

    .line 178
    sget-boolean v9, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v9, :cond_5

    if-ge v8, v6, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 179
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_4
    if-ltz v9, :cond_7

    .line 180
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/Np;

    .line 181
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    if-gt v11, v8, :cond_6

    .line 182
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_7
    const/4 v8, -0x1

    :goto_5
    if-le v8, v7, :cond_8

    .line 183
    new-instance v9, Lcom/android/tools/r8/internal/Jn;

    invoke-direct {v9, v5, v7, v8}, Lcom/android/tools/r8/internal/Jn;-><init>(Lcom/android/tools/r8/internal/N8;II)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v8

    goto :goto_2

    .line 184
    :cond_8
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected try-catch handler end point: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_9
    sget-boolean v8, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v8, :cond_b

    if-ge v7, v6, :cond_a

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 186
    :cond_b
    :goto_6
    new-instance v8, Lcom/android/tools/r8/internal/Jn;

    invoke-direct {v8, v5, v7, v6}, Lcom/android/tools/r8/internal/Jn;-><init>(Lcom/android/tools/r8/internal/N8;II)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 187
    :cond_c
    sget-boolean p1, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez p1, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/2addr p0, v3

    if-lt p1, p0, :cond_d

    goto :goto_7

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_e
    :goto_7
    return-object v2
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 9

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 23
    iget-object p0, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x13

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    .line 25
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    .line 26
    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 27
    sget-boolean v3, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 28
    :cond_2
    :goto_1
    iget-object v3, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    goto/16 :goto_4

    .line 30
    :cond_3
    iget-object v3, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->N()Lcom/android/tools/r8/internal/hj;

    move-result-object v3

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v4

    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_4

    .line 34
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    if-ne v7, v1, :cond_6

    goto :goto_4

    .line 36
    :cond_6
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v8

    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {v5, v8}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    .line 39
    :cond_7
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 41
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    goto :goto_3

    .line 42
    :cond_8
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->l2()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 43
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->Q0()Lcom/android/tools/r8/internal/ar0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    :goto_3
    if-eq v7, v1, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v7, v0, 0x1

    .line 44
    iget-object v8, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lt v7, v8, :cond_a

    goto :goto_4

    .line 45
    :cond_a
    iget-object v8, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 46
    invoke-static {v1}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    if-eq v8, v7, :cond_5

    goto :goto_4

    .line 47
    :cond_b
    iget-object v5, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 48
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/lt0;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    .line 49
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    add-int/lit8 v0, v0, -0x2

    .line 50
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_c
    :goto_4
    add-int/2addr v0, p0

    goto/16 :goto_0

    .line 51
    :cond_d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v0, Lcom/android/tools/r8/internal/yn;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/yn;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/cB;)V

    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object p1

    .line 55
    :cond_e
    :goto_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 56
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 57
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 58
    :cond_f
    sget-boolean p1, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez p1, :cond_11

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne v2, p0, :cond_10

    goto :goto_6

    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_11
    :goto_6
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Fn;
    .locals 4

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v2

    .line 103
    instance-of v3, v2, Lcom/android/tools/r8/internal/An;

    if-nez v3, :cond_0

    return-object v2

    .line 104
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 105
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_5

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v0

    instance-of v0, v0, Lcom/android/tools/r8/internal/An;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 107
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    :goto_2
    if-eq v1, p1, :cond_6

    .line 109
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    goto :goto_2

    .line 110
    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Fn;

    move-result-object p1

    return-object p1

    :cond_7
    if-nez v0, :cond_9

    .line 112
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 113
    :cond_9
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Fn;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;
    .locals 1

    .line 92
    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_1

    .line 93
    iget v0, p1, Lcom/android/tools/r8/internal/zE;->g:I

    if-ltz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    .line 96
    iget p1, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 97
    div-int/lit8 p1, p1, 0x2

    .line 98
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/eA;)Ljava/util/ArrayList;
    .locals 10

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v3, p0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v3, v3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_0
    move-object v5, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 118
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v8

    .line 119
    sget-boolean v9, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/N8;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 120
    :cond_3
    :goto_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/N8;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 121
    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/eA;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 122
    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v0

    check-cast v7, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/tools/r8/internal/N8;

    goto :goto_2

    .line 123
    :cond_4
    iget v5, p1, Lcom/android/tools/r8/internal/eA;->f:I

    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 125
    invoke-virtual {p1, v8, v5, v7}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 126
    :goto_2
    iget-object v5, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    .line 127
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v5

    .line 128
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v7

    .line 129
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v5

    .line 130
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Fn;->b()I

    move-result v7

    add-int/2addr v7, v9

    .line 131
    new-instance v9, Lcom/android/tools/r8/internal/Jn;

    invoke-direct {v9, v8, v5, v7}, Lcom/android/tools/r8/internal/Jn;-><init>(Lcom/android/tools/r8/internal/N8;II)V

    .line 132
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v7

    if-nez v7, :cond_0

    .line 135
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 136
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Fn;->b()I

    move-result v6

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/tools/r8/internal/Jn;->d:I

    goto/16 :goto_0

    .line 137
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v1

    .line 138
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/bL0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/bL0;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v3, "Expected to find a possibly throwing instruction"

    if-ge v7, v0, :cond_f

    if-eqz v4, :cond_b

    add-int/lit8 v0, v7, -0x1

    .line 141
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 142
    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 143
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_a

    .line 144
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fn;->b()I

    move-result v0

    add-int/2addr v0, v3

    .line 147
    iput v0, v4, Lcom/android/tools/r8/internal/Jn;->d:I

    goto :goto_5

    .line 148
    :cond_9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    goto :goto_4

    .line 149
    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_b
    :goto_5
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/internal/Jn;

    .line 151
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 154
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 155
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v0

    iput v0, v4, Lcom/android/tools/r8/internal/Jn;->c:I

    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 157
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Jn;

    .line 158
    iget v3, v4, Lcom/android/tools/r8/internal/Jn;->d:I

    iget v5, v0, Lcom/android/tools/r8/internal/Jn;->c:I

    if-ne v3, v5, :cond_8

    iget-object v3, v4, Lcom/android/tools/r8/internal/Jn;->b:Lcom/android/tools/r8/internal/N8;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Jn;->b:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/N8;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_3

    .line 159
    :cond_e
    iget v0, v0, Lcom/android/tools/r8/internal/Jn;->d:I

    iput v0, v4, Lcom/android/tools/r8/internal/Jn;->d:I

    goto :goto_6

    .line 160
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 161
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 162
    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 163
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_11

    .line 164
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Fn;->b()I

    move-result v0

    add-int/2addr v0, v1

    .line 167
    iput v0, v4, Lcom/android/tools/r8/internal/Jn;->d:I

    return-object p1

    .line 168
    :cond_10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    goto :goto_7

    .line 169
    :cond_11
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->x:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    new-instance v1, Lcom/android/tools/r8/internal/aL0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/aL0;-><init>(Lcom/android/tools/r8/internal/Kn;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/cB;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Y5;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 63
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 64
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    instance-of v0, v0, Lcom/android/tools/r8/internal/B60$c;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kn;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/NJ;->v2()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 70
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    if-ne v1, p3, :cond_3

    .line 75
    iget-object v0, p3, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 76
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 77
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    .line 80
    new-instance v0, Lcom/android/tools/r8/internal/hj;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hj;-><init>()V

    .line 81
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    if-nez v0, :cond_2

    .line 2
    sget-boolean p1, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void

    .line 4
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_6
    :goto_2
    iget v1, p0, Lcom/android/tools/r8/internal/Kn;->k:I

    .line 7
    sget-boolean v2, Lcom/android/tools/r8/internal/Fn;->d:Z

    if-nez v2, :cond_8

    if-ltz v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_8
    :goto_3
    iget v3, p0, Lcom/android/tools/r8/internal/Kn;->j:I

    if-nez v2, :cond_a

    if-ltz v3, :cond_9

    goto :goto_4

    .line 9
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_a
    :goto_4
    iput v3, p2, Lcom/android/tools/r8/internal/Fn;->c:I

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Fn;->d()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/internal/Kn;->k:I

    .line 12
    iget v1, p0, Lcom/android/tools/r8/internal/Kn;->j:I

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Fn;->c()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/internal/Kn;->j:I

    if-nez v0, :cond_c

    .line 13
    iget v0, p1, Lcom/android/tools/r8/internal/zE;->g:I

    if-ltz v0, :cond_b

    goto :goto_5

    .line 14
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_c
    :goto_5
    instance-of v0, p2, Lcom/android/tools/r8/internal/An;

    if-nez v0, :cond_d

    .line 16
    iput-object p2, p0, Lcom/android/tools/r8/internal/Kn;->m:Lcom/android/tools/r8/internal/Fn;

    .line 17
    :cond_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    .line 18
    iget p1, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 19
    div-int/lit8 p1, p1, 0x2

    .line 20
    aput-object p2, v0, p1

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V
    .locals 2

    .line 83
    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 84
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Cn;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Cn;-><init>(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn;->c:Lcom/android/tools/r8/internal/t8;

    .line 86
    iget-object v1, v0, Lcom/android/tools/r8/internal/t8;->a:Lcom/android/tools/r8/internal/v8;

    .line 87
    iget-object v1, v1, Lcom/android/tools/r8/internal/v8;->a:Ljava/util/Map;

    .line 88
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/s8;

    if-eqz p1, :cond_2

    .line 89
    iget-object v0, v0, Lcom/android/tools/r8/internal/t8;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final varargs a(Lcom/android/tools/r8/internal/zE;[Lcom/android/tools/r8/internal/Np;)V
    .locals 1

    .line 90
    sget-boolean v0, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 91
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Hn;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Hn;-><init>(Lcom/android/tools/r8/internal/zE;[Lcom/android/tools/r8/internal/Np;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/J0;
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :cond_0
    iget-object v4, v0, Lcom/android/tools/r8/internal/Kn;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v4, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    iget-object v6, v0, Lcom/android/tools/r8/internal/Kn;->i:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v8, v8, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v9

    iget-object v10, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v10, v10, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-static {v8, v9, v10, v7}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    sget-boolean v9, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v9, :cond_4

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v10

    if-ne v10, v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    :goto_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v10

    if-nez v9, :cond_6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-interface {v10, v11, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v5, v8}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    if-nez v9, :cond_8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v10

    if-ne v10, v6, :cond_7

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    :goto_3
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v10

    if-nez v9, :cond_a

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_a
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-interface {v10, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/EB;->a(Lcom/android/tools/r8/internal/W5;)V

    iget-object v5, v6, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v5

    iput-object v5, v6, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-interface {v4, v8}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    :goto_5
    iget-object v4, v0, Lcom/android/tools/r8/internal/Kn;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/Kn;->a()V

    iget-object v4, v0, Lcom/android/tools/r8/internal/Kn;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lcom/android/tools/r8/internal/Kn;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lcom/android/tools/r8/internal/Kn;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    iput v1, v0, Lcom/android/tools/r8/internal/Kn;->j:I

    iput v1, v0, Lcom/android/tools/r8/internal/Kn;->k:I

    iget-object v4, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    iget v8, v6, Lcom/android/tools/r8/internal/zE;->g:I

    if-ne v8, v7, :cond_c

    iget v8, v4, Lcom/android/tools/r8/internal/fB;->h:I

    sget-boolean v9, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v9, :cond_e

    if-eq v8, v7, :cond_d

    goto :goto_7

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    :goto_7
    iput v8, v6, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/2addr v8, v2

    iput v8, v4, Lcom/android/tools/r8/internal/fB;->h:I

    goto :goto_6

    :cond_f
    iget v4, v4, Lcom/android/tools/r8/internal/fB;->h:I

    div-int/2addr v4, v2

    new-array v4, v4, [Lcom/android/tools/r8/internal/Fn;

    iput-object v4, v0, Lcom/android/tools/r8/internal/Kn;->l:[Lcom/android/tools/r8/internal/Fn;

    iput v1, v0, Lcom/android/tools/r8/internal/Kn;->n:I

    iput v1, v0, Lcom/android/tools/r8/internal/Kn;->o:I

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/tools/r8/internal/Kn;->q:Lcom/android/tools/r8/internal/W5;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v5

    sget-boolean v6, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v6, :cond_11

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_8

    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_11
    :goto_8
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    :cond_12
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    goto :goto_9

    :cond_13
    move-object v8, v4

    :goto_9
    iput-object v8, v0, Lcom/android/tools/r8/internal/Kn;->q:Lcom/android/tools/r8/internal/W5;

    iget-object v6, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/Kn;)V

    goto :goto_a

    :cond_14
    iget-object v6, v0, Lcom/android/tools/r8/internal/Kn;->q:Lcom/android/tools/r8/internal/W5;

    if-nez v6, :cond_12

    iget-object v5, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    move v8, v6

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v10, Lcom/android/tools/r8/internal/Fn;->d:Z

    if-nez v10, :cond_16

    if-ltz v8, :cond_15

    goto :goto_c

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_16
    :goto_c
    iput v8, v9, Lcom/android/tools/r8/internal/Fn;->b:I

    invoke-virtual {v9, v0}, Lcom/android/tools/r8/internal/Fn;->a(Lcom/android/tools/r8/internal/Kn;)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v6, v3

    goto :goto_b

    :cond_17
    iget-object v5, v0, Lcom/android/tools/r8/internal/Kn;->i:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/tools/r8/graph/U0;

    iget-object v9, v0, Lcom/android/tools/r8/internal/Kn;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    invoke-direct {v5, v9, v10}, Lcom/android/tools/r8/graph/U0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v0, Lcom/android/tools/r8/internal/Kn;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v15, v1

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v0, v9}, Lcom/android/tools/r8/internal/Fn;->a(Lcom/android/tools/r8/internal/Kn;Ljava/util/ArrayList;)V

    move v14, v15

    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v13, v12, :cond_18

    add-int/lit8 v12, v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v13, v14}, Lcom/android/tools/r8/internal/Np;->e(I)V

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v13

    add-int/2addr v14, v13

    move v13, v12

    goto :goto_e

    :cond_18
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    iget-object v12, v12, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v12

    if-ne v12, v10, :cond_19

    move v12, v3

    goto :goto_f

    :cond_19
    move v12, v1

    :goto_f
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v13

    if-ne v13, v10, :cond_1a

    move/from16 v17, v3

    goto :goto_10

    :cond_1a
    move/from16 v17, v1

    :goto_10
    if-eqz v12, :cond_2d

    sget-boolean v12, Lcom/android/tools/r8/graph/U0;->o:Z

    if-nez v12, :cond_1c

    iget-object v13, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    if-nez v13, :cond_1b

    goto :goto_11

    :cond_1b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1c
    :goto_11
    if-nez v12, :cond_1e

    iget-boolean v13, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    if-nez v13, :cond_1d

    goto :goto_12

    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1e
    :goto_12
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    iget-object v13, v13, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    if-nez v13, :cond_1f

    sget-object v2, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    iput-object v2, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    goto :goto_13

    :cond_1f
    new-instance v2, Lcom/android/tools/r8/internal/dH;

    iget v4, v13, Lcom/android/tools/r8/internal/dH;->h:I

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    invoke-virtual {v2, v13}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    iput-object v2, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    iput-boolean v3, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    :goto_13
    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    if-nez v2, :cond_2c

    if-nez v12, :cond_21

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_20

    goto :goto_14

    :cond_20
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_21
    :goto_14
    if-nez v12, :cond_23

    if-nez v2, :cond_22

    goto :goto_15

    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_23
    :goto_15
    if-nez v12, :cond_25

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->e:Lcom/android/tools/r8/internal/Q;

    if-nez v2, :cond_24

    goto :goto_16

    :cond_24
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_25
    :goto_16
    if-nez v12, :cond_27

    iget v2, v5, Lcom/android/tools/r8/graph/U0;->n:I

    if-ne v2, v7, :cond_26

    goto :goto_17

    :cond_26
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_27
    :goto_17
    if-nez v13, :cond_28

    sget-object v2, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    iput-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    iput-object v2, v5, Lcom/android/tools/r8/graph/U0;->e:Lcom/android/tools/r8/internal/Q;

    goto/16 :goto_19

    :cond_28
    new-instance v2, Lcom/android/tools/r8/internal/dH;

    invoke-direct {v2, v11}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/aH;

    new-instance v4, Lcom/android/tools/r8/internal/WG;

    iget-object v2, v2, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    :cond_29
    :goto_18
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/RG;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/j0;

    iget-object v11, v11, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    if-nez v11, :cond_2a

    iget-object v11, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    invoke-interface {v11, v12, v2}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_2a
    iget-object v11, v5, Lcom/android/tools/r8/graph/U0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v11, v11, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v11, v11, Lcom/android/tools/r8/internal/nJ$p;->V0:Z

    if-eqz v11, :cond_29

    iget-object v11, v5, Lcom/android/tools/r8/graph/U0;->m:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/tools/r8/graph/O0$d;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v13

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/android/tools/r8/graph/j0;

    iget-object v7, v1, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v12, v13, v7, v3, v1}, Lcom/android/tools/r8/graph/O0$d;-><init>(ILcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    invoke-interface {v1, v3, v2}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, -0x1

    goto :goto_18

    :cond_2b
    new-instance v1, Lcom/android/tools/r8/internal/dH;

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    iput-object v1, v5, Lcom/android/tools/r8/graph/U0;->e:Lcom/android/tools/r8/internal/Q;

    :cond_2c
    :goto_19
    iget-object v1, v5, Lcom/android/tools/r8/graph/U0;->g:Lcom/android/tools/r8/internal/B60;

    if-nez v1, :cond_2d

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    iput-object v1, v5, Lcom/android/tools/r8/graph/U0;->g:Lcom/android/tools/r8/internal/B60;

    :cond_2d
    sget-boolean v1, Lcom/android/tools/r8/graph/U0;->o:Z

    if-nez v1, :cond_2f

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    if-eqz v2, :cond_2e

    goto :goto_1a

    :cond_2e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2f
    :goto_1a
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    if-eq v15, v14, :cond_30

    const/4 v3, 0x1

    goto :goto_1b

    :cond_30
    const/4 v3, 0x0

    :goto_1b
    if-nez v1, :cond_31

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ;->i1:Z

    invoke-virtual {v10, v4}, Lcom/android/tools/r8/internal/zE;->a(Z)V

    :cond_31
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v1

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_32

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v5, Lcom/android/tools/r8/graph/U0;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v5, Lcom/android/tools/r8/graph/U0;->d:Ljava/util/ArrayList;

    :cond_32
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-nez v2, :cond_33

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    :goto_1c
    move v7, v14

    goto/16 :goto_2a

    :cond_34
    instance-of v4, v10, Lcom/android/tools/r8/internal/fj;

    if-eqz v4, :cond_35

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/fj;->a(Lcom/android/tools/r8/internal/SG;)Z

    goto :goto_1c

    :cond_35
    if-eqz v3, :cond_33

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v5, Lcom/android/tools/r8/graph/U0;->j:Lcom/android/tools/r8/internal/B60;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v5, Lcom/android/tools/r8/graph/U0;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v3, :cond_37

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v3

    if-nez v3, :cond_37

    iget-boolean v3, v5, Lcom/android/tools/r8/graph/U0;->l:Z

    if-eqz v3, :cond_36

    goto :goto_1e

    :cond_36
    :goto_1d
    move v7, v14

    move v3, v15

    goto/16 :goto_25

    :cond_37
    :goto_1e
    if-nez v1, :cond_39

    iget-object v3, v5, Lcom/android/tools/r8/graph/U0;->j:Lcom/android/tools/r8/internal/B60;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_1f

    :cond_38
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_39
    :goto_1f
    iget v3, v5, Lcom/android/tools/r8/graph/U0;->n:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3d

    if-nez v1, :cond_3b

    iget-object v3, v5, Lcom/android/tools/r8/graph/U0;->j:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_20

    :cond_3a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3b
    :goto_20
    instance-of v3, v2, Lcom/android/tools/r8/internal/B60$c;

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_1d

    :cond_3c
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v3

    iput v3, v5, Lcom/android/tools/r8/graph/U0;->n:I

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/B60$b$a;

    iget-object v7, v3, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/B60$b$a;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/B60;->f:Z

    iput-boolean v3, v4, Lcom/android/tools/r8/internal/B60$a;->e:Z

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object v3

    iput-object v3, v5, Lcom/android/tools/r8/graph/U0;->j:Lcom/android/tools/r8/internal/B60;

    :cond_3d
    if-nez v1, :cond_3f

    iget v3, v5, Lcom/android/tools/r8/graph/U0;->i:I

    if-eq v3, v15, :cond_3e

    goto :goto_21

    :cond_3e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3f
    :goto_21
    iget v3, v5, Lcom/android/tools/r8/graph/U0;->i:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_40

    const/4 v10, 0x0

    goto :goto_22

    :cond_40
    move v10, v3

    :goto_22
    iget-object v11, v5, Lcom/android/tools/r8/graph/U0;->j:Lcom/android/tools/r8/internal/B60;

    iget-object v3, v5, Lcom/android/tools/r8/graph/U0;->m:Ljava/util/ArrayList;

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->b:Lcom/android/tools/r8/graph/u1;

    const/16 v16, 0x0

    move v12, v15

    move-object v13, v2

    move v7, v14

    move-object v14, v3

    move v3, v15

    move-object v15, v4

    invoke-static/range {v10 .. v16}, Lcom/android/tools/r8/graph/U0;->a(ILcom/android/tools/r8/internal/B60;ILcom/android/tools/r8/internal/B60;Ljava/util/List;Lcom/android/tools/r8/graph/u1;Z)V

    iput v3, v5, Lcom/android/tools/r8/graph/U0;->i:I

    iput-object v2, v5, Lcom/android/tools/r8/graph/U0;->j:Lcom/android/tools/r8/internal/B60;

    iget-boolean v2, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    if-nez v2, :cond_41

    const/4 v2, 0x0

    goto :goto_23

    :cond_41
    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    invoke-static {v2, v4}, Lcom/android/tools/r8/graph/j0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    iput-boolean v2, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    :goto_23
    if-eqz v2, :cond_42

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    iget-object v10, v5, Lcom/android/tools/r8/graph/U0;->e:Lcom/android/tools/r8/internal/Q;

    iget-object v11, v5, Lcom/android/tools/r8/graph/U0;->m:Ljava/util/ArrayList;

    iget-object v12, v5, Lcom/android/tools/r8/graph/U0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v4, v10, v11, v12}, Lcom/android/tools/r8/graph/U0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;)V

    if-nez v1, :cond_42

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    invoke-static {v2, v4}, Lcom/android/tools/r8/graph/j0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_42
    const/4 v2, 0x0

    goto :goto_24

    :cond_43
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :goto_24
    iput-boolean v2, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    :goto_25
    iget v2, v5, Lcom/android/tools/r8/graph/U0;->i:I

    if-eq v2, v3, :cond_4c

    iget-boolean v2, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    if-nez v2, :cond_44

    const/4 v2, 0x0

    goto :goto_26

    :cond_44
    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    invoke-static {v2, v4}, Lcom/android/tools/r8/graph/j0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    iput-boolean v2, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    :goto_26
    if-eqz v2, :cond_4c

    if-nez v1, :cond_46

    iget v2, v5, Lcom/android/tools/r8/graph/U0;->i:I

    if-eq v2, v3, :cond_45

    goto :goto_27

    :cond_45
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_46
    :goto_27
    iget v2, v5, Lcom/android/tools/r8/graph/U0;->i:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_47

    move v15, v3

    goto :goto_28

    :cond_47
    sub-int v15, v3, v2

    :goto_28
    if-nez v1, :cond_49

    if-gtz v15, :cond_49

    if-ne v2, v4, :cond_48

    goto :goto_29

    :cond_48
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_49
    :goto_29
    if-lez v15, :cond_4a

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->m:Ljava/util/ArrayList;

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v15}, Lcom/android/tools/r8/graph/u1;->b(I)Lcom/android/tools/r8/graph/O0$a;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    iput v3, v5, Lcom/android/tools/r8/graph/U0;->i:I

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    iget-object v3, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    iget-object v4, v5, Lcom/android/tools/r8/graph/U0;->e:Lcom/android/tools/r8/internal/Q;

    iget-object v10, v5, Lcom/android/tools/r8/graph/U0;->m:Ljava/util/ArrayList;

    iget-object v11, v5, Lcom/android/tools/r8/graph/U0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v3, v4, v10, v11}, Lcom/android/tools/r8/graph/U0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;)V

    const/4 v2, 0x0

    iput-boolean v2, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    if-nez v1, :cond_4c

    iget-object v1, v5, Lcom/android/tools/r8/graph/U0;->k:Lcom/android/tools/r8/internal/Q;

    iget-object v2, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/j0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_2a

    :cond_4b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4c
    :goto_2a
    const/4 v1, 0x0

    if-eqz v17, :cond_4d

    iput-object v1, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    const/4 v2, 0x0

    iput-boolean v2, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    :cond_4d
    move-object v4, v1

    move v15, v7

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v7, -0x1

    goto/16 :goto_d

    :cond_4e
    move-object v1, v4

    iget-object v2, v0, Lcom/android/tools/r8/internal/Kn;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/tools/r8/internal/Ds;

    if-eqz v3, :cond_4f

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/Kn;->p:Z

    if-eqz v3, :cond_4f

    invoke-static {v9, v2}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v4

    new-instance v6, Lcom/android/tools/r8/internal/qp;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v7

    add-int/2addr v7, v2

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/qp;-><init>(I)V

    new-instance v7, Lcom/android/tools/r8/internal/qp;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v8

    neg-int v8, v8

    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/qp;-><init>(I)V

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/Np;->e(I)V

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Np;->e(I)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/Np;->e(I)V

    add-int/2addr v8, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    iget-object v2, v0, Lcom/android/tools/r8/internal/Kn;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_5c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    add-int/2addr v4, v7

    check-cast v6, Lcom/android/tools/r8/internal/In;

    const/4 v10, 0x2

    rem-int/lit8 v12, v8, 0x2

    if-eqz v12, :cond_50

    new-instance v10, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/kr;-><init>()V

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/Np;->e(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v12

    :cond_50
    iget-object v7, v6, Lcom/android/tools/r8/internal/In;->a:Lcom/android/tools/r8/internal/tI;

    iget-object v6, v6, Lcom/android/tools/r8/internal/In;->b:Lcom/android/tools/r8/internal/jp;

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v10

    sub-int v10, v8, v10

    iput v10, v6, Lcom/android/tools/r8/internal/jp;->g:I

    iget-object v6, v7, Lcom/android/tools/r8/internal/ar0;->l:[I

    array-length v10, v6

    new-array v12, v10, [I

    const/4 v13, 0x0

    :goto_2c
    array-length v14, v6

    if-ge v13, v14, :cond_51

    invoke-virtual {v7, v13}, Lcom/android/tools/r8/internal/ar0;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v14

    iget-object v14, v14, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v14

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v15

    sub-int/2addr v14, v15

    aput v14, v12, v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_2c

    :cond_51
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ar0;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    iget-object v6, v6, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v6

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v13

    sub-int/2addr v6, v13

    sget-object v13, Lcom/android/tools/r8/internal/uJ;->b:Lcom/android/tools/r8/internal/uJ;

    sget-boolean v14, Lcom/android/tools/r8/internal/tI;->p:Z

    if-nez v14, :cond_53

    iget-object v15, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    array-length v15, v15

    if-ne v15, v10, :cond_52

    goto :goto_2d

    :cond_52
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_53
    :goto_2d
    invoke-virtual {v7, v13}, Lcom/android/tools/r8/internal/tI;->a(Lcom/android/tools/r8/internal/uJ;)Z

    move-result v13

    if-eqz v13, :cond_59

    iget-object v13, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    invoke-static {v13}, Lcom/android/tools/r8/internal/tI;->a([I)J

    move-result-wide v13

    long-to-int v13, v13

    if-ne v10, v13, :cond_54

    new-instance v6, Lcom/android/tools/r8/internal/ur;

    iget-object v7, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    const/16 v18, 0x0

    aget v7, v7, v18

    invoke-direct {v6, v12, v7}, Lcom/android/tools/r8/internal/ur;-><init>([II)V

    goto :goto_32

    :cond_54
    const/16 v18, 0x0

    new-array v10, v13, [I

    move/from16 v14, v18

    move v15, v14

    :goto_2e
    if-ge v14, v13, :cond_56

    iget-object v1, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    aget v16, v1, v18

    add-int v11, v16, v14

    aget v1, v1, v15

    if-ne v1, v11, :cond_55

    aget v1, v12, v15

    aput v1, v10, v14

    const/4 v1, 0x1

    add-int/2addr v15, v1

    goto :goto_2f

    :cond_55
    const/4 v1, 0x1

    aput v6, v10, v14

    :goto_2f
    add-int/2addr v14, v1

    const/4 v1, 0x0

    const/16 v11, 0x10

    const/16 v18, 0x0

    goto :goto_2e

    :cond_56
    sget-boolean v1, Lcom/android/tools/r8/internal/tI;->p:Z

    if-nez v1, :cond_58

    iget-object v1, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    array-length v1, v1

    if-ne v15, v1, :cond_57

    goto :goto_30

    :cond_57
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_58
    :goto_30
    new-instance v6, Lcom/android/tools/r8/internal/ur;

    iget-object v1, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    const/4 v7, 0x0

    aget v1, v1, v7

    invoke-direct {v6, v10, v1}, Lcom/android/tools/r8/internal/ur;-><init>([II)V

    goto :goto_32

    :cond_59
    if-nez v14, :cond_5b

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ar0;->v2()I

    move-result v1

    iget-object v6, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    array-length v6, v6

    if-ne v1, v6, :cond_5a

    goto :goto_31

    :cond_5a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5b
    :goto_31
    new-instance v6, Lcom/android/tools/r8/internal/ms;

    iget-object v1, v7, Lcom/android/tools/r8/internal/tI;->o:[I

    invoke-direct {v6, v1, v12}, Lcom/android/tools/r8/internal/ms;-><init>([I[I)V

    :goto_32
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/Np;->e(I)V

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tn;->y()I

    move-result v1

    add-int/2addr v8, v1

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/16 v11, 0x10

    goto/16 :goto_2b

    :cond_5c
    iget-object v1, v0, Lcom/android/tools/r8/internal/Kn;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v2, :cond_5e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    add-int/2addr v3, v6

    check-cast v4, Lcom/android/tools/r8/internal/Bn;

    const/4 v7, 0x2

    rem-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_5d

    new-instance v7, Lcom/android/tools/r8/internal/kr;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/kr;-><init>()V

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/Np;->e(I)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v10

    :cond_5d
    iget-object v6, v4, Lcom/android/tools/r8/internal/Bn;->a:Lcom/android/tools/r8/internal/rZ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/tools/r8/internal/Ko;

    iget v10, v6, Lcom/android/tools/r8/internal/rZ;->k:I

    iget-wide v11, v6, Lcom/android/tools/r8/internal/rZ;->l:J

    iget-object v6, v6, Lcom/android/tools/r8/internal/rZ;->m:[S

    invoke-direct {v7, v10, v11, v12, v6}, Lcom/android/tools/r8/internal/Ko;-><init>(IJ[S)V

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/Np;->e(I)V

    iget-object v4, v4, Lcom/android/tools/r8/internal/Bn;->b:Lcom/android/tools/r8/internal/Jo;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v6

    sub-int v6, v8, v6

    iput v6, v4, Lcom/android/tools/r8/internal/jp;->g:I

    iget-object v4, v7, Lcom/android/tools/r8/internal/Ko;->i:[S

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v8, v4

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_5e
    new-instance v1, Lcom/android/tools/r8/internal/eA;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/eA;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/android/tools/r8/internal/Kn;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcom/android/tools/r8/graph/J0$a;

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v3, :cond_5f

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Jn;

    new-instance v8, Lcom/android/tools/r8/graph/J0$a;

    iget v10, v7, Lcom/android/tools/r8/internal/Jn;->c:I

    iget v11, v7, Lcom/android/tools/r8/internal/Jn;->d:I

    sub-int/2addr v11, v10

    const/4 v12, -0x1

    invoke-direct {v8, v10, v11, v12}, Lcom/android/tools/r8/graph/J0$a;-><init>(III)V

    iget-object v7, v7, Lcom/android/tools/r8/internal/Jn;->b:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/android/tools/r8/graph/J0$a;->e:I

    aput-object v8, v4, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_34

    :cond_5f
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/aA;

    iget-object v2, v1, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    iget v2, v2, Lcom/android/tools/r8/internal/eA;->f:I

    new-array v2, v2, [Lcom/android/tools/r8/graph/J0$b;

    const/4 v3, 0x0

    :goto_35
    iget-object v6, v1, Lcom/android/tools/r8/internal/aA;->b:Lcom/android/tools/r8/internal/eA;

    iget v6, v6, Lcom/android/tools/r8/internal/eA;->f:I

    if-ge v3, v6, :cond_64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/aA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/N8;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, -0x1

    const/4 v10, 0x0

    :goto_36
    iget-object v11, v6, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_63

    iget-object v11, v6, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/M2;

    iget-object v12, v6, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/W5;

    iget-object v12, v12, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/Fn;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v12

    iget-object v13, v0, Lcom/android/tools/r8/internal/Kn;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object v13, v13, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    if-ne v11, v13, :cond_62

    sget-boolean v8, Lcom/android/tools/r8/internal/Kn;->r:Z

    if-nez v8, :cond_61

    iget-object v8, v6, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    if-ne v10, v8, :cond_60

    goto :goto_37

    :cond_60
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_61
    :goto_37
    move v8, v12

    :goto_38
    const/4 v11, 0x1

    goto :goto_39

    :cond_62
    new-instance v13, Lcom/android/tools/r8/graph/J0$b$a;

    invoke-direct {v13, v12, v11}, Lcom/android/tools/r8/graph/J0$b$a;-><init>(ILcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :goto_39
    add-int/2addr v10, v11

    goto :goto_36

    :cond_63
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v6, v10, [Lcom/android/tools/r8/graph/J0$b$a;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/tools/r8/graph/J0$b$a;

    new-instance v7, Lcom/android/tools/r8/graph/J0$b;

    invoke-direct {v7, v6, v8}, Lcom/android/tools/r8/graph/J0$b;-><init>([Lcom/android/tools/r8/graph/J0$b$a;I)V

    aput-object v7, v2, v3

    add-int/2addr v3, v11

    goto :goto_35

    :cond_64
    new-instance v1, Lcom/android/tools/r8/graph/J0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/mS;->d()I

    move-result v20

    iget v3, v0, Lcom/android/tools/r8/internal/Kn;->n:I

    iget v6, v0, Lcom/android/tools/r8/internal/Kn;->o:I

    sget-object v7, Lcom/android/tools/r8/internal/Np;->c:[Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v23, v7

    check-cast v23, [Lcom/android/tools/r8/internal/Np;

    sget-boolean v7, Lcom/android/tools/r8/graph/U0;->o:Z

    if-nez v7, :cond_66

    iget-object v8, v5, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    if-nez v8, :cond_65

    goto :goto_3a

    :cond_65
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_66
    :goto_3a
    if-nez v7, :cond_68

    iget-boolean v8, v5, Lcom/android/tools/r8/graph/U0;->h:Z

    if-nez v8, :cond_67

    goto :goto_3b

    :cond_67
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_68
    :goto_3b
    if-nez v7, :cond_6a

    iget-object v8, v5, Lcom/android/tools/r8/graph/U0;->g:Lcom/android/tools/r8/internal/B60;

    if-eqz v8, :cond_69

    goto :goto_3c

    :cond_69
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6a
    :goto_3c
    iget v8, v5, Lcom/android/tools/r8/graph/U0;->n:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6c

    iget-object v7, v5, Lcom/android/tools/r8/graph/U0;->g:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v7

    if-nez v7, :cond_6b

    const/16 v26, 0x0

    goto/16 :goto_42

    :cond_6b
    new-instance v7, Lcom/android/tools/r8/graph/W0$a;

    iget-object v8, v5, Lcom/android/tools/r8/graph/U0;->g:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v8

    iget-object v9, v5, Lcom/android/tools/r8/graph/U0;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v9

    new-array v9, v9, [Lcom/android/tools/r8/graph/L2;

    iget-object v10, v5, Lcom/android/tools/r8/graph/U0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v11, v5, Lcom/android/tools/r8/graph/U0;->g:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/graph/S0;

    move-result-object v10

    iget-object v5, v5, Lcom/android/tools/r8/graph/U0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->r:Lcom/android/tools/r8/graph/O0$b;

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/android/tools/r8/graph/O0;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v10, 0x1

    aput-object v5, v11, v10

    invoke-direct {v7, v8, v9, v11}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    :goto_3d
    move-object/from16 v26, v7

    goto/16 :goto_42

    :cond_6c
    const/4 v12, 0x0

    iget-object v8, v5, Lcom/android/tools/r8/graph/U0;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v8

    new-array v9, v8, [Lcom/android/tools/r8/graph/L2;

    iget-object v10, v5, Lcom/android/tools/r8/graph/U0;->d:Ljava/util/ArrayList;

    if-eqz v10, :cond_71

    if-nez v7, :cond_6e

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v8, v7, :cond_6d

    goto :goto_3e

    :cond_6d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6e
    :goto_3e
    iget-object v7, v5, Lcom/android/tools/r8/graph/U0;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v12, v7, :cond_71

    iget-object v7, v5, Lcom/android/tools/r8/graph/U0;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j0;

    if-eqz v7, :cond_70

    iget-object v8, v7, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    if-eqz v8, :cond_6f

    goto :goto_3f

    :cond_6f
    iget-object v7, v7, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    goto :goto_40

    :cond_70
    :goto_3f
    const/4 v7, 0x0

    :goto_40
    aput-object v7, v9, v12

    const/4 v7, 0x1

    add-int/2addr v12, v7

    goto :goto_3e

    :cond_71
    sget-boolean v7, Lcom/android/tools/r8/graph/U0;->o:Z

    if-nez v7, :cond_73

    iget-object v7, v5, Lcom/android/tools/r8/graph/U0;->m:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/tools/r8/graph/O0;

    invoke-static {v7}, Lcom/android/tools/r8/internal/to;->a([Lcom/android/tools/r8/graph/O0;)Z

    move-result v7

    if-eqz v7, :cond_72

    goto :goto_41

    :cond_72
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_73
    :goto_41
    new-instance v7, Lcom/android/tools/r8/graph/W0$a;

    iget v8, v5, Lcom/android/tools/r8/graph/U0;->n:I

    iget-object v5, v5, Lcom/android/tools/r8/graph/U0;->m:Ljava/util/ArrayList;

    sget-object v10, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/tools/r8/graph/O0;

    invoke-direct {v7, v8, v9, v5}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    goto :goto_3d

    :goto_42
    iget-object v5, v0, Lcom/android/tools/r8/internal/Kn;->c:Lcom/android/tools/r8/internal/t8;

    iget-object v7, v5, Lcom/android/tools/r8/internal/t8;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v7}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_74

    sget-object v5, Lcom/android/tools/r8/internal/u8;->b:Lcom/android/tools/r8/internal/u8;

    move-object/from16 v27, v5

    goto :goto_43

    :cond_74
    new-instance v7, Lcom/android/tools/r8/internal/u8;

    iget-object v5, v5, Lcom/android/tools/r8/internal/t8;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v7, v5}, Lcom/android/tools/r8/internal/u8;-><init>(Ljava/util/Map;)V

    move-object/from16 v27, v7

    :goto_43
    move-object/from16 v19, v1

    move/from16 v21, v3

    move/from16 v22, v6

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    invoke-direct/range {v19 .. v27}, Lcom/android/tools/r8/graph/J0;-><init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/u8;)V

    return-object v1
.end method
