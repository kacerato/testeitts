.class public final Lcom/android/tools/r8/internal/z5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/z5;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/z5;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iput-object p1, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    new-instance p1, Lcom/android/tools/r8/internal/kC;

    const/4 v2, 0x4

    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    sget-object v3, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->e3:Lcom/android/tools/r8/graph/M2;

    sget-object v4, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->b3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->T3:Lcom/android/tools/r8/graph/M2;

    sget-object v5, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v2, v5}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->i3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    sget-boolean v2, Lcom/android/tools/r8/internal/z5;->e:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/nC;)V

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/z5;->a:Lcom/android/tools/r8/internal/nC;

    iget-object p1, v0, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/u1;)V

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->c(Lcom/android/tools/r8/graph/u1;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->d(Lcom/android/tools/r8/graph/u1;)V

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v4}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->f(Lcom/android/tools/r8/graph/u1;)V

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->e(Lcom/android/tools/r8/graph/u1;)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->g(Lcom/android/tools/r8/graph/u1;)V

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->j3:Lcom/android/tools/r8/graph/M2;

    const-string v2, "withInitial"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/internal/G5;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/G5;-><init>(Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/android/tools/r8/internal/u5;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->i5:Lcom/android/tools/r8/graph/r1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/r1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-static {}, Lcom/android/tools/r8/internal/EV;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->E:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->i(Lcom/android/tools/r8/graph/u1;)V

    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->l(Lcom/android/tools/r8/graph/u1;)V

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->k(Lcom/android/tools/r8/graph/u1;)V

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->j(Lcom/android/tools/r8/graph/u1;)V

    :cond_a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->G:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->m(Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->n(Lcom/android/tools/r8/graph/u1;)V

    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->H:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->o(Lcom/android/tools/r8/graph/u1;)V

    :cond_c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->I:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->p(Lcom/android/tools/r8/graph/u1;)V

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->e3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->h(Lcom/android/tools/r8/graph/u1;)V

    :cond_d
    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->b3:Lcom/android/tools/r8/graph/M2;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->Q:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->q(Lcom/android/tools/r8/graph/u1;)V

    :cond_e
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->J:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, v1, Lcom/android/tools/r8/graph/u1;->i3:Lcom/android/tools/r8/graph/M2;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->Q:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/z5;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->s(Lcom/android/tools/r8/graph/u1;)V

    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->r(Lcom/android/tools/r8/graph/u1;)V

    :cond_10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->K:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->t(Lcom/android/tools/r8/graph/u1;)V

    :cond_11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/C2;->L:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/graph/u1;)V

    :cond_12
    :goto_0
    return-void
.end method

.method public static a(ILcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->R3:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, p2, p0, v0}, Lcom/android/tools/r8/internal/Te;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;ILcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2
    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->W2:Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 3
    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->X2:Lcom/android/tools/r8/graph/M2;

    .line 4
    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 5
    invoke-virtual {v0, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 6
    const-string v7, "<init>"

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 7
    new-instance v7, Lcom/android/tools/r8/internal/eC;

    .line 8
    invoke-direct {v7}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 9
    new-instance v8, Lcom/android/tools/r8/internal/z9;

    int-to-long v9, v1

    sget-object v11, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v9, Lcom/android/tools/r8/internal/xa;

    invoke-direct {v9, v3}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    const/4 v10, 0x2

    new-array v11, v10, [Lcom/android/tools/r8/internal/W9;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    aput-object v9, v11, v4

    .line 10
    invoke-static {v10, v11}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    invoke-virtual {v7, v10, v11}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    move v8, v12

    :goto_0
    if-ge v8, v1, :cond_0

    .line 12
    new-instance v9, Lcom/android/tools/r8/internal/kb;

    sget-object v11, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v9, v11}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v13, Lcom/android/tools/r8/internal/z9;

    int-to-long v14, v8

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v13, v14, v15, v2}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v2, Lcom/android/tools/r8/internal/wa;

    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v14, Lcom/android/tools/r8/internal/kb;

    invoke-direct {v14, v11}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v11, Lcom/android/tools/r8/internal/pa;

    sget-object v15, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    mul-int/lit8 v12, v8, 0x2

    invoke-direct {v11, v15, v12}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v10, Lcom/android/tools/r8/internal/pa;

    add-int/2addr v12, v4

    invoke-direct {v10, v15, v12}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v12, Lcom/android/tools/r8/internal/ga;

    const/16 v15, 0xb7

    const/4 v4, 0x0

    invoke-direct {v12, v15, v6, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v15, Lcom/android/tools/r8/internal/Z8;

    sget-object v4, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v15, v4}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    move-object/from16 v16, v5

    const/16 v4, 0x8

    new-array v5, v4, [Lcom/android/tools/r8/internal/W9;

    const/4 v4, 0x0

    aput-object v9, v5, v4

    const/4 v4, 0x1

    aput-object v13, v5, v4

    const/4 v4, 0x2

    aput-object v2, v5, v4

    const/4 v2, 0x3

    aput-object v14, v5, v2

    const/4 v2, 0x4

    aput-object v11, v5, v2

    const/4 v2, 0x5

    aput-object v10, v5, v2

    const/4 v2, 0x6

    aput-object v12, v5, v2

    const/4 v2, 0x7

    aput-object v15, v5, v2

    const/16 v2, 0x8

    .line 13
    invoke-static {v2, v5}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    invoke-virtual {v7, v2, v5}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    const/4 v4, 0x1

    add-int/2addr v8, v4

    move-object/from16 v5, v16

    const/4 v10, 0x2

    const/4 v12, 0x0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/ga;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->S3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 17
    const-string v5, "ofEntries"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 18
    invoke-virtual {v0, v4, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v0, Lcom/android/tools/r8/internal/ab;

    sget-object v3, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/4 v3, 0x2

    new-array v5, v3, [Lcom/android/tools/r8/internal/W9;

    aput-object v2, v5, v4

    const/4 v2, 0x1

    aput-object v0, v5, v2

    .line 19
    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    invoke-virtual {v7, v3, v5}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p3

    iget-object v9, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    mul-int/lit8 v11, v1, 0x2

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v12

    .line 22
    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v10, 0x7

    move-object v8, v0

    move-object v13, v14

    .line 23
    invoke-direct/range {v8 .. v14}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static b(ILcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->T3:Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, p2, p0, v0}, Lcom/android/tools/r8/internal/Te;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/C2;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 27
    sget v1, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v1, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    sget-boolean p1, Lcom/android/tools/r8/internal/z5;->e:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 36
    sget-boolean v1, Lcom/android/tools/r8/internal/z5;->e:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/C2;->c(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/C2;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 74
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->d4:Lcom/android/tools/r8/graph/M2;

    .line 75
    const-string v3, "getMajorSdkVersion"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 76
    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 77
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 78
    new-instance v4, Lcom/android/tools/r8/internal/y5;

    new-instance v5, Lcom/android/tools/r8/internal/qE1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/qE1;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/y5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 79
    const-string v3, "getMinorSdkVersion"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 80
    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 81
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 82
    new-instance v3, Lcom/android/tools/r8/internal/y5;

    new-instance v4, Lcom/android/tools/r8/internal/rE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/rE1;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/y5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 83
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->e4:Lcom/android/tools/r8/graph/M2;

    .line 84
    const-string v3, "SDK_INT_FULL"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 85
    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 86
    new-instance v3, Lcom/android/tools/r8/internal/A5;

    new-instance v4, Lcom/android/tools/r8/internal/sE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/sE1;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/A5;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F5;)V

    .line 87
    iget-object v4, v0, Lcom/android/tools/r8/internal/z5;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/x5;

    .line 88
    sget-boolean v3, Lcom/android/tools/r8/internal/z5;->e:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    const v2, 0x186a0

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BASE"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v4

    const v2, 0x30d40

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BASE_1_1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v5

    const v2, 0x493e0

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CUPCAKE"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v6

    const v2, 0x61a80

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DONUT"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v7

    const v2, 0x7a120

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ECLAIR"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v8

    const v2, 0x927c0

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ECLAIR_0_1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v9

    const v2, 0xaae60

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ECLAIR_MR1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v10

    const v2, 0xc3500

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FROYO"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v11

    const v2, 0xdbba0

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GINGERBREAD"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v12

    const v2, 0xf4240

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "GINGERBREAD_MR1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v13

    const v2, 0x10c8e0

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HONEYCOMB"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v14

    const v2, 0x124f80

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HONEYCOMB_MR1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v15

    const v2, 0x13d620

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HONEYCOMB_MR2"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v16

    const v2, 0x155cc0

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ICE_CREAM_SANDWICH"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v17

    const v2, 0x16e360

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ICE_CREAM_SANDWICH_MR1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v18

    const v2, 0x186a00

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "JELLY_BEAN"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v19

    const v2, 0x19f0a0

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "JELLY_BEAN_MR1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v20

    const v2, 0x1b7740

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "JELLY_BEAN_MR2"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v21

    const v2, 0x1cfde0

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "KITKAT"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v22

    const v2, 0x1e8480

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "KITKAT_WATCH"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v23

    const v2, 0x200b20

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LOLLIPOP"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v24

    const v2, 0x2191c0

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LOLLIPOP_MR1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v25

    const v2, 0x231860

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "M"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v26

    const v2, 0x249f00

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "N"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v27

    const v2, 0x2625a0

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "N_MR1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v28

    const v2, 0x27ac40

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "O"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v29

    const v2, 0x2932e0

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "O_MR1"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v30

    const v2, 0x2ab980

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "P"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v31

    const v2, 0x2c4020

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Q"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v32

    const v2, 0x2dc6c0

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "R"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v33

    const v2, 0x2f4d60

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "S"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v34

    const v2, 0x30d400

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "S_V2"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v35

    const v2, 0x325aa0

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TIRAMISU"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v36

    const v2, 0x33e140

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "UPSIDE_DOWN_CAKE"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v37

    const v2, 0x3567e0

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "VANILLA_ICE_CREAM"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v38

    const v2, 0x36ee80

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BAKLAVA"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v39

    filled-new-array/range {v4 .. v39}, [[Ljava/lang/Object;

    move-result-object v2

    .line 125
    const-string v3, "Landroid/os/Build$VERSION_CODES_FULL;"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/16 v6, 0x24

    if-ge v5, v6, :cond_4

    .line 126
    aget-object v6, v2, v5

    .line 127
    aget-object v7, v6, v4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 128
    iget-object v8, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v3, v8, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    .line 129
    new-instance v8, Lcom/android/tools/r8/internal/C5;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/Integer;

    .line 130
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 131
    invoke-static {v6}, Lcom/android/tools/r8/internal/I2;->a(I)Lcom/android/tools/r8/internal/B5;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lcom/android/tools/r8/internal/C5;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/B5;)V

    .line 132
    iget-object v6, v0, Lcom/android/tools/r8/internal/z5;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v7, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/x5;

    .line 133
    sget-boolean v7, Lcom/android/tools/r8/internal/z5;->e:Z

    if-nez v7, :cond_3

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 134
    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->c0()Z

    move-result v2

    if-nez v2, :cond_5

    .line 135
    const-string v2, "Ljava/util/concurrent/ExecutorService;"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 136
    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->x0:Lcom/android/tools/r8/graph/L2;

    .line 137
    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v4, v4, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 138
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 139
    new-instance v3, Lcom/android/tools/r8/internal/D5;

    new-instance v4, Lcom/android/tools/r8/internal/tE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/tE1;-><init>()V

    invoke-direct {v3, v1, v4, v2}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)V
    .locals 5

    .line 50
    const-string v0, "decrementExact"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 51
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 52
    invoke-virtual {p1, p2, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/rD1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/rD1;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 55
    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 56
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/sD1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/sD1;-><init>()V

    invoke-direct {v1, v0, v2, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 58
    const-string v0, "incrementExact"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 59
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 60
    invoke-virtual {p1, p2, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/tD1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/tD1;-><init>()V

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 63
    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 64
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/uD1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/uD1;-><init>()V

    invoke-direct {v1, v0, v2, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 66
    const-string v0, "negateExact"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 67
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 68
    invoke-virtual {p1, p2, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/vD1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/vD1;-><init>()V

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 71
    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 72
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/android/tools/r8/internal/v5;

    new-instance v0, Lcom/android/tools/r8/internal/xD1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xD1;-><init>()V

    invoke-direct {p2, p1, v0, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nC;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/aE1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/aE1;-><init>(Lcom/android/tools/r8/internal/z5;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/x5;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->c:Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/x5;

    .line 141
    sget-boolean v0, Lcom/android/tools/r8/internal/z5;->e:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 43
    iget-object v1, v1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v1

    .line 45
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xU;->i()Ljava/util/Set;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/u1;)V
    .locals 5

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->W1:Lcom/android/tools/r8/graph/M2;

    .line 15
    const-string v1, "compare"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 16
    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 17
    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 18
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/bE1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/bE1;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c2:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 21
    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 22
    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/cE1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/cE1;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 26
    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 27
    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 28
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/eE1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/eE1;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->b2:Lcom/android/tools/r8/graph/M2;

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 31
    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 32
    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 33
    new-instance v2, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/sU;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    .line 35
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 36
    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 37
    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 38
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/fE1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/fE1;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 39
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->X1:Lcom/android/tools/r8/graph/M2;

    .line 40
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 41
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 42
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/gE1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/gE1;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 44
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->r2:Lcom/android/tools/r8/graph/M2;

    .line 45
    const-string v1, "emptyEnumeration"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 46
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->c6:Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 47
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/hE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/hE1;-><init>()V

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 49
    const-string v1, "emptyIterator"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 50
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->M3:Lcom/android/tools/r8/graph/M2;

    new-array v4, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 51
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 52
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/iE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/iE1;-><init>()V

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    .line 53
    const-string v1, "emptyListIterator"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 54
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->b6:Lcom/android/tools/r8/graph/M2;

    new-array v3, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 55
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/jE1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/jE1;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/z5;->a:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/C2;)Z
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    .line 5
    iget p2, p1, Lcom/android/tools/r8/internal/xU;->d:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/xU;->b:Lcom/android/tools/r8/internal/EU;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EU;->c()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3a

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lcom/android/tools/r8/internal/ll0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ll0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ll0;->a()I

    move-result p2

    iput p2, p1, Lcom/android/tools/r8/internal/xU;->d:I

    :goto_0
    const/4 p1, 0x2

    const/4 v0, 0x1

    if-lt p2, p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/z5;->a:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/u1;)V
    .locals 6

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "compare"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->Z2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/WB1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/WB1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "deepEquals"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/XB1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/XB1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "equals"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/YB1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/YB1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "hash"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/Y30;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "hashCode"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/ZB1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ZB1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/u5;

    new-instance v3, Lcom/android/tools/r8/internal/X30;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/X30;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j2;->g:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->y()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/aC1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/aC1;-><init>()V

    invoke-direct {v2, v1, v4, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    :cond_2
    const-string v1, "toString"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v4, Lcom/android/tools/r8/internal/v5;

    new-instance v5, Lcom/android/tools/r8/internal/bC1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/bC1;-><init>()V

    invoke-direct {v4, v2, v5}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/cC1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cC1;-><init>()V

    invoke-direct {v0, p1, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/u1;)V
    .locals 9

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->W1:Lcom/android/tools/r8/graph/M2;

    const-string v1, "hashCode"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/u5;

    new-instance v3, Lcom/android/tools/r8/internal/Q10;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Q10;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/u5;

    new-instance v3, Lcom/android/tools/r8/internal/Q10;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Q10;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/u5;

    new-instance v4, Lcom/android/tools/r8/internal/Q10;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Q10;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v2, "max"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v3, "min"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "sum"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v5, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Y1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/yD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/yD1;-><init>()V

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v5, "isFinite"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {p1, v0, v7, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/ID1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/ID1;-><init>()V

    invoke-direct {v6, v0, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->Z1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {p1, v0, v7, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/Ex;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {p1, v0, v7, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {p1, v0, v7, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {p1, v0, v7, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/JD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/JD1;-><init>()V

    invoke-direct {v5, v0, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->V1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/KD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/KD1;-><init>()V

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v5, "logicalAnd"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/u5;

    sget-object v7, Lcom/android/tools/r8/internal/qa;->e:Lcom/android/tools/r8/internal/qa;

    invoke-static {v7}, Lcom/android/tools/r8/internal/h7;->a(Lcom/android/tools/r8/internal/qa;)Lcom/android/tools/r8/internal/w5;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v5, "logicalOr"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/u5;

    sget-object v7, Lcom/android/tools/r8/internal/qa;->f:Lcom/android/tools/r8/internal/qa;

    invoke-static {v7}, Lcom/android/tools/r8/internal/h7;->a(Lcom/android/tools/r8/internal/qa;)Lcom/android/tools/r8/internal/w5;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v5, "logicalXor"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v5, Lcom/android/tools/r8/internal/u5;

    sget-object v6, Lcom/android/tools/r8/internal/qa;->g:Lcom/android/tools/r8/internal/qa;

    invoke-static {v6}, Lcom/android/tools/r8/internal/h7;->a(Lcom/android/tools/r8/internal/qa;)Lcom/android/tools/r8/internal/w5;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->b2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/LD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/LD1;-><init>()V

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v5, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/u5;

    invoke-static {}, Lcom/android/tools/r8/internal/R10;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->X1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/u5;

    new-instance v2, Lcom/android/tools/r8/internal/Q10;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Q10;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->t2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->u2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    const-string v4, "addExact"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v3, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/MD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/MD1;-><init>()V

    invoke-direct {v6, v5, v7, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/ND1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ND1;-><init>()V

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "floorDiv"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v3, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/OD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/OD1;-><init>()V

    invoke-direct {v6, v5, v7, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/PD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/PD1;-><init>()V

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "floorMod"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v3, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/QD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/QD1;-><init>()V

    invoke-direct {v6, v5, v7, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/zD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/zD1;-><init>()V

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "multiplyExact"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v3, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/AD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/AD1;-><init>()V

    invoke-direct {v6, v5, v7, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/BD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/BD1;-><init>()V

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "nextDown"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v3, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/CD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/CD1;-><init>()V

    invoke-direct {v6, v5, v7, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/DD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/DD1;-><init>()V

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "subtractExact"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v3, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/ED1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/ED1;-><init>()V

    invoke-direct {v6, v5, v7, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/FD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/FD1;-><init>()V

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "toIntExact"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/v5;

    new-instance v5, Lcom/android/tools/r8/internal/GD1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/GD1;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->t2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->c0()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/u5;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->g5:Lcom/android/tools/r8/graph/o1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/o1;->b:Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/ci;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ci;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    new-instance v0, Lcom/android/tools/r8/internal/u5;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->h5:Lcom/android/tools/r8/graph/q1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/q1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-static {}, Lcom/android/tools/r8/internal/lt;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    :cond_1
    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "requireNonNull"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/pE1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pE1;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "isNull"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/dE1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/dE1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "nonNull"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/oE1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/oE1;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/u1;)V
    .locals 9

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->W1:Lcom/android/tools/r8/graph/M2;

    const-string v1, "toUnsignedInt"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/TC1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/TC1;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v2, "toUnsignedLong"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v3, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/fD1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/fD1;-><init>()V

    invoke-direct {v3, v0, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/iD1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/iD1;-><init>()V

    invoke-direct {v3, v1, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/jD1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/jD1;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "divideUnsigned"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/v5;

    new-instance v5, Lcom/android/tools/r8/internal/kD1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/kD1;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v3, "remainderUnsigned"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/mD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/mD1;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "compareUnsigned"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/nD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/nD1;-><init>()V

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/oD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/oD1;-><init>()V

    invoke-direct {v5, v2, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v2, "parseUnsignedInt"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/pD1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/pD1;-><init>()V

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/qD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/qD1;-><init>()V

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v2, "toUnsignedString"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v8, Lcom/android/tools/r8/internal/UC1;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/UC1;-><init>()V

    invoke-direct {v6, v5, v8}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v8, v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/VC1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/VC1;-><init>()V

    invoke-direct {v5, v0, v6, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->b2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/WC1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/WC1;-><init>()V

    invoke-direct {v5, v1, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/v5;

    new-instance v5, Lcom/android/tools/r8/internal/XC1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/XC1;-><init>()V

    invoke-direct {v3, v1, v5}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/YC1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/YC1;-><init>()V

    invoke-direct {v3, v1, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "parseUnsignedLong"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/v5;

    new-instance v5, Lcom/android/tools/r8/internal/ZC1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ZC1;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/bD1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/bD1;-><init>()V

    invoke-direct {v3, v1, v4, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/cD1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/cD1;-><init>()V

    invoke-direct {v3, v1, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/dD1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/dD1;-><init>()V

    invoke-direct {v1, v0, v2, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->B2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "getParameterCount"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    new-array v3, v7, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/D5;

    new-instance v3, Lcom/android/tools/r8/internal/eD1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/eD1;-><init>()V

    invoke-direct {v2, v1, v3, v0}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "join"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->f2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/gD1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/gD1;-><init>()V

    invoke-direct {v3, v2, v4, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->s2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/hD1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hD1;-><init>()V

    invoke-direct {v0, p1, v1, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/u1;)V
    .locals 14

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->e3:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->f3:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->h3:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->g3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const-string v2, "or"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/D5;

    new-instance v4, Lcom/android/tools/r8/internal/VB1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/VB1;-><init>()V

    invoke-direct {v3, v2, v4, v0}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->i3:Lcom/android/tools/r8/graph/M2;

    const-string v2, "Ljava/util/stream/DoubleStream;"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const-string v3, "Ljava/util/stream/LongStream;"

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    const-string v4, "Ljava/util/stream/IntStream;"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/JC1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/JC1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/KC1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/KC1;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/LC1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/LC1;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/MC1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/MC1;-><init>()V

    const/4 v6, 0x4

    new-array v7, v6, [Lcom/android/tools/r8/internal/F5;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v3, 0x2

    aput-object v4, v7, v3

    const/4 v4, 0x3

    aput-object v5, v7, v4

    const-string v5, "stream"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    move v9, v8

    :goto_0
    if-ge v9, v6, :cond_0

    aget-object v10, v1, v9

    aget-object v11, v0, v9

    new-array v12, v8, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v11, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v11

    invoke-virtual {p1, v10, v11, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    new-instance v12, Lcom/android/tools/r8/internal/D5;

    aget-object v13, v7, v9

    invoke-direct {v12, v11, v13, v10}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v12}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/2addr v9, v2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c3:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->p3:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->q3:Lcom/android/tools/r8/graph/M2;

    iget-object v9, p1, Lcom/android/tools/r8/graph/u1;->r3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v5, v7, v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v5, Lcom/android/tools/r8/internal/NC1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/NC1;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/OC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/OC1;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/QC1;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/QC1;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/RC1;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/RC1;-><init>()V

    new-array v11, v6, [Lcom/android/tools/r8/internal/F5;

    aput-object v5, v11, v8

    aput-object v7, v11, v2

    aput-object v9, v11, v3

    aput-object v10, v11, v4

    move v5, v8

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v7, v1, v5

    aget-object v9, v0, v5

    const-string v10, "ifPresentOrElse"

    invoke-virtual {p1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    iget-object v12, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, p1, Lcom/android/tools/r8/graph/u1;->d3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {p1, v12, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    invoke-virtual {p1, v7, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/D5;

    aget-object v12, v11, v5

    invoke-direct {v10, v9, v12, v7}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v10}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v5, v7, v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/u40;->d()Lcom/android/tools/r8/internal/w5;

    move-result-object v5

    invoke-static {}, Lcom/android/tools/r8/internal/u40;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v7

    invoke-static {}, Lcom/android/tools/r8/internal/u40;->c()Lcom/android/tools/r8/internal/w5;

    move-result-object v9

    invoke-static {}, Lcom/android/tools/r8/internal/u40;->b()Lcom/android/tools/r8/internal/w5;

    move-result-object v10

    new-array v11, v6, [Lcom/android/tools/r8/internal/w5;

    aput-object v5, v11, v8

    aput-object v7, v11, v2

    aput-object v9, v11, v3

    aput-object v10, v11, v4

    const-string v5, "orElseThrow"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    move v7, v8

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v9, v0, v7

    new-array v10, v8, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    aget-object v10, v1, v7

    invoke-virtual {p1, v10, v9, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/u5;

    aget-object v12, v11, v7

    invoke-direct {v10, v9, v12}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v10}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/2addr v7, v2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/SC1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/SC1;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/gC1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/gC1;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/rC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/rC1;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/CC1;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/CC1;-><init>()V

    new-array v10, v6, [Lcom/android/tools/r8/internal/F5;

    aput-object v0, v10, v8

    aput-object v5, v10, v2

    aput-object v7, v10, v3

    aput-object v9, v10, v4

    const-string v0, "isEmpty"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    move v3, v8

    :goto_3
    if-ge v3, v6, :cond_3

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    new-array v5, v8, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {p1, v5, v4, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/D5;

    aget-object v7, v10, v3

    aget-object v9, v1, v3

    invoke-direct {v5, v4, v7, v9}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/2addr v3, v2

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    const-string v0, "Ljava/math/BigDecimal;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/E5;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v3, "stripTrailingZeros"

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/zE1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/zE1;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/android/tools/r8/internal/E5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->c0()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/u5;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->j5:Lcom/android/tools/r8/graph/s1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/s1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-static {}, Lcom/android/tools/r8/internal/FV;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "requireNonNullElseGet"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/ZD1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ZD1;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final k(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "requireNonNullElse"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/dC1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/dC1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "checkIndex"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/eC1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/eC1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "checkFromToIndex"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/fC1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/fC1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "checkFromIndexSize"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/hC1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hC1;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/u1;)V
    .locals 10

    new-instance v0, Lcom/android/tools/r8/internal/u5;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->m5:Lcom/android/tools/r8/graph/Z1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/Z1;->d:Lcom/android/tools/r8/graph/A2;

    sget-object v2, Lcom/android/tools/r8/internal/Ue;->a:Lcom/android/tools/r8/internal/w5;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    new-instance v0, Lcom/android/tools/r8/internal/u5;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->n5:Lcom/android/tools/r8/graph/c2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/c2;->a:Lcom/android/tools/r8/graph/A2;

    sget-object v2, Lcom/android/tools/r8/internal/Ue;->b:Lcom/android/tools/r8/internal/w5;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    new-instance v0, Lcom/android/tools/r8/internal/u5;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->o5:Lcom/android/tools/r8/graph/d2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/d2;->a:Lcom/android/tools/r8/graph/A2;

    sget-object v2, Lcom/android/tools/r8/internal/Ue;->c:Lcom/android/tools/r8/internal/w5;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->R3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "of"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    const/16 v5, 0xa

    if-gt v4, v5, :cond_0

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v5}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v0, v5, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/iC1;

    invoke-direct {v7, v4}, Lcom/android/tools/r8/internal/iC1;-><init>(I)V

    invoke-direct {v6, v5, v7}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/jC1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/jC1;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v2, v0, v4, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->T3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    move v4, v3

    :goto_1
    if-gt v4, v5, :cond_1

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1, v0, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {p1, v0, v7, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/v5;

    new-instance v9, Lcom/android/tools/r8/internal/kC1;

    invoke-direct {v9, v4}, Lcom/android/tools/r8/internal/kC1;-><init>(I)V

    invoke-direct {v8, v7, v9}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/lC1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/lC1;-><init>()V

    invoke-direct {v2, v0, v4, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->S3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    move v2, v3

    :goto_2
    if-gt v2, v5, :cond_2

    mul-int/lit8 v4, v2, 0x2

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v7, Lcom/android/tools/r8/internal/v5;

    new-instance v8, Lcom/android/tools/r8/internal/mC1;

    invoke-direct {v8, p1, v2}, Lcom/android/tools/r8/internal/mC1;-><init>(Lcom/android/tools/r8/graph/u1;I)V

    invoke-direct {v7, v4, v8}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->W2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "ofEntries"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/nC1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/nC1;-><init>()V

    invoke-direct {v1, v0, v2, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->S3:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->W2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "entry"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/oC1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/oC1;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/u1;)V
    .locals 7

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->W1:Lcom/android/tools/r8/graph/M2;

    const-string v1, "compareUnsigned"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/KB1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/KB1;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->c2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/PC1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/PC1;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->t2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->u2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    const-string v4, "multiplyExact"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/aD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/aD1;-><init>()V

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "multiplyFull"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/lD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/lD1;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "multiplyHigh"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/wD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/wD1;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "floorDiv"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/HD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/HD1;-><init>()V

    invoke-direct {v5, v4, v6, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "floorMod"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/v5;

    new-instance v5, Lcom/android/tools/r8/internal/SD1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/SD1;-><init>()V

    invoke-direct {v4, v3, v5, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/u5;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->e5:Lcom/android/tools/r8/graph/x1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/x1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-static {}, Lcom/android/tools/r8/internal/qn0;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->c0()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/u5;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->f5:Lcom/android/tools/r8/graph/p1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/p1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-static {}, Lcom/android/tools/r8/internal/Lu0;->a()Lcom/android/tools/r8/internal/w5;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/u5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    :cond_1
    return-void
.end method

.method public final n(Lcom/android/tools/r8/graph/u1;)V
    .locals 6

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->R3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "copyOf"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->R3:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->Y2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/RB1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/RB1;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->T3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->T3:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->Y2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/SB1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/SB1;-><init>()V

    invoke-direct {v2, v0, v3, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->S3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->S3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/TB1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/TB1;-><init>()V

    invoke-direct {v0, p1, v1, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final o(Lcom/android/tools/r8/graph/u1;)V
    .locals 6

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->i6:Lcom/android/tools/r8/graph/M2;

    const-string v1, "compareAndSwapObject"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4, v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/E5;

    new-instance v3, Lcom/android/tools/r8/internal/kE1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/kE1;-><init>()V

    invoke-direct {v2, v1, v3, v0}, Lcom/android/tools/r8/internal/E5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v0, "Ljava/util/concurrent/atomic/AtomicReference;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    const-string v1, "compareAndSet"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/E5;

    new-instance v4, Lcom/android/tools/r8/internal/lE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/lE1;-><init>()V

    invoke-direct {v3, v2, v4, v0}, Lcom/android/tools/r8/internal/E5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v0, "Ljava/util/concurrent/atomic/AtomicReferenceArray;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/E5;

    new-instance v4, Lcom/android/tools/r8/internal/mE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/mE1;-><init>()V

    invoke-direct {v3, v2, v4, v0}, Lcom/android/tools/r8/internal/E5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v0, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/E5;

    new-instance v2, Lcom/android/tools/r8/internal/nE1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/nE1;-><init>()V

    invoke-direct {v1, p1, v2, v0}, Lcom/android/tools/r8/internal/E5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final p(Lcom/android/tools/r8/graph/u1;)V
    .locals 7

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "parseInt"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v2, v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/uE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/uE1;-><init>()V

    invoke-direct {v1, v0, v4, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/wE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/wE1;-><init>()V

    invoke-direct {v1, v0, v4, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "parseUnsignedInt"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v4, v4, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/xE1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/xE1;-><init>()V

    invoke-direct {v1, v0, v4, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->b2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "parseLong"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v6, v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/z5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/yE1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/yE1;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/LB1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/LB1;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->b2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "parseUnsignedLong"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4, v5, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/MB1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/MB1;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "repeat"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/D5;

    new-instance v4, Lcom/android/tools/r8/internal/NB1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/NB1;-><init>()V

    invoke-direct {v2, v1, v4, v0}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "isBlank"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    new-array v4, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/D5;

    new-instance v4, Lcom/android/tools/r8/internal/OB1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/OB1;-><init>()V

    invoke-direct {v2, v1, v4, v0}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "strip"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    new-array v4, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/D5;

    new-instance v4, Lcom/android/tools/r8/internal/PB1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/PB1;-><init>()V

    invoke-direct {v2, v1, v4, v0}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "stripLeading"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    new-array v4, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/D5;

    new-instance v4, Lcom/android/tools/r8/internal/QB1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/QB1;-><init>()V

    invoke-direct {v2, v1, v4, v0}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "stripTrailing"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    new-array v3, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/D5;

    new-instance v2, Lcom/android/tools/r8/internal/vE1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/vE1;-><init>()V

    invoke-direct {v1, p1, v2, v0}, Lcom/android/tools/r8/internal/D5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final q(Lcom/android/tools/r8/graph/u1;)V
    .locals 3

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->b3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "not"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    filled-new-array {v0}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/UB1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/UB1;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final r(Lcom/android/tools/r8/graph/u1;)V
    .locals 7

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "checkIndex"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/TD1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/TD1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "checkFromToIndex"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v3, Lcom/android/tools/r8/internal/UD1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/UD1;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v1, "checkFromIndexSize"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/VD1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/VD1;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    const-string v1, "compare"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/WD1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/WD1;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->t2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->u2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    if-ge v3, v1, :cond_0

    aget-object v1, v0, v3

    const-string v2, "absExact"

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v1, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/XD1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/XD1;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {p1, v1, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/v5;

    new-instance v4, Lcom/android/tools/r8/internal/YD1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/YD1;-><init>()V

    invoke-direct {v2, v1, v4}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->u2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final s(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->i3:Lcom/android/tools/r8/graph/M2;

    const-string v1, "ofNullable"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i3:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/v5;

    new-instance v1, Lcom/android/tools/r8/internal/RD1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/RD1;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    return-void
.end method

.method public final t(Lcom/android/tools/r8/graph/u1;)V
    .locals 8

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->X1:Lcom/android/tools/r8/graph/M2;

    const-string v1, "toString"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/v5;

    new-instance v2, Lcom/android/tools/r8/internal/pC1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC1;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->t2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->u2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    move v1, v3

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    const-string v4, "clamp"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/zC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/zC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/AC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/AC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/BC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/BC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/DC1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/DC1;-><init>()V

    invoke-direct {v5, v4, v6, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "ceilDiv"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/EC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/EC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/FC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/FC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/GC1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/GC1;-><init>()V

    invoke-direct {v5, v4, v6, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "ceilDivExact"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/HC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/HC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/IC1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/IC1;-><init>()V

    invoke-direct {v5, v4, v6, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "ceilMod"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/qC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/qC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/sC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/sC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/tC1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/tC1;-><init>()V

    invoke-direct {v5, v4, v6, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "divideExact"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/uC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/uC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/vC1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/vC1;-><init>()V

    invoke-direct {v5, v4, v6, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "floorDivExact"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/v5;

    new-instance v7, Lcom/android/tools/r8/internal/wC1;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/wC1;-><init>()V

    invoke-direct {v6, v5, v7, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/v5;

    new-instance v6, Lcom/android/tools/r8/internal/xC1;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/xC1;-><init>()V

    invoke-direct {v5, v4, v6, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    const-string v4, "unsignedMultiplyHigh"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p1, v2, v5, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance v4, Lcom/android/tools/r8/internal/v5;

    new-instance v5, Lcom/android/tools/r8/internal/yC1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/yC1;-><init>()V

    invoke-direct {v4, v2, v5, v3}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/z5;->a(Lcom/android/tools/r8/internal/x5;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method
