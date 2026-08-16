.class public Lcom/android/tools/r8/internal/Hb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/qa0;

.field public final b:Lcom/android/tools/r8/internal/La0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/qa0;Lcom/android/tools/r8/internal/La0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hb0;->a:Lcom/android/tools/r8/internal/qa0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Hb0;->b:Lcom/android/tools/r8/internal/La0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ba0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, p1, Lcom/android/tools/r8/internal/jh;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p0

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Pa0;

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 9
    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Pa0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    new-instance p0, Lcom/android/tools/r8/internal/HT;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/HT;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0

    .line 14
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/bj;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/bj;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V

    return-object v0

    .line 15
    :cond_2
    instance-of v0, p1, Lcom/android/tools/r8/internal/uq;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p1

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/uq;->m:Lcom/android/tools/r8/internal/ZY;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of p1, p1, Lcom/android/tools/r8/internal/kw;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/s3;->b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 26
    new-instance p0, Lcom/android/tools/r8/internal/HT;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/HT;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0

    .line 27
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/bj;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/bj;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;)V

    return-object v0

    .line 28
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p0

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    new-instance p1, Lcom/android/tools/r8/internal/Ca0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Ca0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p1

    .line 33
    :cond_5
    instance-of p0, p1, Lcom/android/tools/r8/internal/Mo0;

    if-eqz p0, :cond_6

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object p0

    .line 35
    new-instance p1, Lcom/android/tools/r8/internal/Da0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Da0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p1

    .line 36
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Zr0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/xw0;",
            ")",
            "Lcom/android/tools/r8/internal/Zr0<",
            "Lcom/android/tools/r8/internal/Gb0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/Gb0;
        }
    .end annotation

    .line 108
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 110
    new-instance v0, Lcom/android/tools/r8/internal/Fb0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Fb0;-><init>(Lcom/android/tools/r8/graph/L2;)V

    return-object v0

    .line 111
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 107
    new-instance v0, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Nw0;)Lcom/android/tools/r8/internal/ua0;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 37
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/internal/sa0;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/sa0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 38
    invoke-static/range {p2 .. p2}, Lcom/android/tools/r8/internal/Hb0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Zr0;

    move-result-object v3

    .line 39
    new-instance v4, Lcom/android/tools/r8/internal/nH0;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/nH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Zr0;->a(Lcom/android/tools/r8/internal/as0;)I

    move-result v4

    .line 40
    iput v4, v1, Lcom/android/tools/r8/internal/sa0;->b:I

    .line 41
    new-instance v5, Lcom/android/tools/r8/internal/nH0;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/nH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/Zr0;->a(Lcom/android/tools/r8/internal/as0;)I

    move-result v5

    if-nez v5, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sa0;->a()V

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sa0;->b()V

    .line 44
    new-instance v7, Lcom/android/tools/r8/internal/ua0;

    iget v3, v1, Lcom/android/tools/r8/internal/sa0;->b:I

    iget-object v4, v1, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    iget-object v5, v1, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    iget-object v6, v1, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/ua0;-><init>(Lcom/android/tools/r8/graph/H5;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-object v7

    .line 45
    :cond_0
    new-instance v6, Lcom/android/tools/r8/internal/nH0;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/nH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/Zr0;->a(Lcom/android/tools/r8/internal/as0;)I

    move-result v6

    .line 46
    new-instance v7, Lcom/android/tools/r8/internal/nH0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/nH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/Zr0;->a(Lcom/android/tools/r8/internal/as0;)I

    move-result v7

    const/4 v8, 0x4

    :goto_0
    const/16 v9, 0xa

    if-ge v8, v9, :cond_1

    .line 47
    new-instance v9, Lcom/android/tools/r8/internal/nH0;

    invoke-direct {v9, v0}, Lcom/android/tools/r8/internal/nH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    invoke-virtual {v3, v9}, Lcom/android/tools/r8/internal/Zr0;->a(Lcom/android/tools/r8/internal/as0;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_13

    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/Nw0;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_6

    .line 49
    new-instance v11, Lcom/android/tools/r8/internal/oH0;

    invoke-direct {v11, v0}, Lcom/android/tools/r8/internal/oH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    .line 50
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 51
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    .line 52
    :cond_2
    invoke-interface {v11}, Lcom/android/tools/r8/internal/es0;->get()Ljava/lang/Object;

    move-result-object v11

    .line 53
    :goto_2
    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 54
    invoke-static {v2, v11}, Lcom/android/tools/r8/internal/Hb0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ba0;

    move-result-object v11

    .line 55
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Ba0;->f()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 56
    new-instance v12, Lcom/android/tools/r8/internal/oH0;

    invoke-direct {v12, v0}, Lcom/android/tools/r8/internal/oH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    .line 57
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 58
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    goto :goto_3

    .line 59
    :cond_3
    invoke-interface {v12}, Lcom/android/tools/r8/internal/es0;->get()Ljava/lang/Object;

    move-result-object v12

    .line 60
    :goto_3
    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 61
    invoke-static {v2, v12}, Lcom/android/tools/r8/internal/Hb0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ba0;

    move-result-object v12

    .line 62
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Ba0;->f()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 63
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/Ba0;->b()Lcom/android/tools/r8/internal/oa0;

    move-result-object v11

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Ba0;->b()Lcom/android/tools/r8/internal/oa0;

    move-result-object v12

    .line 64
    invoke-virtual {v1, v11, v12}, Lcom/android/tools/r8/internal/sa0;->a(Lcom/android/tools/r8/internal/oa0;Lcom/android/tools/r8/internal/oa0;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 65
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v1

    .line 66
    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v1

    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_a

    .line 67
    new-instance v10, Lcom/android/tools/r8/internal/oH0;

    invoke-direct {v10, v0}, Lcom/android/tools/r8/internal/oH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    .line 68
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 69
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    goto :goto_5

    .line 70
    :cond_7
    invoke-interface {v10}, Lcom/android/tools/r8/internal/es0;->get()Ljava/lang/Object;

    move-result-object v10

    .line 71
    :goto_5
    check-cast v10, Lcom/android/tools/r8/internal/xw0;

    .line 72
    invoke-static {v2, v10}, Lcom/android/tools/r8/internal/Hb0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ba0;

    move-result-object v10

    .line 73
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Ba0;->f()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 74
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Ba0;->b()Lcom/android/tools/r8/internal/oa0;

    move-result-object v10

    .line 75
    iget-object v11, v1, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    if-nez v11, :cond_8

    .line 76
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    iput-object v11, v1, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    .line 77
    :cond_8
    iget-object v11, v1, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 78
    :cond_9
    new-instance v1, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v1

    .line 79
    :cond_a
    sget-boolean v6, Lcom/android/tools/r8/internal/Ra0;->a:Z

    const/4 v6, 0x1

    and-int/2addr v4, v6

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_11

    .line 80
    new-instance v7, Lcom/android/tools/r8/internal/nH0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/nH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/Zr0;->a(Lcom/android/tools/r8/internal/as0;)I

    move-result v7

    .line 81
    new-instance v10, Lcom/android/tools/r8/internal/nH0;

    invoke-direct {v10, v0}, Lcom/android/tools/r8/internal/nH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    invoke-virtual {v3, v10}, Lcom/android/tools/r8/internal/Zr0;->a(Lcom/android/tools/r8/internal/as0;)I

    move-result v10

    .line 82
    iget-object v11, v0, Lcom/android/tools/r8/internal/Hb0;->a:Lcom/android/tools/r8/internal/qa0;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/qa0;->a(I)Lcom/android/tools/r8/internal/pa0;

    move-result-object v11

    .line 83
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/pa0;->e()I

    move-result v12

    if-ne v12, v10, :cond_10

    .line 84
    invoke-virtual {v11, v6}, Lcom/android/tools/r8/internal/pa0;->a(Z)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 85
    new-instance v10, Lcom/android/tools/r8/internal/nH0;

    invoke-direct {v10, v0}, Lcom/android/tools/r8/internal/nH0;-><init>(Lcom/android/tools/r8/internal/Hb0;)V

    invoke-virtual {v3, v10}, Lcom/android/tools/r8/internal/Zr0;->a(Lcom/android/tools/r8/internal/as0;)I

    move-result v10

    invoke-static {v10}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v10

    goto :goto_8

    .line 86
    :cond_c
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v10

    .line 87
    :goto_8
    iget-object v12, v0, Lcom/android/tools/r8/internal/Hb0;->a:Lcom/android/tools/r8/internal/qa0;

    invoke-virtual {v11, v6, v12}, Lcom/android/tools/r8/internal/pa0;->a(ZLcom/android/tools/r8/internal/qa0;)I

    move-result v12
    :try_end_0
    .catch Lcom/android/tools/r8/internal/Gb0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/internal/ta0; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(I)V

    :goto_9
    if-lez v12, :cond_e

    .line 90
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 91
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 92
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 93
    :cond_d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 94
    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v12, :cond_f

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v16

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    .line 95
    invoke-static {v2, v9}, Lcom/android/tools/r8/internal/Hb0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Ba0;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 96
    :cond_f
    new-instance v9, Lcom/android/tools/r8/internal/na0;

    invoke-direct {v9, v7, v11, v10, v13}, Lcom/android/tools/r8/internal/na0;-><init>(ILcom/android/tools/r8/internal/pa0;Ljava/util/OptionalInt;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/internal/sa0;->a(Lcom/android/tools/r8/internal/na0;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/tools/r8/internal/Gb0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/tools/r8/internal/ta0; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 97
    :catch_0
    :try_start_2
    new-instance v1, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v1

    .line 98
    :cond_10
    new-instance v1, Lcom/android/tools/r8/internal/If;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected proto field type `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_11
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Zr0;->a()Z

    move-result v2

    if-nez v2, :cond_12

    .line 100
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 101
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sa0;->a()V

    .line 102
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sa0;->b()V

    .line 103
    new-instance v2, Lcom/android/tools/r8/internal/ua0;

    iget-object v4, v1, Lcom/android/tools/r8/internal/sa0;->a:Lcom/android/tools/r8/graph/H5;

    iget v5, v1, Lcom/android/tools/r8/internal/sa0;->b:I

    iget-object v6, v1, Lcom/android/tools/r8/internal/sa0;->c:Ljava/util/LinkedList;

    iget-object v7, v1, Lcom/android/tools/r8/internal/sa0;->d:Ljava/util/LinkedList;

    iget-object v8, v1, Lcom/android/tools/r8/internal/sa0;->e:Ljava/util/LinkedList;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/ua0;-><init>(Lcom/android/tools/r8/graph/H5;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-object v2

    .line 104
    :cond_12
    new-instance v1, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v1

    .line 105
    :cond_13
    new-instance v1, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v1
    :try_end_2
    .catch Lcom/android/tools/r8/internal/Gb0; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/tools/r8/internal/ta0; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    :catch_1
    sget-boolean v1, Lcom/android/tools/r8/internal/Hb0;->c:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    return-object v1

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public final b()Lcom/android/tools/r8/internal/xw0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Gb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gb0;-><init>()V

    throw v0
.end method
