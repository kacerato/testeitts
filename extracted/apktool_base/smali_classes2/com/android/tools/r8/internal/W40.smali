.class public final Lcom/android/tools/r8/internal/W40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/android/tools/r8/graph/M2;

.field public f:Lcom/android/tools/r8/graph/I2;

.field public final synthetic g:Lcom/android/tools/r8/internal/f50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/f50;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/M2;II)V
    .locals 7

    iput-object p1, p0, Lcom/android/tools/r8/internal/W40;->g:Lcom/android/tools/r8/internal/f50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    :goto_0
    if-ge p6, p7, :cond_13

    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->l1()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_9

    :cond_1
    instance-of p1, p1, Lcom/android/tools/r8/internal/C4;

    if-eqz p1, :cond_2

    goto/16 :goto_9

    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/W40;->h:Z

    if-eqz p1, :cond_3

    goto/16 :goto_9

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Unexpected type of instruction in outlining template."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result p4

    if-eqz p4, :cond_c

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object p1

    new-instance p4, Lcom/android/tools/r8/internal/T40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result p5

    if-eqz p5, :cond_5

    sget-object p5, Lcom/android/tools/r8/internal/Y40;->b:Lcom/android/tools/r8/internal/Y40;

    goto :goto_2

    :cond_5
    instance-of p5, p1, Lcom/android/tools/r8/internal/Qq0;

    if-eqz p5, :cond_6

    sget-object p5, Lcom/android/tools/r8/internal/Y40;->c:Lcom/android/tools/r8/internal/Y40;

    goto :goto_2

    :cond_6
    instance-of p5, p1, Lcom/android/tools/r8/internal/gY;

    if-eqz p5, :cond_7

    sget-object p5, Lcom/android/tools/r8/internal/Y40;->d:Lcom/android/tools/r8/internal/Y40;

    goto :goto_2

    :cond_7
    instance-of p5, p1, Lcom/android/tools/r8/internal/Ws;

    if-eqz p5, :cond_8

    sget-object p5, Lcom/android/tools/r8/internal/Y40;->e:Lcom/android/tools/r8/internal/Y40;

    goto :goto_2

    :cond_8
    instance-of p5, p1, Lcom/android/tools/r8/internal/if0;

    if-eqz p5, :cond_9

    sget-object p5, Lcom/android/tools/r8/internal/Y40;->f:Lcom/android/tools/r8/internal/Y40;

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result p5

    if-eqz p5, :cond_a

    sget-object p5, Lcom/android/tools/r8/internal/Y40;->g:Lcom/android/tools/r8/internal/Y40;

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result p5

    if-eqz p5, :cond_b

    sget-object p5, Lcom/android/tools/r8/internal/Y40;->h:Lcom/android/tools/r8/internal/Y40;

    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object p1

    invoke-direct {p4, p5, p1}, Lcom/android/tools/r8/internal/T40;-><init>(Lcom/android/tools/r8/internal/Y40;Lcom/android/tools/r8/internal/T10;)V

    goto/16 :goto_8

    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result p4

    if-eqz p4, :cond_d

    new-instance p4, Lcom/android/tools/r8/internal/V40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p4, p1}, Lcom/android/tools/r8/internal/V40;-><init>(Lcom/android/tools/r8/graph/M2;)V

    goto/16 :goto_8

    :cond_d
    sget-boolean p4, Lcom/android/tools/r8/internal/Z40;->b:Z

    if-nez p4, :cond_f

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result p4

    if-eqz p4, :cond_e

    goto :goto_3

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object p1

    iget-object p4, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array v4, p4, [Lcom/android/tools/r8/internal/Kw0;

    iget-object p4, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    if-ge v1, p5, :cond_10

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    aput-object v3, v4, v2

    move v2, v5

    goto :goto_4

    :cond_10
    new-instance p4, Lcom/android/tools/r8/internal/U40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    if-eqz p5, :cond_11

    const/4 p5, 0x1

    move v3, p5

    goto :goto_5

    :cond_11
    move v3, v0

    :goto_5
    instance-of p5, p1, Lcom/android/tools/r8/internal/YJ;

    if-eqz p5, :cond_12

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->h0()Lcom/android/tools/r8/internal/YJ;

    move-result-object p5

    iget-object p5, p5, Lcom/android/tools/r8/internal/YJ;->n:Lcom/android/tools/r8/graph/I2;

    :goto_6
    move-object v5, p5

    goto :goto_7

    :cond_12
    const/4 p5, 0x0

    goto :goto_6

    :goto_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v6

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/U40;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z[Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/graph/I2;Z)V

    :goto_8
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Z40;)Z
    .locals 0

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Z40;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    .line 4
    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-eq v5, v4, :cond_0

    return v3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v1, :cond_2

    return v3

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/ZZ0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ZZ0;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lcom/android/tools/r8/internal/W40;

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W40;->g:Lcom/android/tools/r8/internal/f50;

    iget-object v2, v2, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/W40;->g:Lcom/android/tools/r8/internal/f50;

    iget-object v3, v3, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v4, p1, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iput-object v2, p1, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    :cond_2
    iget-object v2, p1, Lcom/android/tools/r8/internal/W40;->f:Lcom/android/tools/r8/graph/I2;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v0, Lcom/android/tools/r8/internal/W40;->h:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W40;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return v1

    :cond_5
    sget-boolean v1, Lcom/android/tools/r8/internal/W40;->h:Z

    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz v4, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W40;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_2
    return v4

    :cond_a
    move v1, v0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Z40;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Z40;

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-eqz v6, :cond_d

    sget-boolean p1, Lcom/android/tools/r8/internal/W40;->h:Z

    if-nez p1, :cond_c

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Z40;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_4
    return v6

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_11

    sget-boolean v0, Lcom/android/tools/r8/internal/W40;->h:Z

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W40;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_5
    return v1

    :cond_11
    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    iget-object v2, p0, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_14

    sget-boolean v0, Lcom/android/tools/r8/internal/W40;->h:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W40;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_7

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_7
    return v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    sget-boolean v1, Lcom/android/tools/r8/internal/W40;->h:Z

    if-nez v1, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W40;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_8

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_17
    :goto_8
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/android/tools/r8/internal/W40;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/W40;

    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Z40;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Z40;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Z40;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Z40;

    shl-int/lit8 v2, v2, 0x4

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Z40;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " anOutline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W40;->b:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/tools/r8/internal/zq0$a;->b:Lcom/android/tools/r8/internal/zq0$a;

    const-string v4, ", "

    invoke-static {v1, v2, v4, v3}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/tools/r8/internal/W40;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const/16 v9, 0x14

    const-string v10, "v"

    if-ge v7, v5, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/Z40;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Z40;->b()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12, v9}, Lcom/android/tools/r8/internal/zq0;->b(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Z40;->d()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " <- "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v9, v6

    :goto_1
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Z40;->e()I

    move-result v12

    if-ge v9, v12, :cond_3

    if-lez v9, :cond_1

    move-object v12, v4

    goto :goto_2

    :cond_1
    const-string v12, ""

    :goto_2
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v8, v13

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Z40;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/W40;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/W40;->g:Lcom/android/tools/r8/internal/f50;

    iget-object v4, v4, Lcom/android/tools/r8/internal/f50;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v4, :cond_5

    const-string v0, "Return-Void"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string v3, "Return"

    invoke-static {v1, v3, v9}, Lcom/android/tools/r8/internal/zq0;->b(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
