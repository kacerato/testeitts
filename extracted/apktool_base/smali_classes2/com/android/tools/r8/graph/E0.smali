.class public abstract Lcom/android/tools/r8/graph/E0;
.super Lcom/android/tools/r8/graph/b1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/S;
.implements Lcom/android/tools/r8/graph/b0;


# static fields
.field public static final synthetic t:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/origin/Origin;

.field public final e:Lcom/android/tools/r8/graph/M2;

.field public final f:Lcom/android/tools/r8/graph/Q;

.field public g:Lcom/android/tools/r8/graph/M2;

.field public h:Lcom/android/tools/r8/graph/O2;

.field public i:Lcom/android/tools/r8/graph/L2;

.field public j:Lcom/android/tools/r8/internal/t40;

.field public final k:Lcom/android/tools/r8/graph/r3;

.field public final l:Lcom/android/tools/r8/graph/N4;

.field public m:Lcom/android/tools/r8/graph/i3;

.field public n:Ljava/util/List;

.field public o:Lcom/android/tools/r8/graph/o5;

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field protected s:Lcom/android/tools/r8/graph/H3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/origin/Origin;Z)V
    .locals 10

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p14

    move-object/from16 v6, p16

    move-object/from16 v7, p15

    invoke-direct {p0, v7}, Lcom/android/tools/r8/graph/b1;-><init>(Lcom/android/tools/r8/graph/u0;)V

    sget-object v8, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v8, v0, Lcom/android/tools/r8/graph/E0;->j:Lcom/android/tools/r8/internal/t40;

    sget-boolean v8, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v8, :cond_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    iput-object v6, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    move-object v6, p1

    iput-object v6, v0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    move-object v6, p2

    iput-object v6, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    move-object v9, p3

    iput-object v9, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    iput-object v1, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iput-object v2, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v9, p6

    invoke-interface {v9, p0}, Lcom/android/tools/r8/graph/q3;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/r3;

    move-result-object v9

    iput-object v9, v0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    move-object/from16 v9, p7

    invoke-interface {v9, p0}, Lcom/android/tools/r8/graph/N4$a;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/N4;

    move-result-object v9

    iput-object v9, v0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    iput-object v3, v0, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    if-nez v8, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    :goto_1
    iput-object v4, v0, Lcom/android/tools/r8/graph/E0;->q:Ljava/util/List;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/tools/r8/graph/E0;->r:Ljava/util/List;

    if-nez v8, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    move-object/from16 v3, p12

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :goto_2
    iput-object v3, v0, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/tools/r8/graph/E0;->n:Ljava/util/List;

    if-nez v8, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_3
    iput-object v5, v0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    if-nez v8, :cond_9

    invoke-static/range {p14 .. p15}, Lcom/android/tools/r8/graph/Z3;->a(Lcom/android/tools/r8/graph/H3$d;Lcom/android/tools/r8/graph/u0;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    :goto_4
    invoke-virtual {p5, p4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p5, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Lcom/android/tools/r8/internal/If;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot implement itself"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-nez p17, :cond_d

    iget-object v1, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v3, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    iget v1, v1, Lcom/android/tools/r8/graph/L2;->e:I

    invoke-static {v1, v3}, Lcom/android/tools/r8/graph/L2;->a(I[B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->B(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    new-instance v1, Lcom/android/tools/r8/internal/If;

    iget-object v2, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class descriptor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' cannot be represented in dex format."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_7
    return-void

    :cond_e
    new-instance v1, Lcom/android/tools/r8/internal/If;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot extend itself"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    .line 2
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 77
    invoke-interface {p0, p3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 78
    invoke-interface {p1, p3, p0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p2, p3, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 114
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 115
    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 116
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/p5;)V
    .locals 0

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 75
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/graph/H3$c;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/g1;)Z
    .locals 0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/g1;)Z
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->U0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/N4;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public A1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/g1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/s3;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final B0()Lcom/android/tools/r8/internal/sK;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/c7;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/c7;-><init>(Lcom/android/tools/r8/graph/E0;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    return-object v0
.end method

.method public final B1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final C0()Lcom/android/tools/r8/internal/sK;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/V6;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/V6;-><init>(Lcom/android/tools/r8/graph/E0;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    return-object v0
.end method

.method public final C1()Lcom/android/tools/r8/internal/sK;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/P6;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/P6;-><init>(Lcom/android/tools/r8/graph/E0;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    return-object v0
.end method

.method public final D()Lcom/android/tools/r8/graph/E0;
    .locals 0

    return-object p0
.end method

.method public final D0()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    return-void
.end method

.method public D1()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->j()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final E0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    return-void
.end method

.method public final F0()[Lcom/android/tools/r8/graph/g1;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v1, v1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/s3;->b()V

    sget-object v1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/g1;

    return-object v0
.end method

.method public G()Lcom/android/tools/r8/graph/u2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final G0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/X6;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/X6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public H0()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->c()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public I0()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/graph/g1;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v1, v1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/s3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public J0()Lcom/android/tools/r8/graph/Q;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    return-object v0
.end method

.method public final K0()Lcom/android/tools/r8/graph/L2;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public final L0()Lcom/android/tools/r8/graph/j1;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    sget-object v2, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O4;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    return-object v1

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public M0()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    return-object v0
.end method

.method public N0()Lcom/android/tools/r8/graph/H3$b;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    return-object v0
.end method

.method public O0()Lcom/android/tools/r8/graph/i3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    return-object v0
.end method

.method public P0()Lcom/android/tools/r8/graph/e4;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/e4;

    iget-object v2, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public Q0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/e4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->n:Ljava/util/List;

    return-object v0
.end method

.method public R0()Lcom/android/tools/r8/graph/O2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    return-object v0
.end method

.method public abstract S0()Lcom/android/tools/r8/graph/V;
.end method

.method public T0()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->u1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public U0()Lcom/android/tools/r8/graph/o5;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    return-object v0
.end method

.method public V0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/p5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    return-object v0
.end method

.method public W0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/A5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->q:Ljava/util/List;

    return-object v0
.end method

.method public final X()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public X0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/P5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->r:Ljava/util/List;

    return-object v0
.end method

.method public final Y0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->C0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z0()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public a()Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 45
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 46
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 53
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;
    .locals 5

    .line 49
    new-instance v0, Lcom/android/tools/r8/graph/Q6;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/Q6;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p1

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 51
    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 67
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/rK;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/g7;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/g7;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$c;Ljava/util/List;)Ljava/util/List;
    .locals 2

    if-nez p1, :cond_0

    .line 117
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 118
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 119
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 120
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H3$c;->r()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/graph/W6;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/tools/r8/graph/W6;-><init>(Lcom/android/tools/r8/graph/E0;Ljava/util/List;Lcom/android/tools/r8/internal/eC;)V

    .line 122
    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$b;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 76
    new-instance v0, Lcom/android/tools/r8/graph/U6;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/U6;-><init>(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 35
    sget-boolean v1, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez v1, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/r3;->a(Lcom/android/tools/r8/graph/g1;)V

    .line 37
    :cond_0
    iget-object v2, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 38
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/s3;->b(Lcom/android/tools/r8/graph/g1;)V

    if-nez v1, :cond_1

    .line 39
    iget-object p1, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/s3;->h()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v1, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/tools/r8/graph/E0;->s:Lcom/android/tools/r8/graph/H3$b;

    .line 92
    iget-object v1, v1, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v1, Lcom/android/tools/r8/graph/H3$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 94
    :goto_0
    invoke-interface {p2, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 137
    sget-boolean v0, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/E0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/nJ;)V

    :cond_0
    if-nez v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/graph/a7;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/a7;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 139
    iget-object p1, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r3;->c()V

    :cond_3
    if-nez v0, :cond_4

    .line 140
    iget-object p1, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/N4;->f()V

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v0, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result p2

    if-nez p2, :cond_2

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-abstract method on abstract class: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "`"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v1, Lcom/android/tools/r8/internal/Ly;->b:Lcom/android/tools/r8/internal/Ly;

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 15
    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v2, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v2

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ps0;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ps0;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 18
    sget-boolean v4, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/N4;->c(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Jy;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/H3$e;)V
    .locals 3

    .line 124
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H3$e;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$f;

    .line 127
    iget-object v1, v1, Lcom/android/tools/r8/graph/H3$f;->a:Ljava/lang/String;

    .line 128
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H3$e;->i()Lcom/android/tools/r8/graph/H3$j;

    move-result-object v2

    .line 129
    iget-object v2, v2, Lcom/android/tools/r8/graph/H3$j;->b:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 132
    sget-boolean v1, Lcom/android/tools/r8/graph/E0;->t:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 133
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$e;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 134
    :cond_4
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/function/BiConsumer;)V
    .locals 6

    .line 96
    sget-boolean v0, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->B1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    new-instance p1, Lcom/android/tools/r8/graph/e7;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/graph/e7;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Consumer;)V

    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    sget-boolean v2, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 103
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H3$c;

    .line 105
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 106
    iget-object v4, v3, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    .line 107
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H3$e;

    .line 108
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H3$e;->o()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 109
    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 110
    sget-object v3, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 111
    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 112
    :cond_6
    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/H3$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    :cond_7
    sget-boolean p1, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez p1, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_3
    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 4

    .line 80
    sget-boolean v0, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->B1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    new-instance v0, Lcom/android/tools/r8/graph/b7;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/b7;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Consumer;)V

    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    sget-boolean v2, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 87
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H3$c;

    .line 89
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 5
    invoke-static {p0, p2}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 6
    invoke-static {p0, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/j7;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/j7;-><init>(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 41
    iget-object v1, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 42
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/s3;->a([Lcom/android/tools/r8/graph/g1;)V

    .line 43
    sget-boolean p1, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/s3;->h()V

    :cond_0
    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/j1;)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 21
    sget-boolean v1, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v1, :cond_2

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 25
    sget-boolean v3, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/N4;->c(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 27
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/O4;->b([Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/u1;)Z
    .locals 3

    .line 56
    sget-boolean v0, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p2, Lcom/android/tools/r8/graph/u1;->O2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p2, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/16 v1, 0x80

    .line 61
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 62
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 65
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/j1;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public a(Lcom/android/tools/r8/graph/y;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)Z"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    .line 70
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 71
    invoke-virtual {p0, p1, p0, v0, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;)Z
    .locals 1

    .line 72
    new-instance v0, Lcom/android/tools/r8/graph/i7;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/graph/i7;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;)V

    .line 73
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p2

    .line 74
    invoke-virtual {p0, p1, p0, v0, p2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public a1()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public asClass()Lcom/android/tools/r8/graph/E0;
    .locals 0

    return-object p0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;
    .locals 5

    .line 13
    new-instance v0, Lcom/android/tools/r8/graph/Y6;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/Y6;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 15
    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;)",
            "Lcom/android/tools/r8/graph/j1;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Ljava/util/ArrayList;
    .locals 4

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    .line 31
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_0

    .line 32
    new-instance v2, Lcom/android/tools/r8/graph/R6;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/R6;-><init>()V

    new-instance v3, Lcom/android/tools/r8/graph/S6;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/graph/S6;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 33
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/util/List;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->d()Lcom/android/tools/r8/graph/H3$c;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/H3$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 28
    invoke-interface {p2, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/List;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 23
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/d7;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/d7;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public b(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/graph/F0;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    new-instance v1, Lcom/android/tools/r8/graph/f7;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/f7;-><init>(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final b([Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 7
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/s3;->b([Lcom/android/tools/r8/graph/g1;)V

    .line 8
    sget-boolean p1, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/s3;->h()V

    :cond_0
    return-void
.end method

.method public b0()Lcom/android/tools/r8/graph/N4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    return-object v0
.end method

.method public final b1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/O4;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lcom/android/tools/r8/graph/j1;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->e()Ljava/lang/Iterable;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/graph/H0;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/s3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p2

    .line 5
    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public c(Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result p1

    return p1
.end method

.method public final c1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 3
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/O4;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    sget-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v1, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    return-object p1

    .line 8
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final d(Ljava/util/function/Consumer;)V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 24
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p2

    .line 12
    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final d(Ljava/util/function/Predicate;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    :cond_0
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/y;)Z
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->j:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v3

    if-nez v2, :cond_1

    :cond_3
    move p1, v2

    .line 20
    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/E0;->j:Lcom/android/tools/r8/internal/t40;

    .line 21
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/graph/E0;->j:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/graph/E0;->j:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    return p1
.end method

.method public final d1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final e(Ljava/util/function/Predicate;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public e1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/s3;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->j1()Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/rK;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final f(Ljava/util/function/Predicate;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public f0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/s3;->f()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public g(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final g(Ljava/util/function/Predicate;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public g1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/s3;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getAccessFlags()Lcom/android/tools/r8/graph/g;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v0

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public getReference()Lcom/android/tools/r8/graph/J2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final h(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Z6;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Z6;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final h(Ljava/util/function/Predicate;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public final h1()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lcom/android/tools/r8/graph/j1;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/g7;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/g7;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    return-object p1
.end method

.method public final i1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v0

    return v0
.end method

.method public final j1()Lcom/android/tools/r8/internal/rK;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/graph/h7;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/graph/h7;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/graph/I0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/g1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/s3;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/E0;
    .locals 0

    return-object p0
.end method

.method public l1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->G()Z

    move-result v0

    return v0
.end method

.method public m1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/e4;->d:Lcom/android/tools/r8/graph/L2;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n1()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/I0;

    return v0
.end method

.method public o1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v0

    return v0
.end method

.method public p1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    return v0
.end method

.method public q1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->u1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public r1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/e4;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/e4;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/graph/E0;->t:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    return v0
.end method

.method public t1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public u1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Lcom/android/tools/r8/graph/E0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract v1()Z
.end method

.method public w1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    return v0
.end method

.method public final x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x1()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    const/high16 v1, 0x10000

    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final y0()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/r3;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final y1()Lcom/android/tools/r8/internal/Ux;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Iterable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    return-object v0
.end method

.method public final z0()Ljava/lang/Iterable;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/tools/r8/internal/EK;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/EK;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v3, v0

    invoke-static {v3, v1, v0}, Lcom/android/tools/r8/internal/JK;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/FK;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/Iterator;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    aput-object v0, v3, v1

    new-instance v0, Lcom/android/tools/r8/internal/AK;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/AK;-><init>([Ljava/util/Iterator;)V

    new-instance v1, Lcom/android/tools/r8/internal/GK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/GK;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v0

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/internal/JK;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/FK;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/T6;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/T6;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public z1()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/graph/j1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->e()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
