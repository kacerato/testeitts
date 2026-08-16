.class public final Lcom/android/tools/r8/internal/Dc0;
.super Lcom/android/tools/r8/internal/Wj;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/m80;

.field public g:Lcom/android/tools/r8/internal/m80;

.field public final synthetic h:Lcom/android/tools/r8/internal/Ec0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ec0;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dc0;->h:Lcom/android/tools/r8/internal/Ec0;

    iget-object v0, p1, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ec0;->e:Lcom/android/tools/r8/graph/c4;

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/Wj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dc0;->f:Lcom/android/tools/r8/internal/m80;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dc0;->g:Lcom/android/tools/r8/internal/m80;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 113
    new-instance v0, Lcom/android/tools/r8/internal/Cc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/tools/r8/internal/Cc0;-><init>(Lcom/android/tools/r8/internal/Dc0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/H5;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dc0;->h:Lcom/android/tools/r8/internal/Ec0;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-nez v3, :cond_3

    .line 8
    sget-boolean v3, Lcom/android/tools/r8/internal/Ec0;->i:Z

    if-nez v3, :cond_e

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    iget-object v3, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 11
    sget-boolean v6, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v6, :cond_4

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_4
    if-nez v6, :cond_5

    .line 13
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    :goto_0
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Z4;->v()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_2

    .line 17
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v3

    .line 19
    iget-object v4, v3, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 20
    iget-object v3, v3, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v4, v3}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 22
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    iget-object v0, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v0, v5}, Lcom/android/tools/r8/graph/j1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 24
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_3

    .line 25
    :cond_7
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 26
    iget-object v4, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    .line 29
    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 30
    iget-object v5, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 33
    sget-boolean v7, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v7, :cond_a

    .line 34
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->c()V

    .line 35
    :cond_a
    invoke-virtual {v5, v4, v6}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 37
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 38
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    iget-object v7, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v7, v6}, Lcom/android/tools/r8/graph/j1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    if-nez v3, :cond_9

    .line 40
    iget-object v3, v4, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v4, v4, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    goto :goto_1

    .line 41
    :cond_c
    sget-boolean v0, Lcom/android/tools/r8/internal/Ec0;->i:Z

    if-nez v0, :cond_f

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_2
    move-object v3, v2

    :cond_f
    :goto_3
    if-nez v3, :cond_1a

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dc0;->h:Lcom/android/tools/r8/internal/Ec0;

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 45
    iget-object v3, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 46
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->k()Lcom/android/tools/r8/internal/S7;

    move-result-object v3

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->e1()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_18

    .line 48
    :cond_10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_4

    .line 49
    :cond_11
    iget-object v3, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 50
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 51
    instance-of v3, v3, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v3, :cond_12

    .line 52
    iget-object v3, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_4

    .line 53
    :cond_12
    new-instance v3, Lcom/android/tools/r8/internal/aK;

    iget-object v4, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v3, v4, p2}, Lcom/android/tools/r8/internal/aK;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 54
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 55
    iget-object v4, v3, Lcom/android/tools/r8/internal/aK;->f:Lcom/android/tools/r8/graph/A2;

    if-eqz v4, :cond_18

    .line 56
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_4

    .line 57
    :cond_13
    iget-object v3, v3, Lcom/android/tools/r8/internal/aK;->e:Lcom/android/tools/r8/internal/ZJ;

    .line 58
    invoke-virtual {v0, p2, v3, v4}, Lcom/android/tools/r8/internal/Ec0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ZJ;Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_4

    .line 59
    :cond_14
    iget-object v3, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 60
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    if-nez v3, :cond_15

    goto :goto_4

    .line 61
    :cond_15
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 62
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    iget-object v6, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v6, v5}, Lcom/android/tools/r8/graph/j1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_4

    .line 63
    :cond_16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 64
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 65
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    .line 66
    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4

    :cond_17
    move-object v2, v3

    :cond_18
    :goto_4
    if-nez v2, :cond_19

    goto/16 :goto_d

    :cond_19
    move-object v4, v2

    goto :goto_5

    :cond_1a
    move-object v4, v3

    .line 67
    :goto_5
    instance-of v0, v4, Lcom/android/tools/r8/graph/A4;

    if-eqz v0, :cond_22

    .line 68
    new-instance v5, Lcom/android/tools/r8/graph/k5;

    .line 69
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 70
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v1

    .line 71
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/tools/r8/graph/k5;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/j1;)V

    .line 72
    iget-object v3, p0, Lcom/android/tools/r8/internal/Dc0;->h:Lcom/android/tools/r8/internal/Ec0;

    .line 73
    sget-object v6, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 74
    sget-object v7, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    .line 75
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    .line 76
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/RV;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 78
    sget-boolean v2, Lcom/android/tools/r8/internal/Dc0;->i:Z

    if-nez v2, :cond_1c

    if-eqz v1, :cond_1b

    goto :goto_6

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1c
    :goto_6
    if-nez v2, :cond_1e

    .line 79
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eq v1, v2, :cond_1d

    goto :goto_7

    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_1e
    :goto_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/Dc0;->h:Lcom/android/tools/r8/internal/Ec0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Ec0;->g:Lcom/android/tools/r8/internal/zc0;

    monitor-enter v2

    .line 81
    :try_start_0
    sget-boolean v3, Lcom/android/tools/r8/internal/zc0;->c:Z

    if-nez v3, :cond_20

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_8

    :cond_1f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_9

    .line 82
    :cond_20
    :goto_8
    iget-object v3, v2, Lcom/android/tools/r8/internal/zc0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 84
    iget-object v0, v2, Lcom/android/tools/r8/internal/zc0;->a:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_c

    :cond_21
    monitor-exit v2

    goto/16 :goto_c

    .line 86
    :goto_9
    monitor-exit v2

    throw p1

    .line 87
    :cond_22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dc0;->h:Lcom/android/tools/r8/internal/Ec0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ec0;->f:Lcom/android/tools/r8/internal/Bc0;

    .line 88
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Bc0;->a:Z

    if-nez v0, :cond_23

    goto/16 :goto_b

    .line 89
    :cond_23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 90
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dc0;->m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 91
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 92
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_b

    .line 93
    :cond_24
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 94
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-nez v1, :cond_25

    .line 96
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-nez v0, :cond_28

    .line 97
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 98
    invoke-interface {p2, v0}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_b

    .line 99
    :cond_25
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_a

    .line 100
    :cond_26
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 101
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 103
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v2

    if-nez v2, :cond_27

    .line 104
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 105
    invoke-interface {p2, v2}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_a

    .line 106
    :cond_27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 107
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 108
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 109
    invoke-interface {p2, v0}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 110
    :goto_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dc0;->h:Lcom/android/tools/r8/internal/Ec0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ec0;->g:Lcom/android/tools/r8/internal/zc0;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/tools/r8/internal/zc0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_c

    .line 111
    :cond_28
    :goto_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dc0;->h:Lcom/android/tools/r8/internal/Ec0;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Ec0;->h:Z

    if-eqz v0, :cond_29

    goto :goto_d

    .line 112
    :cond_29
    :goto_c
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_2a
    :goto_d
    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/TC0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/TC0;-><init>(Lcom/android/tools/r8/internal/Dc0;Lcom/android/tools/r8/internal/m80;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Vn;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Set;)V

    sget-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v1, p1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Dc0;->f:Lcom/android/tools/r8/internal/m80;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/m80;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dc0;->g:Lcom/android/tools/r8/internal/m80;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Dc0;->g:Lcom/android/tools/r8/internal/m80;

    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    new-instance v2, Lu/P0;

    invoke-direct {v2}, Lu/P0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/UC0;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/UC0;-><init>(Lcom/android/tools/r8/internal/Dc0;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Dc0;->g:Lcom/android/tools/r8/internal/m80;

    return-object p1
.end method
