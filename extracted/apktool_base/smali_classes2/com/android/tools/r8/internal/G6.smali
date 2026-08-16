.class public final Lcom/android/tools/r8/internal/G6;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/nC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance p1, Lcom/android/tools/r8/internal/kC;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    sget-object v0, Lcom/android/tools/r8/internal/F6;->c:Lcom/android/tools/r8/internal/w6;

    const-class v1, Lcom/android/tools/r8/internal/d2;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->d:Lcom/android/tools/r8/internal/x6;

    const-class v1, Lcom/android/tools/r8/internal/Qq0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->e:Lcom/android/tools/r8/internal/y6;

    const-class v1, Lcom/android/tools/r8/internal/gY;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->f:Lcom/android/tools/r8/internal/z6;

    const-class v1, Lcom/android/tools/r8/internal/Ws;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->g:Lcom/android/tools/r8/internal/F6;

    const-class v1, Lcom/android/tools/r8/internal/if0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->h:Lcom/android/tools/r8/internal/A6;

    const-class v1, Lcom/android/tools/r8/internal/t2;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->i:Lcom/android/tools/r8/internal/B6;

    const-class v1, Lcom/android/tools/r8/internal/A40;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->j:Lcom/android/tools/r8/internal/C6;

    const-class v1, Lcom/android/tools/r8/internal/fy0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->k:Lcom/android/tools/r8/internal/D6;

    const-class v1, Lcom/android/tools/r8/internal/Ol0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->l:Lcom/android/tools/r8/internal/E6;

    const-class v1, Lcom/android/tools/r8/internal/Sl0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    sget-object v0, Lcom/android/tools/r8/internal/F6;->m:Lcom/android/tools/r8/internal/v6;

    const-class v1, Lcom/android/tools/r8/internal/mw0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/G6;->e:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;
    .locals 9

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 31
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_c

    .line 34
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p0

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 36
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    move-object p0, v1

    .line 37
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 39
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 40
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 41
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_9

    if-nez p0, :cond_6

    move-object p0, v4

    goto :goto_2

    .line 42
    :cond_6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_8

    .line 43
    sget-boolean v3, Lcom/android/tools/r8/internal/G6;->f:Z

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    if-ne v3, v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    return-object v1

    .line 44
    :cond_9
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 45
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    return-object v1

    :cond_b
    return-object p0

    :cond_c
    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F6;)Lcom/android/tools/r8/internal/u6;
    .locals 2

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 9
    invoke-interface {p0, v0, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_1

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    .line 13
    :goto_1
    invoke-virtual {p3, v0, p0, p1, p2}, Lcom/android/tools/r8/internal/F6;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/u6;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/u6;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/qh;Ljava/lang/Integer;Lcom/android/tools/r8/internal/xw0;Ljava/lang/Integer;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 6

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result p2

    goto :goto_1

    .line 49
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/G6;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    instance-of v0, v0, Lcom/android/tools/r8/internal/tU;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qh;->v2()J

    move-result-wide v2

    long-to-int p2, v2

    int-to-long v4, p2

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 53
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 55
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->remove()V

    return v0

    :cond_4
    if-eqz p5, :cond_5

    .line 56
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 58
    invoke-interface {p1}, Lcom/android/tools/r8/internal/EE;->remove()V

    return v0

    :cond_5
    return v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BinopRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V
    .locals 8

    move-object v0, p2

    .line 14
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    instance-of v1, v1, Lcom/android/tools/r8/internal/uI;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    goto :goto_0

    .line 17
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    instance-of v1, v1, Lcom/android/tools/r8/internal/uI;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v1

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/android/tools/r8/internal/F6;->d(II)I

    move-result v0

    int-to-long v0, v0

    :goto_2
    move-wide v5, v0

    goto :goto_3

    .line 20
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/qh;->v2()J

    move-result-wide v1

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/qh;->v2()J

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/F6;->a(JJ)J

    move-result-wide v0

    goto :goto_2

    .line 21
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-object v0, p0

    .line 22
    iget-object v1, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    move-object v2, p1

    move-object/from16 v3, p8

    .line 24
    invoke-interface/range {v2 .. v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 25
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    if-eqz p7, :cond_2

    move-object v2, v1

    goto :goto_4

    :cond_2
    move-object v2, p6

    :goto_4
    move-object v3, p3

    if-eqz p7, :cond_3

    move-object v1, p6

    :cond_3
    move-object/from16 v4, p8

    .line 26
    invoke-static {v4, v2, v1, p3}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F6;)Lcom/android/tools/r8/internal/u6;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    .line 27
    invoke-interface {p1, v1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 28
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$p;->o:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/mB;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_32

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v1

    if-eqz v1, :cond_31

    instance-of v1, v0, Lcom/android/tools/r8/internal/se;

    if-nez v1, :cond_31

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-eq v0, v1, :cond_0

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v1, :cond_31

    :cond_0
    iget-object v0, v9, Lcom/android/tools/r8/internal/G6;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/tools/r8/internal/F6;

    sget-boolean v15, Lcom/android/tools/r8/internal/G6;->f:Z

    if-nez v15, :cond_2

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    const/16 v16, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/F6;->b(Z)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/F6;->a(Z)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    move-object v0, v8

    move-object v1, v11

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/u6;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/qh;Ljava/lang/Integer;Lcom/android/tools/r8/internal/xw0;Ljava/lang/Integer;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/F6;->d(Z)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/F6;->c(Z)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    move-object v0, v8

    move-object v1, v11

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/u6;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/qh;Ljava/lang/Integer;Lcom/android/tools/r8/internal/xw0;Ljava/lang/Integer;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_9

    instance-of v0, v8, Lcom/android/tools/r8/internal/fy0;

    if-nez v0, :cond_7

    instance-of v0, v8, Lcom/android/tools/r8/internal/Qq0;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, v8, Lcom/android/tools/r8/internal/t2;

    if-nez v0, :cond_6

    instance-of v0, v8, Lcom/android/tools/r8/internal/A40;

    if-eqz v0, :cond_8

    :cond_6
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v1, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v11}, Lcom/android/tools/r8/internal/EE;->remove()V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v10, v2, v3, v0}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-interface {v11, v0, v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_8
    :goto_3
    move/from16 v13, v16

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_e

    :cond_a
    iget-object v0, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v1

    if-eqz v0, :cond_b

    if-nez v1, :cond_c

    :cond_b
    if-nez v0, :cond_1b

    if-nez v1, :cond_1b

    :cond_c
    instance-of v0, v8, Lcom/android/tools/r8/internal/t2;

    if-nez v0, :cond_d

    instance-of v0, v8, Lcom/android/tools/r8/internal/A40;

    if-nez v0, :cond_d

    goto/16 :goto_e

    :cond_d
    iget-object v0, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_e

    :cond_e
    iget-object v0, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->n0()Lcom/android/tools/r8/internal/VT;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->n0()Lcom/android/tools/r8/internal/VT;

    move-result-object v1

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_30

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v3

    if-eq v2, v3, :cond_f

    goto/16 :goto_e

    :cond_f
    instance-of v2, v0, Lcom/android/tools/r8/internal/t2;

    if-nez v2, :cond_16

    instance-of v2, v0, Lcom/android/tools/r8/internal/A40;

    if-eqz v2, :cond_10

    goto/16 :goto_4

    :cond_10
    instance-of v2, v0, Lcom/android/tools/r8/internal/Ol0;

    if-nez v2, :cond_11

    instance-of v2, v0, Lcom/android/tools/r8/internal/Sl0;

    if-nez v2, :cond_11

    instance-of v2, v0, Lcom/android/tools/r8/internal/mw0;

    if-eqz v2, :cond_30

    :cond_11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    if-nez v3, :cond_12

    goto/16 :goto_e

    :cond_12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_14

    goto/16 :goto_e

    :cond_13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-eq v2, v3, :cond_14

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    iget-object v3, v9, Lcom/android/tools/r8/internal/G6;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/F6;

    iget-object v4, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-static {v4}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-static {v1}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v8

    if-eqz v8, :cond_15

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v14

    move-object v4, v5

    move-object v5, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_f

    :cond_15
    invoke-static {v10, v4, v1, v14}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F6;)Lcom/android/tools/r8/internal/u6;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v11, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-static {v10, v0, v6, v3}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F6;)Lcom/android/tools/r8/internal/u6;

    move-result-object v0

    invoke-interface {v11, v0, v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto/16 :goto_f

    :cond_16
    :goto_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    iget-object v3, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    if-ne v2, v3, :cond_17

    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    :goto_5
    move-object v6, v2

    goto :goto_6

    :cond_17
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-ne v2, v3, :cond_18

    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    goto :goto_5

    :cond_18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    if-ne v2, v3, :cond_19

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    goto :goto_5

    :cond_19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-ne v2, v3, :cond_30

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    goto :goto_5

    :goto_6
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    iget-object v4, v9, Lcom/android/tools/r8/internal/G6;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/internal/F6;

    invoke-static {v3}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-static {v1}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v8

    if-eqz v8, :cond_1a

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v14

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_f

    :cond_1a
    invoke-static {v10, v3, v1, v14}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F6;)Lcom/android/tools/r8/internal/u6;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v11, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-static {v10, v0, v6, v4}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F6;)Lcom/android/tools/r8/internal/u6;

    move-result-object v0

    invoke-interface {v11, v0, v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto/16 :goto_f

    :cond_1b
    if-nez v0, :cond_1c

    iget-object v4, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    goto :goto_7

    :cond_1c
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v5

    if-nez v5, :cond_1d

    goto/16 :goto_e

    :cond_1d
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v4

    iget-object v5, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v5}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v6

    if-eqz v5, :cond_1e

    if-nez v6, :cond_30

    :cond_1e
    if-nez v5, :cond_1f

    if-nez v6, :cond_1f

    goto/16 :goto_e

    :cond_1f
    if-nez v0, :cond_20

    move-object/from16 v17, v1

    goto :goto_8

    :cond_20
    move-object/from16 v17, v0

    :goto_8
    if-nez v5, :cond_21

    move-object/from16 v18, v6

    goto :goto_9

    :cond_21
    move-object/from16 v18, v5

    :goto_9
    if-nez v5, :cond_22

    iget-object v0, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    goto :goto_a

    :cond_22
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/u6;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    :goto_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v12, v7, :cond_2d

    iget-boolean v4, v14, Lcom/android/tools/r8/internal/F6;->b:Z

    if-eqz v4, :cond_25

    if-nez v15, :cond_24

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_b

    :cond_23
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_24
    :goto_b
    const/4 v7, 0x1

    move-object v12, v0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v14

    move-object v3, v14

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_f

    :cond_25
    move-object v12, v0

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/F6;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_30

    if-eqz v6, :cond_30

    if-nez v15, :cond_27

    instance-of v0, v8, Lcom/android/tools/r8/internal/Ol0;

    if-nez v0, :cond_27

    instance-of v0, v8, Lcom/android/tools/r8/internal/Sl0;

    if-nez v0, :cond_27

    instance-of v0, v8, Lcom/android/tools/r8/internal/mw0;

    if-eqz v0, :cond_26

    goto :goto_c

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_27
    :goto_c
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x3f

    goto :goto_d

    :cond_28
    const/16 v0, 0x1f

    :goto_d
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v4

    and-int/2addr v4, v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->u2()I

    move-result v1

    and-int/2addr v1, v0

    add-int/2addr v4, v1

    if-le v4, v0, :cond_2a

    instance-of v0, v8, Lcom/android/tools/r8/internal/Sl0;

    if-eqz v0, :cond_29

    goto/16 :goto_e

    :cond_29
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v10, v2, v3, v0}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_f

    :cond_2a
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    iget-object v0, v9, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    int-to-long v3, v4

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v5

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-static {v10, v12, v0, v14}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/F6;)Lcom/android/tools/r8/internal/u6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto/16 :goto_f

    :cond_2b
    instance-of v0, v8, Lcom/android/tools/r8/internal/Qq0;

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    if-nez v6, :cond_2c

    sget-object v3, Lcom/android/tools/r8/internal/F6;->d:Lcom/android/tools/r8/internal/x6;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v3

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_f

    :cond_2c
    sget-object v2, Lcom/android/tools/r8/internal/F6;->c:Lcom/android/tools/r8/internal/w6;

    sget-object v3, Lcom/android/tools/r8/internal/F6;->d:Lcom/android/tools/r8/internal/x6;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V

    goto :goto_f

    :cond_2d
    move-object v12, v0

    instance-of v0, v8, Lcom/android/tools/r8/internal/Qq0;

    if-eqz v0, :cond_2e

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2e

    sget-object v2, Lcom/android/tools/r8/internal/F6;->d:Lcom/android/tools/r8/internal/x6;

    sget-object v3, Lcom/android/tools/r8/internal/F6;->c:Lcom/android/tools/r8/internal/w6;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V

    goto :goto_f

    :cond_2e
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result v0

    if-eqz v0, :cond_30

    instance-of v0, v4, Lcom/android/tools/r8/internal/Qq0;

    if-eqz v0, :cond_30

    if-nez v5, :cond_2f

    sget-object v3, Lcom/android/tools/r8/internal/F6;->d:Lcom/android/tools/r8/internal/x6;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v3

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move-object v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V

    goto :goto_f

    :cond_2f
    sget-object v2, Lcom/android/tools/r8/internal/F6;->c:Lcom/android/tools/r8/internal/w6;

    sget-object v3, Lcom/android/tools/r8/internal/F6;->d:Lcom/android/tools/r8/internal/x6;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/internal/G6;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/F6;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/xw0;ZLcom/android/tools/r8/internal/fB;)V

    goto :goto_f

    :cond_30
    :goto_e
    const/16 v16, 0x0

    :goto_f
    or-int v13, v13, v16

    :cond_31
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_32
    if-eqz v13, :cond_33

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_33
    if-eqz v13, :cond_34

    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :cond_34
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0
.end method
