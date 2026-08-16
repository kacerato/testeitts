.class public Lcom/android/tools/r8/internal/ga;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/ga;->f:Z

    const/16 v1, 0xb9

    const/16 v2, 0xb6

    if-nez v0, :cond_1

    if-gt v2, p1, :cond_0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ne p1, v2, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "InvokeVirtual on interface type"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-ne p1, v1, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "InvokeInterface on class type"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    iput p1, p0, Lcom/android/tools/r8/internal/ga;->d:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/ga;->e:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Wb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wb1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Xb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Xb1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v0

    return v0
.end method

.method public final L()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final M()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/16 v1, 0xb9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public V()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public W()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ga;->d:I

    return v0
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ga;->e:Z

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    .line 3
    new-instance p3, Lcom/android/tools/r8/internal/Vb1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/Vb1;-><init>()V

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    .line 95
    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 96
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 97
    iget v0, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/H9;->g()Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 101
    iget v1, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/16 v2, 0xb7

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object p2, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 104
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    .line 105
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 2

    .line 30
    iget p2, p0, Lcom/android/tools/r8/internal/ga;->d:I

    packed-switch p2, :pswitch_data_0

    .line 31
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget p2, p0, Lcom/android/tools/r8/internal/ga;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown CfInvoke opcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :pswitch_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->b(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 33
    :pswitch_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->e(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 34
    :pswitch_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    .line 35
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->c(Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 36
    :pswitch_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->g(Lcom/android/tools/r8/graph/A2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    .line 6
    iget v3, v0, Lcom/android/tools/r8/internal/ga;->d:I

    iget-object v4, v0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    .line 7
    iget-object v5, v1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    move-object v6, p2

    .line 8
    invoke-static {v3, v4, p2, p1, v5}, Lcom/android/tools/r8/internal/kK;->a(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/kK;

    move-result-object v9

    .line 9
    sget-object v1, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    if-ne v9, v1, :cond_2

    .line 10
    sget-boolean v1, Lcom/android/tools/r8/internal/ga;->f:Z

    if-nez v1, :cond_1

    move-object v1, p3

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/k2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 11
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    move-object/from16 v3, p8

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 12
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/kK;->a()I

    move-result v3

    iget-object v4, v0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    .line 14
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/ga;->e:Z

    move-object/from16 p1, p9

    move p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v1

    move/from16 p6, v2

    .line 16
    invoke-virtual/range {p1 .. p6}, Lcom/android/tools/r8/internal/EX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 17
    :cond_2
    iget-object v7, v0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    .line 19
    sget-object v11, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    .line 20
    invoke-virtual/range {v6 .. v11}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v1

    .line 21
    iget-object v3, v1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 22
    iget-object v1, v1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 23
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 24
    iget-object v4, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    iget-object v1, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/kK;->a()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/ga;->e:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move-object/from16 p1, p9

    move p2, v2

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v1

    move/from16 p6, v3

    .line 28
    invoke-virtual/range {p1 .. p6}, Lcom/android/tools/r8/internal/EX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ga;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 11

    .line 37
    iget p3, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    .line 38
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget p2, p0, Lcom/android/tools/r8/internal/ga;->d:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown CfInvoke opcode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :pswitch_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    .line 40
    sget-object v3, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    :goto_0
    move-object v7, p3

    move-object v8, v2

    goto/16 :goto_5

    .line 41
    :pswitch_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    .line 42
    sget-object v3, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 44
    iget-object v3, p1, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    .line 45
    iget-object v4, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    .line 46
    iget-object v5, p1, Lcom/android/tools/r8/internal/aB;->q:Lcom/android/tools/r8/internal/Hz;

    .line 47
    invoke-static {v4, v3, p3, v5}, Lcom/android/tools/r8/internal/kK;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/kK;

    move-result-object v3

    :goto_1
    move-object v8, v2

    move-object v7, v4

    goto/16 :goto_5

    .line 48
    :pswitch_3
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 49
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    .line 50
    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-object v4, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p3, Lcom/android/tools/r8/graph/k2;->g:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v5, Lcom/android/tools/r8/graph/u1;->O2:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v6, :cond_1

    .line 52
    iget-object v4, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v7, v5, Lcom/android/tools/r8/graph/u1;->L0:Lcom/android/tools/r8/graph/L2;

    if-eq v4, v7, :cond_0

    iget-object v7, v5, Lcom/android/tools/r8/graph/u1;->M0:Lcom/android/tools/r8/graph/L2;

    if-ne v4, v7, :cond_4

    .line 53
    :cond_0
    iget-object v7, p3, Lcom/android/tools/r8/graph/k2;->a:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    goto :goto_2

    .line 54
    :cond_1
    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v5, :cond_4

    .line 55
    iget-object v4, p3, Lcom/android/tools/r8/graph/k2;->d:Ljava/util/Set;

    iget-object v5, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    iget-object v4, p3, Lcom/android/tools/r8/graph/k2;->g:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v4, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p3, Lcom/android/tools/r8/graph/k2;->a:Lcom/android/tools/r8/graph/I2;

    iget-object v7, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    goto :goto_2

    .line 57
    :cond_2
    iget-object v4, p3, Lcom/android/tools/r8/graph/k2;->e:Ljava/util/Set;

    iget-object v5, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    iget-object v4, p3, Lcom/android/tools/r8/graph/k2;->g:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v4, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p3, Lcom/android/tools/r8/graph/k2;->b:Lcom/android/tools/r8/graph/I2;

    iget-object v7, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    goto :goto_2

    .line 59
    :cond_3
    iget-object v4, p3, Lcom/android/tools/r8/graph/k2;->f:Ljava/util/Set;

    iget-object v5, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    iget-object v4, p3, Lcom/android/tools/r8/graph/k2;->g:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v4, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p3, Lcom/android/tools/r8/graph/k2;->c:Lcom/android/tools/r8/graph/I2;

    iget-object v7, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    .line 61
    :goto_2
    sget-boolean v5, Lcom/android/tools/r8/graph/k2;->h:Z

    if-nez v5, :cond_7

    if-eqz v4, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    invoke-virtual {p3, v3}, Lcom/android/tools/r8/graph/k2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-ne v5, p3, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    if-nez v4, :cond_8

    .line 62
    sget-object v3, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    .line 63
    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    goto/16 :goto_0

    .line 64
    :cond_8
    iget-object p3, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 65
    sget-object v3, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    .line 66
    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    goto/16 :goto_0

    .line 67
    :cond_9
    sget-object v3, Lcom/android/tools/r8/internal/kK;->k:Lcom/android/tools/r8/internal/kK;

    .line 68
    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    goto/16 :goto_1

    .line 69
    :goto_5
    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result p3

    .line 70
    sget-object v2, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    if-eq v3, v2, :cond_a

    add-int/lit8 p3, p3, 0x1

    .line 71
    :cond_a
    new-array v2, p3, [Lcom/android/tools/r8/internal/Kw0;

    .line 72
    new-array v4, p3, [Ljava/lang/Integer;

    sub-int/2addr p3, v1

    :goto_6
    if-ltz p3, :cond_b

    .line 73
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object v1

    .line 74
    iget-object v5, v1, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    aput-object v5, v2, p3

    .line 75
    iget v1, v1, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p3

    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    .line 76
    :cond_b
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-boolean v10, p0, Lcom/android/tools/r8/internal/ga;->e:Z

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    sget-boolean v2, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v2, :cond_d

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_c

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 79
    :cond_d
    :goto_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    :goto_8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Kw0;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Mw0;->a(Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/Mw0;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 82
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    move-object v5, p1

    move-object v6, v3

    .line 83
    invoke-virtual/range {v5 .. v10}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/I2;Ljava/util/ArrayList;Z)V

    .line 84
    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p3

    if-nez p3, :cond_f

    .line 85
    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 87
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/aB;->c(I)V

    .line 88
    :cond_f
    sget-boolean p2, Lcom/android/tools/r8/internal/ga;->f:Z

    if-nez p2, :cond_11

    iget p2, p0, Lcom/android/tools/r8/internal/ga;->d:I

    iget-object p3, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    .line 89
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->n:Lcom/android/tools/r8/graph/H5;

    .line 90
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    .line 91
    iget-object p1, p1, Lcom/android/tools/r8/internal/aB;->q:Lcom/android/tools/r8/internal/Hz;

    .line 92
    invoke-static {p2, p3, v0, v1, p1}, Lcom/android/tools/r8/internal/kK;->a(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/kK;

    move-result-object p1

    if-ne v3, p1, :cond_10

    goto :goto_9

    .line 93
    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Vb1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Vb1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ga;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-eq v1, p1, :cond_0

    iget-object p1, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<init>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j()Lcom/android/tools/r8/internal/ga;
    .locals 0

    return-object p0
.end method

.method public final y()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ga;->d:I

    const/16 v1, 0xb9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
