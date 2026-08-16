.class public Lfl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfl/a$b;
    }
.end annotation


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:I

.field public final D:I

.field public E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:I

.field public final X:I

.field public final Y:J

.field public final Z:I

.field public a:Ljava/security/SecureRandom;

.field public a0:I

.field public final b:I

.field public b0:I

.field public final c:I

.field public final c0:I

.field public final d:I

.field public final d0:J

.field public final e:I

.field public final e0:I

.field public final f:I

.field public f0:I

.field public final g:I

.field public final g0:I

.field public final h:I

.field public final h0:I

.field public final i:I

.field public final i0:I

.field public final j:I

.field public j0:LIi/N;

.field public final k:I

.field public final k0:I

.field public final l:I

.field public l0:I

.field public final m:I

.field public m0:I

.field public n:I

.field public n0:I

.field public o:I

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public q0:I

.field public r:I

.field public r0:Lfl/k;

.field public final s:I

.field public s0:Lfl/n;

.field public final t:I

.field public t0:Lfl/l;

.field public u:I

.field public u0:Lfl/l;

.field public final v:I

.field public final w:I

.field public final x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v9, 0x40

    iput v9, v0, Lfl/a;->k:I

    const/4 v10, 0x4

    iput v10, v0, Lfl/a;->Z:I

    iput v2, v0, Lfl/a;->b:I

    iput v3, v0, Lfl/a;->c:I

    iput v4, v0, Lfl/a;->d:I

    iput v5, v0, Lfl/a;->e:I

    iput v6, v0, Lfl/a;->f:I

    iput v7, v0, Lfl/a;->g:I

    iput v8, v0, Lfl/a;->h:I

    ushr-int/lit8 v11, v2, 0x3

    and-int/lit8 v12, v2, 0x7

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    add-int/2addr v11, v12

    iput v11, v0, Lfl/a;->e0:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lfl/a;->g0:I

    add-int v12, v2, v3

    iput v12, v0, Lfl/a;->i:I

    ushr-int/lit8 v15, v2, 0x6

    iput v15, v0, Lfl/a;->l:I

    and-int/lit8 v10, v2, 0x3f

    iput v10, v0, Lfl/a;->m:I

    ushr-int/lit8 v13, v12, 0x6

    iput v13, v0, Lfl/a;->s:I

    and-int/lit8 v9, v12, 0x3f

    iput v9, v0, Lfl/a;->t:I

    ushr-int/lit8 v14, v1, 0x3

    iput v14, v0, Lfl/a;->w:I

    add-int/lit8 v14, v2, -0x1

    shl-int/lit8 v19, v14, 0x1

    move/from16 v28, v14

    const/4 v14, 0x6

    ushr-int/lit8 v19, v19, 0x6

    const/16 v20, 0x1

    add-int/lit8 v14, v19, 0x1

    iput v14, v0, Lfl/a;->x:I

    const/16 v1, 0x9

    const/4 v5, 0x6

    if-eq v14, v5, :cond_5

    if-eq v14, v1, :cond_4

    const/16 v5, 0x11

    if-eq v14, v5, :cond_3

    const/16 v5, 0xc

    if-eq v14, v5, :cond_2

    const/16 v5, 0xd

    if-eq v14, v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance v5, Lfl/k$b;

    invoke-direct {v5}, Lfl/k$b;-><init>()V

    :goto_1
    iput-object v5, v0, Lfl/a;->r0:Lfl/k;

    goto :goto_2

    :cond_2
    new-instance v5, Lfl/k$a;

    invoke-direct {v5}, Lfl/k$a;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v5, Lfl/k$c;

    invoke-direct {v5}, Lfl/k$c;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v5, Lfl/k$e;

    invoke-direct {v5}, Lfl/k$e;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v5, Lfl/k$d;

    invoke-direct {v5}, Lfl/k$d;-><init>()V

    goto :goto_1

    :goto_2
    rsub-int/lit8 v5, v10, 0x40

    sub-int v1, v2, v4

    iput v1, v0, Lfl/a;->j:I

    move/from16 v24, v5

    ushr-int/lit8 v5, v1, 0x6

    iput v5, v0, Lfl/a;->C:I

    move/from16 v25, v5

    and-int/lit8 v5, v1, 0x3f

    iput v5, v0, Lfl/a;->D:I

    move/from16 v26, v11

    ushr-int/lit8 v11, v3, 0x6

    iput v11, v0, Lfl/a;->F:I

    and-int/lit8 v8, v3, 0x3f

    iput v8, v0, Lfl/a;->G:I

    if-eqz v8, :cond_6

    add-int/lit8 v11, v11, 0x1

    :cond_6
    iput v11, v0, Lfl/a;->H:I

    ushr-int/lit8 v8, v1, 0x3

    iput v8, v0, Lfl/a;->I:I

    and-int/lit8 v1, v1, 0x7

    iput v1, v0, Lfl/a;->J:I

    if-eqz v1, :cond_7

    const/4 v11, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    add-int/2addr v11, v8

    iput v11, v0, Lfl/a;->K:I

    add-int/lit8 v11, v13, 0x1

    mul-int/2addr v11, v13

    const/16 v27, 0x1

    ushr-int/lit8 v11, v11, 0x1

    const/16 v18, 0x40

    mul-int/lit8 v11, v11, 0x40

    add-int/lit8 v29, v13, 0x1

    mul-int v29, v29, v9

    add-int v11, v11, v29

    iput v11, v0, Lfl/a;->O:I

    and-int/lit8 v11, v12, 0x7

    iput v11, v0, Lfl/a;->V:I

    ushr-int/lit8 v29, v12, 0x3

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    add-int v11, v29, v11

    iput v11, v0, Lfl/a;->W:I

    add-int/2addr v4, v3

    rsub-int/lit8 v11, v1, 0x8

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lfl/a;->X:I

    invoke-static {v5}, Lfl/j;->f(I)J

    move-result-wide v6

    iput-wide v6, v0, Lfl/a;->Y:J

    invoke-static {v10}, Lfl/j;->f(I)J

    move-result-wide v6

    iput-wide v6, v0, Lfl/a;->d0:J

    if-eqz v10, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    add-int/2addr v4, v15

    iput v4, v0, Lfl/a;->o:I

    add-int/lit8 v11, v15, 0x1

    mul-int/2addr v15, v11

    const/4 v11, 0x1

    ushr-int/2addr v15, v11

    const/16 v11, 0x40

    mul-int/2addr v15, v11

    mul-int v11, v4, v10

    add-int/2addr v15, v11

    iput v15, v0, Lfl/a;->v:I

    mul-int v11, v2, v4

    iput v11, v0, Lfl/a;->c0:I

    if-eqz v9, :cond_a

    const/4 v11, 0x1

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    add-int/2addr v11, v13

    iput v11, v0, Lfl/a;->p:I

    mul-int v15, v12, v11

    iput v15, v0, Lfl/a;->B:I

    add-int/lit8 v15, v13, 0x1

    mul-int/2addr v13, v15

    const/4 v15, 0x1

    ushr-int/2addr v13, v15

    const/16 v18, 0x40

    mul-int/lit8 v13, v13, 0x40

    mul-int/2addr v9, v11

    add-int/2addr v13, v9

    iput v13, v0, Lfl/a;->u:I

    add-int/lit8 v9, v3, 0x1

    mul-int v13, v3, v9

    ushr-int/2addr v13, v15

    add-int/2addr v13, v15

    iput v13, v0, Lfl/a;->q:I

    add-int/lit8 v27, v12, 0x1

    mul-int v12, v12, v27

    ushr-int/2addr v12, v15

    add-int/lit8 v15, v12, 0x1

    iput v15, v0, Lfl/a;->r:I

    mul-int/2addr v13, v4

    iput v13, v0, Lfl/a;->z:I

    mul-int/2addr v8, v15

    iput v8, v0, Lfl/a;->L:I

    const/16 v4, 0x8

    add-int/2addr v12, v4

    const/4 v8, 0x3

    ushr-int/2addr v12, v8

    iput v12, v0, Lfl/a;->M:I

    and-int/lit8 v12, v15, 0x7

    iput v12, v0, Lfl/a;->N:I

    rsub-int/lit8 v12, v12, 0x8

    and-int/lit8 v12, v12, 0x7

    iput v12, v0, Lfl/a;->P:I

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    mul-int/2addr v1, v12

    iput v1, v0, Lfl/a;->Q:I

    iput v14, v0, Lfl/a;->y:I

    const/16 v1, 0xae

    const/16 v12, 0x220

    const/16 v13, 0x192

    const/16 v15, 0x166

    const/16 v8, 0x162

    const/16 v30, 0x2

    const/16 v4, 0x80

    if-eq v2, v1, :cond_1a

    const/16 v1, 0xaf

    if-eq v2, v1, :cond_19

    const/16 v1, 0xb1

    if-eq v2, v1, :cond_18

    const/16 v1, 0xb2

    if-eq v2, v1, :cond_17

    const/16 v1, 0x109

    if-eq v2, v1, :cond_16

    const/16 v1, 0x10a

    if-eq v2, v1, :cond_15

    const/16 v1, 0x10c

    if-eq v2, v1, :cond_14

    if-eq v2, v8, :cond_13

    if-eq v2, v15, :cond_12

    const/16 v1, 0x16c

    if-eq v2, v1, :cond_11

    const/16 v1, 0x16e

    if-eq v2, v1, :cond_10

    if-eq v2, v13, :cond_f

    const/16 v1, 0x219

    if-eq v2, v1, :cond_e

    if-eq v2, v12, :cond_d

    const/16 v1, 0x10e

    if-eq v2, v1, :cond_c

    const/16 v1, 0x10f

    if-ne v2, v1, :cond_b

    const/16 v1, 0x3a

    :goto_7
    move v13, v1

    const/4 v1, 0x0

    :goto_8
    const/16 v19, 0x0

    goto :goto_9

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: need to add support for HFEn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    const/16 v1, 0x35

    goto :goto_7

    :cond_d
    move v13, v4

    const/4 v1, 0x1

    const/16 v19, 0x3

    goto :goto_9

    :cond_e
    const/16 v1, 0xa

    move v13, v1

    move/from16 v19, v30

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/16 v1, 0xab

    goto :goto_7

    :cond_10
    const/16 v1, 0x1d

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    const/16 v13, 0x9

    goto :goto_8

    :cond_12
    const/16 v1, 0x39

    goto :goto_7

    :cond_13
    const/16 v1, 0x63

    goto :goto_7

    :cond_14
    const/16 v1, 0x19

    goto :goto_7

    :cond_15
    const/16 v1, 0x2f

    goto :goto_7

    :cond_16
    const/16 v1, 0x2a

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    const/16 v13, 0x1f

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    const/16 v13, 0x8

    goto :goto_8

    :cond_19
    const/16 v1, 0x10

    goto :goto_7

    :cond_1a
    const/4 v1, 0x0

    const/16 v13, 0xd

    goto :goto_8

    :goto_9
    if-eqz v19, :cond_1b

    rsub-int/lit8 v31, v1, 0x40

    rsub-int/lit8 v32, v19, 0x40

    goto :goto_a

    :cond_1b
    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_a
    and-int/lit8 v33, v13, 0x3f

    const/16 v18, 0x40

    rsub-int/lit8 v33, v33, 0x40

    move/from16 v15, p6

    and-int/lit8 v34, v15, 0x1

    if-nez v34, :cond_1f

    const/4 v8, 0x1

    iput-boolean v8, v0, Lfl/a;->A:Z

    shl-int v27, v8, p7

    add-int/lit8 v12, v27, 0x1

    iput v12, v0, Lfl/a;->n:I

    if-nez v34, :cond_1e

    if-gt v12, v15, :cond_1d

    if-le v12, v8, :cond_1c

    add-int/lit8 v12, p8, 0x2

    add-int/lit8 v27, p7, -0x1

    mul-int v27, v27, p7

    ushr-int/lit8 v30, v27, 0x1

    add-int v12, v12, v30

    add-int v12, v12, p7

    iput v12, v0, Lfl/a;->a0:I

    const/4 v8, 0x0

    goto :goto_b

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The case where the term X^3 is removing is not implemented."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "It is useless to remove 0 term."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HFEDeg is odd, so to remove the leading term would decrease the degree."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const/4 v8, 0x0

    iput-boolean v8, v0, Lfl/a;->A:Z

    add-int/lit8 v12, p8, 0x2

    mul-int v17, p7, v26

    const/16 v27, 0x1

    ushr-int/lit8 v17, v17, 0x1

    add-int v12, v12, v17

    iput v12, v0, Lfl/a;->a0:I

    :goto_b
    if-eqz v5, :cond_20

    const/4 v12, 0x1

    goto :goto_c

    :cond_20
    move v12, v8

    :goto_c
    add-int v12, v25, v12

    iput v12, v0, Lfl/a;->E:I

    sub-int v12, v11, v12

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    goto :goto_d

    :cond_21
    move v5, v8

    :goto_d
    add-int/2addr v12, v5

    iput v12, v0, Lfl/a;->R:I

    const/4 v5, 0x1

    add-int/lit8 v17, p5, -0x1

    mul-int v17, v17, v12

    add-int v11, v11, v17

    iput v11, v0, Lfl/a;->S:I

    const/16 v5, 0x20

    const/16 v11, 0x100

    move/from16 v12, p1

    if-gt v12, v4, :cond_22

    iput v5, v0, Lfl/a;->T:I

    const/4 v12, 0x4

    iput v12, v0, Lfl/a;->U:I

    iput v4, v0, Lfl/a;->h0:I

    iput v11, v0, Lfl/a;->i0:I

    goto :goto_f

    :cond_22
    const/16 v8, 0xc0

    if-gt v12, v8, :cond_23

    const/16 v8, 0x30

    iput v8, v0, Lfl/a;->T:I

    const/4 v8, 0x6

    iput v8, v0, Lfl/a;->U:I

    iput v11, v0, Lfl/a;->h0:I

    const/16 v8, 0x180

    :goto_e
    iput v8, v0, Lfl/a;->i0:I

    goto :goto_f

    :cond_23
    const/16 v8, 0x40

    iput v8, v0, Lfl/a;->T:I

    const/16 v8, 0x8

    iput v8, v0, Lfl/a;->U:I

    iput v11, v0, Lfl/a;->h0:I

    const/16 v8, 0x200

    goto :goto_e

    :goto_f
    new-instance v8, LIi/N;

    iget v12, v0, Lfl/a;->i0:I

    invoke-direct {v8, v12}, LIi/N;-><init>(I)V

    iput-object v8, v0, Lfl/a;->j0:LIi/N;

    iget v8, v0, Lfl/a;->a0:I

    iget v12, v0, Lfl/a;->q:I

    const/16 v25, 0x1

    add-int/lit8 v12, v12, -0x1

    add-int/2addr v8, v12

    mul-int v3, v3, v26

    add-int/2addr v8, v3

    iget v3, v0, Lfl/a;->o:I

    mul-int/2addr v8, v3

    iput v8, v0, Lfl/a;->b0:I

    mul-int/2addr v9, v3

    iput v9, v0, Lfl/a;->k0:I

    const/16 v3, 0x22

    if-le v15, v3, :cond_24

    const/16 v3, 0xc4

    if-le v2, v3, :cond_27

    if-ge v15, v11, :cond_27

    :cond_24
    const/16 v3, 0x11

    if-ne v15, v3, :cond_25

    const/4 v3, 0x4

    :goto_10
    iput v3, v0, Lfl/a;->l0:I

    goto :goto_11

    :cond_25
    const/4 v3, 0x6

    goto :goto_10

    :goto_11
    iget v3, v0, Lfl/a;->l0:I

    const/4 v8, 0x1

    shl-int v9, v8, v3

    iput v9, v0, Lfl/a;->m0:I

    ushr-int v3, v15, v3

    rem-int v8, v15, v9

    if-eqz v8, :cond_26

    const/16 v17, 0x1

    goto :goto_12

    :cond_26
    const/16 v17, 0x0

    :goto_12
    add-int v3, v3, v17

    iput v3, v0, Lfl/a;->n0:I

    sub-int v3, v15, v3

    iput v3, v0, Lfl/a;->o0:I

    :cond_27
    if-eqz v19, :cond_29

    const/16 v3, 0x220

    if-ne v2, v3, :cond_28

    if-ne v13, v4, :cond_28

    new-instance v3, Lfl/n$h;

    move-object/from16 v16, v3

    move/from16 v17, v1

    move/from16 v18, v19

    move/from16 v19, v10

    move/from16 v20, v24

    move/from16 v21, v31

    move/from16 v22, v32

    move-wide/from16 v23, v6

    invoke-direct/range {v16 .. v24}, Lfl/n$h;-><init>(IIIIIIJ)V

    :goto_13
    iput-object v3, v0, Lfl/a;->s0:Lfl/n;

    goto/16 :goto_15

    :cond_28
    new-instance v3, Lfl/n$g;

    move-object/from16 v16, v3

    move/from16 v17, v1

    move/from16 v18, v19

    move/from16 v19, v13

    move/from16 v20, v10

    move/from16 v21, v24

    move/from16 v22, v31

    move/from16 v23, v32

    move/from16 v24, v33

    move-wide/from16 v25, v6

    invoke-direct/range {v16 .. v26}, Lfl/n$g;-><init>(IIIIIIIIJ)V

    goto :goto_13

    :cond_29
    if-le v2, v11, :cond_2a

    const/16 v1, 0x121

    if-ge v2, v1, :cond_2a

    if-le v13, v5, :cond_2a

    const/16 v1, 0x40

    if-ge v13, v1, :cond_2a

    new-instance v1, Lfl/n$b;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lfl/n$b;-><init>(IIIIJ)V

    :goto_14
    iput-object v1, v0, Lfl/a;->s0:Lfl/n;

    goto/16 :goto_15

    :cond_2a
    const/16 v1, 0x162

    if-ne v2, v1, :cond_2b

    new-instance v1, Lfl/n$d;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lfl/n$d;-><init>(IIIIJ)V

    goto :goto_14

    :cond_2b
    const/16 v1, 0x166

    if-ne v2, v1, :cond_2c

    new-instance v1, Lfl/n$c;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lfl/n$c;-><init>(IIIIJ)V

    goto :goto_14

    :cond_2c
    const/16 v1, 0x192

    if-ne v2, v1, :cond_2d

    new-instance v1, Lfl/n$f;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lfl/n$f;-><init>(IIIIJ)V

    goto :goto_14

    :cond_2d
    const/4 v1, 0x6

    if-eq v14, v1, :cond_30

    const/16 v1, 0x9

    if-eq v14, v1, :cond_2f

    const/16 v1, 0xc

    if-eq v14, v1, :cond_2e

    goto :goto_15

    :cond_2e
    new-instance v1, Lfl/n$e;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lfl/n$e;-><init>(IIIIJ)V

    goto :goto_14

    :cond_2f
    new-instance v1, Lfl/n$b;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lfl/n$b;-><init>(IIIIJ)V

    goto :goto_14

    :cond_30
    new-instance v1, Lfl/n$a;

    move-object/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v19, v24

    move/from16 v20, v33

    move-wide/from16 v21, v6

    invoke-direct/range {v16 .. v22}, Lfl/n$a;-><init>(IIIIJ)V

    goto/16 :goto_14

    :goto_15
    new-instance v1, Lfl/l;

    invoke-direct {v1, v14}, Lfl/l;-><init>(I)V

    iput-object v1, v0, Lfl/a;->t0:Lfl/l;

    new-instance v1, Lfl/l;

    iget v3, v0, Lfl/a;->o:I

    invoke-direct {v1, v3}, Lfl/l;-><init>(I)V

    iput-object v1, v0, Lfl/a;->u0:Lfl/l;

    const/16 v1, 0x1f

    iput v1, v0, Lfl/a;->p0:I

    :goto_16
    iget v3, v0, Lfl/a;->p0:I

    ushr-int v4, v28, v3

    if-nez v4, :cond_31

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lfl/a;->p0:I

    goto :goto_16

    :cond_31
    const/4 v3, 0x1

    add-int/2addr v2, v3

    ushr-int/2addr v2, v3

    :goto_17
    iput v1, v0, Lfl/a;->q0:I

    iget v1, v0, Lfl/a;->q0:I

    ushr-int v4, v2, v1

    if-nez v4, :cond_32

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_32
    sub-int/2addr v1, v3

    iput v1, v0, Lfl/a;->q0:I

    return-void
.end method

.method public static s0(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    rem-long/2addr p0, p2

    return-wide p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/p;->H(J)[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-static {p2, p3}, Lorg/bouncycastle/util/p;->H(J)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public A(Lfl/l;ILfl/l;I)I
    .locals 9

    new-instance v6, Lfl/l;

    iget v0, p0, Lfl/a;->o:I

    invoke-direct {v6, v0}, Lfl/l;-><init>(I)V

    new-instance v7, Lfl/l;

    iget v0, p0, Lfl/a;->o:I

    invoke-direct {v7, v0}, Lfl/l;-><init>(I)V

    new-instance v8, Lfl/l;

    invoke-direct {v8, p1}, Lfl/l;-><init>(Lfl/l;)V

    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, p4

    invoke-virtual {p0, v7, p3, v0}, Lfl/a;->f0(Lfl/l;Lfl/l;I)V

    :goto_0
    if-lt p2, p4, :cond_1

    iget v0, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, p4, v0}, Lfl/l;->t(III)I

    move-result p2

    if-ge p2, p4, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p2, p4

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-virtual {v8, v0}, Lfl/l;->a(I)V

    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, p2

    invoke-virtual {p0, v6, p1, v0, v7}, Lfl/a;->j0(Lfl/l;Lfl/l;ILfl/l;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, v6

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lfl/a;->T(Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x1

    iget p4, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, p3, p4}, Lfl/l;->t(III)I

    move-result p1

    return p1
.end method

.method public final A0(Lfl/l;ILfl/l;I)V
    .locals 2

    iget v0, p3, Lfl/l;->b:I

    add-int/2addr p4, v0

    iget-object v0, p0, Lfl/a;->r0:Lfl/k;

    iget-object v1, p0, Lfl/a;->t0:Lfl/l;

    iget-object v1, v1, Lfl/l;->a:[J

    iget-object p3, p3, Lfl/l;->a:[J

    invoke-virtual {v0, v1, p3, p4}, Lfl/k;->J([J[JI)V

    iget-object p3, p0, Lfl/a;->t0:Lfl/l;

    invoke-virtual {p0, p1, p2, p3}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    return-void
.end method

.method public final B(Lfl/l;ILfl/l;I)V
    .locals 8

    new-instance v6, Lfl/l;

    invoke-direct {v6}, Lfl/l;-><init>()V

    invoke-virtual {p1}, Lfl/l;->m()I

    move-result v7

    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lfl/l;->r(I)V

    :goto_0
    if-lt p2, p4, :cond_0

    neg-int v0, p4

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-virtual {v6, p1, v0}, Lfl/l;->c(Lfl/l;I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lfl/a;->T(Lfl/l;Lfl/l;Lfl/l;II)V

    iget v0, p0, Lfl/a;->o:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lfl/l;->r(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v7}, Lfl/l;->a(I)V

    return-void
.end method

.method public final B0(Lfl/l;Lfl/l;)V
    .locals 3

    iget-object v0, p0, Lfl/a;->r0:Lfl/k;

    iget-object v1, p0, Lfl/a;->t0:Lfl/l;

    iget-object v1, v1, Lfl/l;->a:[J

    iget-object v2, p2, Lfl/l;->a:[J

    iget p2, p2, Lfl/l;->b:I

    invoke-virtual {v0, v1, v2, p2}, Lfl/k;->J([J[JI)V

    iget-object p2, p0, Lfl/a;->s0:Lfl/n;

    iget-object v0, p1, Lfl/l;->a:[J

    iget p1, p1, Lfl/l;->b:I

    iget-object v1, p0, Lfl/a;->t0:Lfl/l;

    iget-object v1, v1, Lfl/l;->a:[J

    invoke-virtual {p2, v0, p1, v1}, Lfl/n;->a([JI[J)V

    return-void
.end method

.method public final C(Lfl/l;ILfl/l;I)I
    .locals 8

    new-instance v6, Lfl/l;

    invoke-direct {v6}, Lfl/l;-><init>()V

    new-instance v7, Lfl/l;

    invoke-direct {v7}, Lfl/l;-><init>()V

    :goto_0
    if-lt p2, p4, :cond_1

    iget v0, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, p4, v0}, Lfl/l;->t(III)I

    move-result p2

    if-ge p2, p4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, p2

    invoke-virtual {v6, p1, v0}, Lfl/l;->c(Lfl/l;I)V

    neg-int v0, p4

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-virtual {v7, v6, v0}, Lfl/l;->c(Lfl/l;I)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lfl/a;->T(Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    iget p3, p0, Lfl/a;->o:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4, p3}, Lfl/l;->t(III)I

    move-result p1

    return p1
.end method

.method public final C0(Lfl/l;I)V
    .locals 5

    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Lfl/l;->m()I

    move-result v1

    invoke-virtual {p1, v0}, Lfl/l;->r(I)V

    new-instance v2, Lfl/l;

    invoke-direct {v2, p1, v0}, Lfl/l;-><init>(Lfl/l;I)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_0

    invoke-virtual {p0, v2, p1}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    iget v4, p0, Lfl/a;->o:I

    neg-int v4, v4

    invoke-virtual {p1, v4}, Lfl/l;->r(I)V

    iget v4, p0, Lfl/a;->o:I

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lfl/l;->r(I)V

    iget v4, p0, Lfl/a;->o:I

    invoke-virtual {v2, v0, v4}, Lfl/l;->A(II)V

    iget v4, p0, Lfl/a;->o:I

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lfl/l;->r(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p1}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    invoke-virtual {p1, v1}, Lfl/l;->a(I)V

    return-void
.end method

.method public final D(Lfl/l;IIILfl/o$a;Lfl/l;)V
    .locals 3

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr p2, v1

    invoke-direct {v0, p1, p2}, Lfl/l;-><init>(Lfl/l;I)V

    new-instance p1, Lfl/l;

    invoke-direct {p1}, Lfl/l;-><init>()V

    :goto_0
    if-lt p3, p4, :cond_1

    iget p2, p0, Lfl/a;->f:I

    neg-int p2, p2

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Lfl/l;->c(Lfl/l;I)V

    invoke-virtual {p0, p1, v0, p6}, Lfl/a;->m0(Lfl/l;Lfl/l;Lfl/l;)V

    const/4 p2, 0x1

    :goto_1
    iget v1, p0, Lfl/a;->a0:I

    if-ge p2, v1, :cond_0

    iget-object v1, p5, Lfl/o$a;->b:[I

    aget v1, v1, p2

    invoke-virtual {p1, v1}, Lfl/l;->r(I)V

    iget-object v1, p5, Lfl/o$a;->a:Lfl/l;

    iget v2, p0, Lfl/a;->o:I

    mul-int/2addr v2, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lfl/a;->n0(Lfl/l;Lfl/l;Lfl/l;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    iget p2, p0, Lfl/a;->o:I

    neg-int p2, p2

    invoke-virtual {v0, p2}, Lfl/l;->r(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final D0(Lfl/l;Lfl/l;Lfl/l;I)V
    .locals 6

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    shl-int v2, v0, v1

    if-ge v2, p4, :cond_0

    iget v2, p0, Lfl/a;->o:I

    shl-int v3, v2, v1

    add-int/lit8 v4, v1, -0x1

    shl-int/2addr v2, v4

    invoke-virtual {p0, p1, v3, p1, v2}, Lfl/a;->A0(Lfl/l;ILfl/l;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lfl/a;->b:I

    if-ge v1, v3, :cond_1

    iget v3, p0, Lfl/a;->o:I

    shl-int v4, v3, v1

    add-int/lit8 v5, v1, -0x1

    shl-int/2addr v3, v5

    invoke-virtual {p0, p2, v4, p1, v3}, Lfl/a;->A0(Lfl/l;ILfl/l;I)V

    invoke-virtual {p0, p2, v2, p3, p4}, Lfl/a;->B(Lfl/l;ILfl/l;I)V

    iget v2, p0, Lfl/a;->o:I

    mul-int/2addr v2, p4

    invoke-virtual {p1, p2, v2}, Lfl/l;->P(Lfl/l;I)V

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lfl/a;->b:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, p2, v2}, Lfl/a;->C0(Lfl/l;I)V

    shl-int/2addr v2, v0

    invoke-virtual {p0, p2, v2, p3, p4}, Lfl/a;->B(Lfl/l;ILfl/l;I)V

    iget v2, p0, Lfl/a;->o:I

    mul-int/2addr v2, p4

    invoke-virtual {p1, p2, v2}, Lfl/l;->P(Lfl/l;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final E(Lfl/l;Lfl/l;Lfl/l;I)V
    .locals 3

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->x:I

    invoke-direct {v0, v1}, Lfl/l;-><init>(I)V

    invoke-virtual {p2}, Lfl/l;->m()I

    move-result v1

    invoke-virtual {p3}, Lfl/l;->m()I

    move-result v2

    invoke-virtual {p0, v0, p2, p3}, Lfl/a;->l0(Lfl/l;Lfl/l;Lfl/l;)V

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0, v0, p2, p3, p4}, Lfl/a;->U(Lfl/l;Lfl/l;Lfl/l;I)V

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, v0}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    invoke-virtual {p2, v1}, Lfl/l;->a(I)V

    invoke-virtual {p3, v2}, Lfl/l;->a(I)V

    return-void
.end method

.method public final E0(Lfl/l;[B)V
    .locals 10

    new-instance v0, Lfl/m;

    invoke-direct {v0, p1}, Lfl/m;-><init>(Lfl/l;)V

    iget p1, p0, Lfl/a;->V:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    iget v2, p0, Lfl/a;->W:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v3, v2}, Lfl/m;->Y(I[BII)V

    iget v2, p0, Lfl/a;->V:I

    if-eqz v2, :cond_0

    iget v2, p0, Lfl/a;->W:I

    sub-int/2addr v2, v1

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Lfl/m;->g0(IJ)V

    :cond_0
    iget v2, p0, Lfl/a;->i:I

    iget v4, p0, Lfl/a;->p:I

    shl-int/lit8 v4, v4, 0x3

    iget v5, p0, Lfl/a;->I:I

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lfl/m;->f0(I)V

    move v4, v1

    :goto_0
    iget v5, p0, Lfl/a;->e:I

    if-ge v4, v5, :cond_9

    iget v5, p0, Lfl/a;->d:I

    iget v6, p0, Lfl/a;->c:I

    add-int/2addr v5, v6

    and-int/lit8 v6, v2, 0x7

    rsub-int/lit8 v7, v6, 0x8

    and-int/lit8 v7, v7, 0x7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v6, :cond_3

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int v6, v7, v6

    iget v7, p0, Lfl/a;->J:I

    shl-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lfl/m;->k0(I)V

    iget v6, p0, Lfl/a;->X:I

    sub-int v6, v5, v6

    if-ltz v6, :cond_1

    invoke-virtual {v0}, Lfl/m;->e0()V

    :cond_1
    if-lez v6, :cond_2

    iget v7, p0, Lfl/a;->X:I

    add-int/2addr v2, v7

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v2, 0x7

    ushr-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lfl/m;->k0(I)V

    add-int/2addr v2, v6

    goto :goto_1

    :cond_2
    add-int/2addr v2, v5

    :cond_3
    :goto_1
    iget v6, p0, Lfl/a;->d:I

    iget v7, p0, Lfl/a;->c:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    iget v7, p0, Lfl/a;->j:I

    add-int/2addr v7, v5

    and-int/lit8 v5, v7, 0x7

    if-eqz v5, :cond_6

    move v7, v3

    :goto_2
    add-int/lit8 v8, v6, -0x1

    ushr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    ushr-int/lit8 v8, v2, 0x3

    aget-byte v9, p2, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v5

    invoke-virtual {v0, v9}, Lfl/m;->k0(I)V

    invoke-virtual {v0}, Lfl/m;->e0()V

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v5, 0x8

    ushr-int/2addr v8, v9

    invoke-virtual {v0, v8}, Lfl/m;->k0(I)V

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    ushr-int/lit8 v7, v2, 0x3

    aget-byte v8, p2, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v5

    invoke-virtual {v0, v8}, Lfl/m;->k0(I)V

    invoke-virtual {v0}, Lfl/m;->e0()V

    add-int/lit8 v6, v6, 0x7

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v1

    rsub-int/lit8 v5, v5, 0x8

    if-le v6, v5, :cond_5

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    ushr-int v5, v7, v5

    invoke-virtual {v0, v5}, Lfl/m;->i0(I)V

    invoke-virtual {v0}, Lfl/m;->e0()V

    :cond_5
    add-int/2addr v2, v6

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_3
    add-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v7, v7, 0x3

    if-ge v5, v7, :cond_7

    ushr-int/lit8 v7, v2, 0x3

    aget-byte v7, p2, v7

    invoke-virtual {v0, v7}, Lfl/m;->i0(I)V

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lfl/m;->e0()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    and-int/lit8 v5, v6, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    sub-int/2addr v2, v5

    :goto_4
    iget v5, p0, Lfl/a;->V:I

    if-eqz v5, :cond_8

    const/4 v5, -0x1

    int-to-long v6, p1

    invoke-virtual {v0, v5, v6, v7}, Lfl/m;->g0(IJ)V

    :cond_8
    iget v5, p0, Lfl/a;->W:I

    and-int/lit8 v5, v5, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    iget v6, p0, Lfl/a;->I:I

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lfl/m;->f0(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final F(Lfl/l;Lfl/l;Lfl/l;I)V
    .locals 0

    invoke-virtual {p0, p1, p3, p2, p4}, Lfl/a;->E(Lfl/l;Lfl/l;Lfl/l;I)V

    iget p3, p0, Lfl/a;->o:I

    invoke-virtual {p1, p3}, Lfl/l;->r(I)V

    iget p1, p0, Lfl/a;->c:I

    add-int/2addr p4, p1

    add-int/lit8 p4, p4, 0x1

    iget p1, p0, Lfl/a;->o:I

    mul-int/2addr p4, p1

    invoke-virtual {p2, p4}, Lfl/l;->r(I)V

    return-void
.end method

.method public F0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lfl/l;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lfl/l;-><init>(Lfl/l;)V

    sget-object v4, Lfl/a$a;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "Invalid input for vecMatProduct"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget v4, v0, Lfl/a;->E:I

    invoke-virtual {v1, v10, v4}, Lfl/l;->A(II)V

    iget v4, v0, Lfl/a;->l:I

    iget v11, v0, Lfl/a;->E:I

    iget v12, v0, Lfl/a;->o:I

    move v13, v10

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v1, v10, v4}, Lfl/l;->A(II)V

    iget v11, v0, Lfl/a;->o:I

    iget v4, v0, Lfl/a;->F:I

    :goto_0
    move v13, v10

    move v12, v11

    goto :goto_1

    :cond_2
    iget v4, v0, Lfl/a;->p:I

    invoke-virtual {v1, v10, v4}, Lfl/l;->A(II)V

    iget v4, v0, Lfl/a;->s:I

    iget v11, v0, Lfl/a;->p:I

    goto :goto_0

    :cond_3
    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v1, v10, v4}, Lfl/l;->A(II)V

    iget v11, v0, Lfl/a;->o:I

    iget v4, v0, Lfl/a;->l:I

    goto :goto_0

    :goto_1
    const-wide/16 v14, 0x1

    if-ge v13, v4, :cond_5

    invoke-virtual {v2, v13}, Lfl/l;->i(I)J

    move-result-wide v16

    :goto_2
    const/16 v6, 0x40

    if-ge v10, v6, :cond_4

    and-long v7, v16, v14

    neg-long v7, v7

    invoke-virtual {v1, v3, v11, v7, v8}, Lfl/l;->R(Lfl/l;IJ)V

    invoke-virtual {v3, v12}, Lfl/l;->r(I)V

    ushr-long v16, v16, v9

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    sget-object v4, Lfl/a$a;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v9, :cond_b

    const/4 v7, 0x2

    if-eq v4, v7, :cond_9

    const/4 v6, 0x3

    if-eq v4, v6, :cond_7

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v4, v0, Lfl/a;->G:I

    if-nez v4, :cond_8

    return-void

    :cond_8
    iget v4, v0, Lfl/a;->F:I

    invoke-virtual {v2, v4}, Lfl/l;->i(I)J

    move-result-wide v4

    iget v2, v0, Lfl/a;->G:I

    :goto_3
    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    iget v4, v0, Lfl/a;->t:I

    if-nez v4, :cond_a

    return-void

    :cond_a
    iget v4, v0, Lfl/a;->s:I

    invoke-virtual {v2, v4}, Lfl/l;->i(I)J

    move-result-wide v4

    iget v2, v0, Lfl/a;->t:I

    goto :goto_3

    :cond_b
    :goto_4
    iget v4, v0, Lfl/a;->l:I

    invoke-virtual {v2, v4}, Lfl/l;->i(I)J

    move-result-wide v4

    iget v2, v0, Lfl/a;->m:I

    goto :goto_3

    :goto_5
    if-ge v10, v2, :cond_c

    and-long v6, v4, v14

    neg-long v6, v6

    invoke-virtual {v1, v3, v11, v6, v7}, Lfl/l;->R(Lfl/l;IJ)V

    invoke-virtual {v3, v12}, Lfl/l;->r(I)V

    ushr-long/2addr v4, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_c
    sget-object v2, Lfl/a$b;->M:Lfl/a$b;

    move-object/from16 v3, p4

    if-ne v3, v2, :cond_d

    iget v2, v0, Lfl/a;->D:I

    if-eqz v2, :cond_d

    iget v2, v0, Lfl/a;->E:I

    sub-int/2addr v2, v9

    iget-wide v3, v0, Lfl/a;->Y:J

    invoke-virtual {v1, v2, v3, v4}, Lfl/l;->x(IJ)V

    :cond_d
    return-void
.end method

.method public G(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    new-instance v9, Lfl/l;

    iget v2, v0, Lfl/a;->x:I

    invoke-direct {v9, v2}, Lfl/l;-><init>(I)V

    new-instance v10, Lfl/l;

    iget v2, v0, Lfl/a;->x:I

    invoke-direct {v10, v2}, Lfl/l;-><init>(I)V

    new-instance v11, Lfl/l;

    iget v2, v0, Lfl/a;->g:I

    const/4 v12, 0x1

    add-int/2addr v2, v12

    iget v3, v0, Lfl/a;->o:I

    mul-int/2addr v2, v3

    invoke-direct {v11, v2}, Lfl/l;-><init>(I)V

    new-instance v13, Lfl/l;

    invoke-direct {v13}, Lfl/l;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lfl/l;->m()I

    move-result v14

    new-instance v15, Lfl/l;

    iget v2, v0, Lfl/a;->H:I

    invoke-direct {v15, v2}, Lfl/l;-><init>(I)V

    new-instance v7, Lfl/l;

    iget v2, v0, Lfl/a;->o:I

    invoke-direct {v7, v11, v2}, Lfl/l;-><init>(Lfl/l;I)V

    iget v2, v0, Lfl/a;->o:I

    invoke-virtual {v11, v8, v2}, Lfl/l;->e(Lfl/l;I)V

    iget v2, v0, Lfl/a;->o:I

    sub-int/2addr v2, v12

    iget-wide v3, v0, Lfl/a;->d0:J

    invoke-virtual {v11, v2, v3, v4}, Lfl/l;->x(IJ)V

    move v2, v12

    :goto_0
    iget v3, v0, Lfl/a;->g:I

    const/4 v6, 0x0

    if-gt v2, v3, :cond_0

    iget v3, v0, Lfl/a;->o:I

    neg-int v3, v3

    invoke-virtual {v0, v7, v6, v7, v3}, Lfl/a;->A0(Lfl/l;ILfl/l;I)V

    iget v3, v0, Lfl/a;->o:I

    invoke-virtual {v7, v3}, Lfl/l;->r(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, Lfl/a;->o:I

    iget v3, v0, Lfl/a;->H:I

    add-int v4, v2, v3

    iget v5, v0, Lfl/a;->p:I

    if-ne v4, v5, :cond_1

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v16, v2, -0x1

    iget v2, v0, Lfl/a;->m:I

    rsub-int/lit8 v17, v2, 0x40

    const/4 v3, 0x0

    move-object v2, v15

    move-object/from16 v4, p3

    move/from16 v18, v5

    move/from16 v5, v16

    move/from16 v6, v18

    move-object/from16 v19, v7

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lfl/l;->H(ILfl/l;III)V

    iget v2, v0, Lfl/a;->o:I

    iget v3, v0, Lfl/a;->H:I

    add-int/2addr v3, v2

    iget v4, v0, Lfl/a;->p:I

    if-eq v3, v4, :cond_2

    sub-int/2addr v2, v12

    move/from16 v3, v18

    add-int/2addr v2, v3

    invoke-virtual {v8, v2}, Lfl/l;->i(I)J

    move-result-wide v4

    iget v2, v0, Lfl/a;->m:I

    ushr-long/2addr v4, v2

    invoke-virtual {v15, v3, v4, v5}, Lfl/l;->u(IJ)V

    :cond_2
    invoke-virtual {v0, v9, v15, v1}, Lfl/a;->J(Lfl/l;Lfl/l;Lfl/l;)V

    iget v2, v0, Lfl/a;->z:I

    invoke-virtual {v1, v2}, Lfl/l;->r(I)V

    invoke-virtual {v0, v10, v15, v1}, Lfl/a;->G0(Lfl/l;Lfl/l;Lfl/l;)V

    move-object/from16 v2, v19

    invoke-virtual {v2, v11}, Lfl/l;->b(Lfl/l;)V

    invoke-virtual {v0, v9, v2, v10}, Lfl/a;->o0(Lfl/l;Lfl/l;Lfl/l;)V

    :goto_3
    iget v3, v0, Lfl/a;->g:I

    if-ge v12, v3, :cond_3

    invoke-virtual {v0, v10, v15, v1}, Lfl/a;->G0(Lfl/l;Lfl/l;Lfl/l;)V

    iget v3, v0, Lfl/a;->o:I

    iget v4, v0, Lfl/a;->y:I

    sub-int/2addr v4, v3

    invoke-virtual {v10, v3, v4}, Lfl/l;->A(II)V

    invoke-virtual {v13, v2}, Lfl/l;->b(Lfl/l;)V

    invoke-virtual {v0, v10, v1, v13, v12}, Lfl/a;->U(Lfl/l;Lfl/l;Lfl/l;I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3, v10}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    invoke-virtual {v0, v9, v13, v10}, Lfl/a;->o0(Lfl/l;Lfl/l;Lfl/l;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v10, v15, v1}, Lfl/a;->G0(Lfl/l;Lfl/l;Lfl/l;)V

    invoke-virtual {v13, v2}, Lfl/l;->b(Lfl/l;)V

    iget v4, v0, Lfl/a;->h:I

    if-eqz v4, :cond_4

    iget v4, v0, Lfl/a;->o:I

    iget v5, v0, Lfl/a;->y:I

    sub-int/2addr v5, v4

    invoke-virtual {v10, v4, v5}, Lfl/l;->A(II)V

    iget v4, v0, Lfl/a;->h:I

    invoke-virtual {v0, v10, v1, v13, v4}, Lfl/a;->U(Lfl/l;Lfl/l;Lfl/l;I)V

    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v10, v13, v4}, Lfl/l;->P(Lfl/l;I)V

    invoke-virtual {v0, v10, v3, v10}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    goto :goto_4

    :cond_4
    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v10, v10, v13, v4}, Lfl/l;->C(Lfl/l;Lfl/l;I)V

    :goto_4
    iget v4, v0, Lfl/a;->g:I

    iget v5, v0, Lfl/a;->o:I

    mul-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lfl/l;->r(I)V

    invoke-virtual {v0, v9, v2, v10}, Lfl/a;->o0(Lfl/l;Lfl/l;Lfl/l;)V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v3, v9}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    invoke-virtual {v1, v14}, Lfl/l;->a(I)V

    return-void
.end method

.method public final G0(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 2

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    invoke-direct {v0, p3, v1}, Lfl/l;-><init>(Lfl/l;I)V

    sget-object v1, Lfl/a$b;->V:Lfl/a$b;

    invoke-virtual {p0, p1, p2, v0, v1}, Lfl/a;->F0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    iget p2, p0, Lfl/a;->o:I

    invoke-virtual {p1, p3, p2}, Lfl/l;->P(Lfl/l;I)V

    iget p1, p0, Lfl/a;->k0:I

    invoke-virtual {p3, p1}, Lfl/l;->r(I)V

    return-void
.end method

.method public final H(Lfl/l;Lfl/l;Lfl/m;Lfl/m;)V
    .locals 3

    new-instance v0, Lfl/m;

    invoke-direct {v0, p4}, Lfl/m;-><init>(Lfl/m;)V

    invoke-virtual {p0, p1, p2, p3}, Lfl/a;->I(Lfl/l;Lfl/l;Lfl/m;)V

    iget p3, p0, Lfl/a;->D:I

    const/16 p4, 0x8

    if-ge p3, p4, :cond_0

    iget p3, p0, Lfl/a;->C:I

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p3, v1, v2}, Lfl/l;->u(IJ)V

    :cond_0
    iget p3, p0, Lfl/a;->D:I

    iget p4, p0, Lfl/a;->J:I

    sub-int/2addr p3, p4

    :goto_0
    iget p4, p0, Lfl/a;->D:I

    if-ge p3, p4, :cond_1

    iget p4, p0, Lfl/a;->C:I

    invoke-virtual {p0, p2, v0}, Lfl/a;->K(Lfl/l;Lfl/m;)J

    move-result-wide v1

    shl-long/2addr v1, p3

    invoke-virtual {p1, p4, v1, v2}, Lfl/l;->J(IJ)V

    iget p4, p0, Lfl/a;->O:I

    invoke-virtual {v0, p4}, Lfl/l;->r(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final I(Lfl/l;Lfl/l;Lfl/m;)V
    .locals 27

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget v0, v9, Lfl/a;->i:I

    iget v1, v9, Lfl/a;->j:I

    ushr-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_0

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    :cond_0
    move v12, v1

    and-int/lit8 v1, v12, 0x7

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    ushr-int/lit8 v1, v12, 0x3

    add-int/2addr v1, v13

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v1, v12, 0x3

    goto :goto_0

    :goto_1
    ushr-int/lit8 v1, v14, 0x3

    and-int/lit8 v2, v14, 0x7

    const/4 v15, 0x0

    if-eqz v2, :cond_2

    move v2, v13

    goto :goto_2

    :cond_2
    move v2, v15

    :goto_2
    add-int v8, v1, v2

    new-instance v7, Lfl/m;

    move-object/from16 v1, p3

    invoke-direct {v7, v1}, Lfl/m;-><init>(Lfl/m;)V

    invoke-virtual {v7}, Lfl/l;->j()[J

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lfl/l;->j()[J

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lfl/l;->m()I

    move-result v3

    invoke-static {v1, v15, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v7, v14}, Lfl/m;->f0(I)V

    move v5, v15

    :goto_3
    iget v1, v9, Lfl/a;->s:I

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x1

    if-ge v5, v1, :cond_7

    invoke-virtual {v11, v5}, Lfl/l;->i(I)J

    move-result-wide v1

    move/from16 v20, v0

    move-wide/from16 v21, v1

    move v6, v15

    :goto_4
    const/16 v0, 0x40

    if-ge v6, v0, :cond_6

    and-long v0, v21, v18

    cmp-long v0, v0, v16

    if-eqz v0, :cond_5

    invoke-virtual {v10, v15, v7, v15, v8}, Lfl/l;->O(ILfl/m;II)V

    invoke-virtual {v7, v14}, Lfl/m;->f0(I)V

    ushr-long v23, v21, v13

    add-int/lit8 v3, v6, 0x1

    const/16 v4, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v25, v5

    move/from16 v26, v6

    move-wide/from16 v5, v23

    move-object/from16 p3, v7

    move v7, v14

    move/from16 v23, v8

    invoke-virtual/range {v0 .. v8}, Lfl/a;->g(Lfl/l;Lfl/m;IIJII)V

    add-int/lit8 v5, v25, 0x1

    move v8, v5

    :goto_5
    iget v0, v9, Lfl/a;->s:I

    if-ge v8, v0, :cond_3

    invoke-virtual {v11, v8}, Lfl/l;->i(I)J

    move-result-wide v5

    const/4 v3, 0x0

    const/16 v4, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v7, v14

    move/from16 v24, v8

    move/from16 v8, v23

    invoke-virtual/range {v0 .. v8}, Lfl/a;->g(Lfl/l;Lfl/m;IIJII)V

    add-int/lit8 v8, v24, 0x1

    goto :goto_5

    :cond_3
    iget v1, v9, Lfl/a;->t:I

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v11, v0}, Lfl/l;->i(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v6, v14

    move/from16 v7, v23

    invoke-virtual/range {v0 .. v7}, Lfl/a;->l(Lfl/l;Lfl/m;IJII)V

    :cond_4
    move-object/from16 v8, p3

    goto :goto_6

    :cond_5
    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 p3, v7

    move/from16 v23, v8

    mul-int v0, v20, v14

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Lfl/m;->f0(I)V

    :goto_6
    ushr-long v21, v21, v13

    add-int/lit8 v6, v26, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object v7, v8

    move/from16 v8, v23

    move/from16 v5, v25

    goto :goto_4

    :cond_6
    move/from16 v25, v5

    move/from16 v23, v8

    move-object v8, v7

    add-int/lit8 v5, v25, 0x1

    move/from16 v0, v20

    move/from16 v8, v23

    goto/16 :goto_3

    :cond_7
    move/from16 v23, v8

    move-object v8, v7

    iget v2, v9, Lfl/a;->t:I

    if-eqz v2, :cond_9

    invoke-virtual {v11, v1}, Lfl/l;->i(I)J

    move-result-wide v1

    move v11, v0

    move-wide/from16 v20, v1

    move v7, v15

    :goto_7
    iget v0, v9, Lfl/a;->t:I

    if-ge v7, v0, :cond_9

    and-long v0, v20, v18

    cmp-long v0, v0, v16

    if-eqz v0, :cond_8

    move/from16 v6, v23

    invoke-virtual {v10, v15, v8, v15, v6}, Lfl/l;->O(ILfl/m;II)V

    invoke-virtual {v8, v14}, Lfl/m;->f0(I)V

    add-int/lit8 v3, v7, 0x1

    ushr-long v4, v20, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v22, v6

    move v6, v14

    move/from16 v23, v7

    move/from16 v7, v22

    invoke-virtual/range {v0 .. v7}, Lfl/a;->l(Lfl/l;Lfl/m;IJII)V

    goto :goto_8

    :cond_8
    move/from16 v22, v23

    move/from16 v23, v7

    mul-int v0, v11, v14

    invoke-virtual {v8, v0}, Lfl/m;->f0(I)V

    :goto_8
    ushr-long v20, v20, v13

    add-int/lit8 v7, v23, 0x1

    add-int/lit8 v11, v11, -0x1

    move/from16 v23, v22

    goto :goto_7

    :cond_9
    move/from16 v22, v23

    and-int/lit8 v0, v12, 0x3f

    if-eqz v0, :cond_a

    add-int/lit8 v8, v22, -0x1

    shl-long v0, v18, v0

    sub-long v0, v0, v18

    invoke-virtual {v10, v8, v0, v1}, Lfl/l;->x(IJ)V

    :cond_a
    return-void
.end method

.method public J(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 12

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->c:I

    invoke-direct {v0, v1}, Lfl/l;-><init>(I)V

    iget v1, p0, Lfl/a;->c:I

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v1, v1, 0x3f

    iget v3, p0, Lfl/a;->b:I

    ushr-int/lit8 v4, v3, 0x6

    and-int/lit8 v3, v3, 0x3f

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    add-int/2addr v4, v3

    invoke-virtual {p3}, Lfl/l;->m()I

    move-result v3

    new-instance v6, Lfl/l;

    invoke-direct {v6, v4}, Lfl/l;-><init>(I)V

    move v7, v5

    move v8, v7

    :goto_1
    if-ge v7, v2, :cond_1

    invoke-virtual {p2, v7}, Lfl/l;->i(I)J

    move-result-wide v9

    const/16 v11, 0x40

    invoke-virtual {v0, v9, v10, v8, v11}, Lfl/l;->I(JII)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p2, v7}, Lfl/l;->i(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v8, v1}, Lfl/l;->I(JII)I

    :cond_2
    invoke-virtual {p1, p3, v4}, Lfl/l;->e(Lfl/l;I)V

    invoke-virtual {p3, v4}, Lfl/l;->r(I)V

    :goto_2
    iget p2, p0, Lfl/a;->c:I

    if-ge v5, p2, :cond_5

    invoke-virtual {v6, p3, v4}, Lfl/l;->e(Lfl/l;I)V

    invoke-virtual {p3, v4}, Lfl/l;->r(I)V

    add-int/lit8 p2, v5, 0x1

    move v1, p2

    :goto_3
    iget v2, p0, Lfl/a;->c:I

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lfl/l;->i(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lfl/l;->S(Lfl/l;IJ)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Lfl/l;->i(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lfl/l;->S(Lfl/l;IJ)V

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Lfl/l;->i(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lfl/l;->S(Lfl/l;IJ)V

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v2}, Lfl/l;->i(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lfl/l;->S(Lfl/l;IJ)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_3

    :cond_3
    :goto_4
    iget v2, p0, Lfl/a;->c:I

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Lfl/l;->i(I)J

    move-result-wide v7

    invoke-virtual {v6, p3, v4, v7, v8}, Lfl/l;->S(Lfl/l;IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v5}, Lfl/l;->i(I)J

    move-result-wide v1

    invoke-virtual {p1, v6, v4, v1, v2}, Lfl/l;->R(Lfl/l;IJ)V

    move v5, p2

    goto :goto_2

    :cond_5
    invoke-virtual {p3, v3}, Lfl/l;->a(I)V

    return-void
.end method

.method public final K(Lfl/l;Lfl/m;)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lfl/m;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lfl/m;-><init>(Lfl/m;)V

    invoke-virtual/range {p1 .. p1}, Lfl/l;->h()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v9, v5

    move v8, v7

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v13, 0x40

    if-ge v8, v13, :cond_1

    ushr-long v13, v3, v8

    and-long/2addr v11, v13

    cmp-long v11, v11, v5

    if-eqz v11, :cond_0

    invoke-virtual {v2, v8}, Lfl/m;->i(I)J

    move-result-wide v11

    and-long/2addr v11, v3

    xor-long/2addr v9, v11

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v13}, Lfl/l;->r(I)V

    const/4 v3, 0x1

    :goto_1
    iget v4, v0, Lfl/a;->p:I

    if-ge v3, v4, :cond_5

    add-int/lit8 v8, v3, 0x1

    if-ne v4, v8, :cond_2

    iget v4, v0, Lfl/a;->t:I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v13

    :goto_2
    invoke-virtual {v1, v3}, Lfl/l;->i(I)J

    move-result-wide v14

    move v3, v7

    :goto_3
    if-ge v3, v4, :cond_4

    ushr-long v16, v14, v3

    and-long v16, v16, v11

    cmp-long v16, v16, v5

    if-eqz v16, :cond_3

    invoke-virtual {v2, v7, v1, v7, v8}, Lfl/l;->l(ILfl/l;II)J

    move-result-wide v16

    xor-long v9, v9, v16

    :cond_3
    invoke-virtual {v2, v8}, Lfl/l;->r(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v8

    goto :goto_1

    :cond_5
    invoke-static {v9, v10}, Lfl/j;->e(J)J

    move-result-wide v1

    return-wide v1
.end method

.method public L(Lfl/l;I)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v10, Lfl/l;

    iget v0, v8, Lfl/a;->o:I

    invoke-direct {v10, v0}, Lfl/l;-><init>(I)V

    new-instance v11, Lfl/l;

    iget v0, v8, Lfl/a;->o:I

    invoke-direct {v11, v0}, Lfl/l;-><init>(I)V

    new-instance v12, Lfl/l;

    invoke-direct {v12}, Lfl/l;-><init>()V

    new-instance v13, Lfl/l;

    invoke-direct {v13}, Lfl/l;-><init>()V

    add-int/lit8 v14, p2, -0x1

    invoke-static {v14}, Lfl/j;->b(I)I

    move-result v15

    move v7, v15

    :goto_0
    const/4 v6, 0x0

    const/4 v5, 0x1

    if-le v7, v5, :cond_4

    shl-int/lit8 v0, v7, 0x1

    div-int v5, p2, v0

    mul-int/2addr v0, v5

    sub-int v0, p2, v0

    sub-int/2addr v0, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-virtual {v12, v9}, Lfl/l;->b(Lfl/l;)V

    iget v0, v8, Lfl/a;->o:I

    mul-int/2addr v0, v7

    invoke-virtual {v13, v9, v0}, Lfl/l;->c(Lfl/l;I)V

    move v4, v6

    :goto_1
    if-ge v4, v5, :cond_0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v11

    move/from16 v18, v4

    move v4, v7

    move/from16 v19, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lfl/a;->Q(Lfl/l;Lfl/l;Lfl/l;II)V

    iget v0, v8, Lfl/a;->o:I

    mul-int/2addr v0, v7

    invoke-virtual {v12, v0}, Lfl/l;->r(I)V

    iget v0, v8, Lfl/a;->o:I

    mul-int/2addr v0, v7

    invoke-virtual {v13, v0}, Lfl/l;->r(I)V

    add-int/lit8 v4, v18, 0x1

    move/from16 v5, v19

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v11

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lfl/a;->Q(Lfl/l;Lfl/l;Lfl/l;II)V

    move v5, v15

    :goto_2
    if-le v5, v7, :cond_3

    :goto_3
    sub-int v0, p2, v5

    if-ge v6, v0, :cond_2

    and-int v0, v6, v7

    if-nez v0, :cond_1

    add-int v0, v6, v7

    iget v1, v8, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-virtual {v13, v9, v0}, Lfl/l;->c(Lfl/l;I)V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object/from16 v3, p1

    move-object v4, v12

    move/from16 v16, v5

    move-object v5, v11

    move/from16 v17, v6

    move/from16 v6, v16

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lfl/a;->w(Lfl/l;Lfl/l;Lfl/l;Lfl/l;Lfl/l;II)V

    iget v0, v8, Lfl/a;->o:I

    invoke-virtual {v13, v10, v0}, Lfl/l;->e(Lfl/l;I)V

    goto :goto_4

    :cond_1
    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    :goto_4
    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    move/from16 v7, v18

    goto :goto_3

    :cond_2
    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    ushr-int/lit8 v5, v16, 0x1

    goto :goto_2

    :cond_3
    move/from16 v18, v7

    ushr-int/lit8 v7, v18, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v12, v9}, Lfl/l;->b(Lfl/l;)V

    iget v0, v8, Lfl/a;->o:I

    invoke-virtual {v13, v9, v0}, Lfl/l;->c(Lfl/l;I)V

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v11

    move v4, v14

    move v14, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lfl/a;->Q(Lfl/l;Lfl/l;Lfl/l;II)V

    iget v0, v8, Lfl/a;->o:I

    invoke-virtual {v13, v9, v0}, Lfl/l;->c(Lfl/l;I)V

    :goto_5
    if-le v15, v14, :cond_6

    move v7, v6

    :goto_6
    sub-int v0, p2, v15

    if-ge v7, v0, :cond_5

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object/from16 v3, p1

    move-object v4, v12

    move-object v5, v11

    move v6, v15

    move/from16 v16, v7

    invoke-virtual/range {v0 .. v7}, Lfl/a;->w(Lfl/l;Lfl/l;Lfl/l;Lfl/l;Lfl/l;II)V

    iget v0, v8, Lfl/a;->o:I

    invoke-virtual {v13, v10, v0}, Lfl/l;->e(Lfl/l;I)V

    iget v0, v8, Lfl/a;->o:I

    shl-int/2addr v0, v14

    invoke-virtual {v13, v0}, Lfl/l;->r(I)V

    add-int/lit8 v7, v16, 0x2

    goto :goto_6

    :cond_5
    move/from16 v16, v7

    ushr-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    goto :goto_5

    :cond_6
    return-void
.end method

.method public M(Lfl/l;Lfl/l;)V
    .locals 10

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    invoke-direct {v0, v1}, Lfl/l;-><init>(I)V

    new-instance v1, Lfl/l;

    iget v2, p0, Lfl/a;->o:I

    invoke-direct {v1, v2}, Lfl/l;-><init>(I)V

    invoke-virtual {p2}, Lfl/l;->m()I

    move-result v2

    iget v3, p0, Lfl/a;->o:I

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, p2, v3}, Lfl/a;->A0(Lfl/l;ILfl/l;I)V

    invoke-virtual {p0, p1, v0, v4}, Lfl/a;->f0(Lfl/l;Lfl/l;I)V

    invoke-virtual {p0, v0, p2, p1}, Lfl/a;->k0(Lfl/l;Lfl/l;Lfl/l;)V

    invoke-virtual {p0, v1, v0}, Lfl/a;->O(Lfl/l;Lfl/l;)V

    iget v0, p0, Lfl/a;->o:I

    invoke-virtual {p2, v0}, Lfl/l;->r(I)V

    invoke-virtual {p0, p1, v1, p2}, Lfl/a;->k0(Lfl/l;Lfl/l;Lfl/l;)V

    iget v9, p0, Lfl/a;->o:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move v4, v9

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v9}, Lfl/l;->B(ILfl/l;ILfl/l;II)V

    invoke-virtual {p2, v2}, Lfl/l;->a(I)V

    return-void
.end method

.method public final N(Lfl/l;Lfl/l;I)V
    .locals 10

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget p3, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, p3}, Lfl/l;->e(Lfl/l;I)V

    return-void

    :cond_0
    iget v1, p0, Lfl/a;->b:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lfl/a;->M(Lfl/l;Lfl/l;)V

    return-void

    :cond_1
    new-instance v1, Lfl/l;

    shl-int/lit8 v2, p3, 0x1

    sub-int/2addr v2, v0

    iget v3, p0, Lfl/a;->o:I

    mul-int/2addr v3, v2

    invoke-direct {v1, v3}, Lfl/l;-><init>(I)V

    new-instance v3, Lfl/l;

    iget v4, p0, Lfl/a;->o:I

    mul-int/2addr v4, p3

    invoke-direct {v3, v4}, Lfl/l;-><init>(I)V

    new-instance v4, Lfl/l;

    add-int/lit8 v5, p3, 0x1

    iget v6, p0, Lfl/a;->o:I

    mul-int/2addr v6, v5

    invoke-direct {v4, v6}, Lfl/l;-><init>(I)V

    new-instance v6, Lfl/l;

    iget v7, p0, Lfl/a;->o:I

    invoke-direct {v6, v7}, Lfl/l;-><init>(I)V

    :cond_2
    iget v7, p0, Lfl/a;->o:I

    mul-int/2addr v7, v2

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Lfl/l;->A(II)V

    iget v7, p0, Lfl/a;->o:I

    mul-int/2addr v7, p3

    invoke-virtual {v3, v8, v7}, Lfl/l;->A(II)V

    :cond_3
    iget v7, p0, Lfl/a;->o:I

    iget-object v8, p0, Lfl/a;->a:Ljava/security/SecureRandom;

    iget v9, p0, Lfl/a;->e0:I

    invoke-virtual {v3, v7, v8, v9}, Lfl/l;->g(ILjava/security/SecureRandom;I)V

    iget v7, p0, Lfl/a;->o:I

    shl-int/2addr v7, v0

    sub-int/2addr v7, v0

    iget-wide v8, p0, Lfl/a;->d0:J

    invoke-virtual {v3, v7, v8, v9}, Lfl/l;->x(IJ)V

    iget v7, p0, Lfl/a;->o:I

    invoke-virtual {v3, v7, v7}, Lfl/l;->p(II)I

    move-result v7

    if-nez v7, :cond_3

    iget v7, p0, Lfl/a;->o:I

    mul-int/2addr v7, v5

    invoke-virtual {v4, p2, v7}, Lfl/l;->e(Lfl/l;I)V

    invoke-virtual {p0, v3, v1, v4, p3}, Lfl/a;->D0(Lfl/l;Lfl/l;Lfl/l;I)V

    add-int/lit8 v7, p3, -0x1

    iget v8, p0, Lfl/a;->o:I

    invoke-virtual {v3, v7, v0, v8}, Lfl/l;->t(III)I

    move-result v7

    invoke-virtual {p0, v4, p3, v3, v7}, Lfl/a;->Z(Lfl/l;ILfl/l;I)I

    move-result v7

    iget v8, p0, Lfl/a;->f0:I

    if-eqz v7, :cond_2

    if-eq v7, p3, :cond_2

    if-eqz v8, :cond_4

    invoke-virtual {v3, v4}, Lfl/l;->V(Lfl/l;)V

    :cond_4
    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, v7

    invoke-virtual {p0, v6, v4, v0}, Lfl/a;->f0(Lfl/l;Lfl/l;I)V

    iget v0, p0, Lfl/a;->o:I

    mul-int v1, v7, v0

    invoke-virtual {v4, v1, v0}, Lfl/l;->w(II)V

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v4, v6, v0}, Lfl/a;->S(Lfl/l;Lfl/l;I)V

    invoke-virtual {p0, p2, p3, v4, v7}, Lfl/a;->z(Lfl/l;ILfl/l;I)V

    invoke-virtual {p0, p1, v4, v7}, Lfl/a;->N(Lfl/l;Lfl/l;I)V

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v1, v7

    invoke-direct {v0, p1, v1}, Lfl/l;-><init>(Lfl/l;I)V

    new-instance p1, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v1, v7

    invoke-direct {p1, p2, v1}, Lfl/l;-><init>(Lfl/l;I)V

    sub-int/2addr p3, v7

    invoke-virtual {p0, v0, p1, p3}, Lfl/a;->N(Lfl/l;Lfl/l;I)V

    return-void
.end method

.method public O(Lfl/l;Lfl/l;)V
    .locals 6

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    invoke-direct {v0, v1}, Lfl/l;-><init>(I)V

    iget v1, p0, Lfl/a;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    ushr-int/2addr v1, v2

    iget v3, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, v3}, Lfl/l;->e(Lfl/l;I)V

    iget v3, p0, Lfl/a;->q0:I

    move v4, v2

    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    shl-int/2addr v4, v2

    invoke-virtual {p0, v0, p1}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-virtual {p0, v0, v0}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget v4, p0, Lfl/a;->o:I

    invoke-virtual {p1, v0, v4}, Lfl/l;->P(Lfl/l;I)V

    ushr-int v4, v1, v3

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0, p1}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    invoke-virtual {p0, p1, v0}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    iget v5, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, v5}, Lfl/l;->P(Lfl/l;I)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final P(Lfl/l;II)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    invoke-virtual {p1, v0, v1}, Lfl/l;->y(J)V

    const-wide/16 v3, 0x1

    shl-long v5, v3, v2

    invoke-virtual {p1, v5, v6}, Lfl/l;->K(J)V

    const/4 v5, 0x1

    shl-long/2addr v0, v5

    add-long/2addr v0, v3

    invoke-virtual {p1, p2}, Lfl/l;->r(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Q(Lfl/l;Lfl/l;Lfl/l;II)V
    .locals 2

    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lfl/a;->a(Lfl/l;Lfl/l;Lfl/l;)V

    invoke-virtual {p1, v0}, Lfl/l;->r(I)V

    invoke-virtual {p2, v0}, Lfl/l;->r(I)V

    add-int/2addr v1, p5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final R(Lfl/l;Lfl/o$a;)V
    .locals 5

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lfl/a;->a0:I

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Lfl/o$a;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lfl/l;->r(I)V

    iget-object v1, p2, Lfl/o$a;->a:Lfl/l;

    iget v2, p0, Lfl/a;->o:I

    mul-int v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v3, v2}, Lfl/l;->d(ILfl/l;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final S(Lfl/l;Lfl/l;I)V
    .locals 2

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v1, p3

    invoke-direct {v0, p1, v1}, Lfl/l;-><init>(Lfl/l;I)V

    :goto_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    invoke-virtual {p0, v0, v0, p2}, Lfl/a;->k0(Lfl/l;Lfl/l;Lfl/l;)V

    iget p1, p0, Lfl/a;->o:I

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lfl/l;->r(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final T(Lfl/l;Lfl/l;Lfl/l;II)V
    .locals 2

    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, p4

    :goto_0
    if-ge p4, p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lfl/a;->n0(Lfl/l;Lfl/l;Lfl/l;I)V

    iget v1, p0, Lfl/a;->o:I

    invoke-virtual {p1, v1}, Lfl/l;->r(I)V

    add-int/lit8 p4, p4, 0x1

    iget v1, p0, Lfl/a;->o:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public U(Lfl/l;Lfl/l;Lfl/l;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v1, p0, Lfl/a;->r0:Lfl/k;

    invoke-virtual {v1, p1, p2, p3}, Lfl/k;->I(Lfl/l;Lfl/l;Lfl/l;)V

    iget v1, p0, Lfl/a;->o:I

    invoke-virtual {p2, v1}, Lfl/l;->r(I)V

    iget v1, p0, Lfl/a;->o:I

    invoke-virtual {p3, v1}, Lfl/l;->r(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final V([B[BIII)I
    .locals 10

    aget-byte v0, p2, p4

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    const/4 v0, 0x2

    move v7, v0

    :goto_0
    if-ge v0, p5, :cond_0

    iget v1, p0, Lfl/a;->i:I

    add-int/lit8 v8, v1, -0x1

    sub-int v9, v1, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v9}, Lfl/a;->u0([B[BIIIIII)I

    move-result v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v7
.end method

.method public final W(Lfl/l;Lfl/m;I)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v5, v0

    :goto_0
    if-ge v1, p3, :cond_0

    const/16 v7, 0x40

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lfl/a;->v0(Lfl/l;Lfl/m;III)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lfl/a;->w0(Lfl/l;Lfl/m;II)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lfl/l;->r(I)V

    invoke-virtual {p1, v1}, Lfl/l;->r(I)V

    shl-int/lit8 v2, v1, 0x6

    add-int v5, v0, v2

    goto :goto_0

    :cond_0
    return v5
.end method

.method public final X(Lfl/l;IILfl/o$a;Lfl/l;)V
    .locals 8

    :goto_0
    if-ge p2, p3, :cond_0

    iget v0, p0, Lfl/a;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lfl/a;->C0(Lfl/l;I)V

    iget v5, p0, Lfl/a;->f:I

    add-int/lit8 v0, v5, -0x1

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v5, -0x1

    shl-int/lit8 v4, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lfl/a;->D(Lfl/l;IIILfl/o$a;Lfl/l;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Y(Lfl/l;Lfl/o$a;Lfl/l;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    new-instance v9, Lfl/l;

    invoke-direct {v9}, Lfl/l;-><init>()V

    new-instance v10, Lfl/l;

    iget v0, v7, Lfl/a;->f:I

    iget v1, v7, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-direct {v10, v0}, Lfl/l;-><init>(I)V

    new-instance v11, Lfl/l;

    invoke-direct {v11}, Lfl/l;-><init>()V

    new-instance v12, Lfl/l;

    iget v0, v7, Lfl/a;->o0:I

    iget v1, v7, Lfl/a;->f:I

    mul-int/2addr v0, v1

    iget v1, v7, Lfl/a;->m0:I

    add-int/2addr v0, v1

    iget v1, v7, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-direct {v12, v0}, Lfl/l;-><init>(I)V

    iget v0, v7, Lfl/a;->m0:I

    iget v1, v7, Lfl/a;->n0:I

    mul-int/2addr v0, v1

    iget v1, v7, Lfl/a;->f:I

    sub-int/2addr v0, v1

    new-instance v13, Lfl/l;

    iget v1, v7, Lfl/a;->o:I

    mul-int/2addr v1, v0

    invoke-direct {v13, v12, v1}, Lfl/l;-><init>(Lfl/l;I)V

    iget v1, v7, Lfl/a;->o:I

    move-object/from16 v14, p3

    invoke-virtual {v13, v14, v1}, Lfl/l;->e(Lfl/l;I)V

    move-object/from16 v15, p2

    invoke-virtual {v7, v13, v15}, Lfl/a;->R(Lfl/l;Lfl/o$a;)V

    const/16 v16, 0x1

    add-int/lit8 v3, v0, -0x1

    iget v0, v7, Lfl/a;->f:I

    add-int v2, v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lfl/a;->D(Lfl/l;IIILfl/o$a;Lfl/l;)V

    iget v0, v7, Lfl/a;->n0:I

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    :goto_0
    iget v0, v7, Lfl/a;->f:I

    const/4 v1, 0x0

    if-ge v6, v0, :cond_0

    iget v2, v7, Lfl/a;->o:I

    mul-int/2addr v0, v2

    invoke-virtual {v13, v12, v0}, Lfl/l;->c(Lfl/l;I)V

    iget v0, v7, Lfl/a;->m0:I

    iget v2, v7, Lfl/a;->o:I

    mul-int/2addr v0, v2

    invoke-virtual {v13, v1, v0}, Lfl/l;->A(II)V

    iget v0, v7, Lfl/a;->m0:I

    iget v2, v7, Lfl/a;->o:I

    mul-int/2addr v0, v2

    iget v3, v7, Lfl/a;->f:I

    mul-int/2addr v3, v2

    invoke-virtual {v13, v0, v12, v1, v3}, Lfl/l;->d(ILfl/l;II)V

    invoke-virtual {v12, v13}, Lfl/l;->b(Lfl/l;)V

    iget v0, v7, Lfl/a;->m0:I

    add-int/lit8 v1, v0, -0x1

    iget v2, v7, Lfl/a;->f:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v5, p2

    move/from16 v17, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lfl/a;->D(Lfl/l;IIILfl/o$a;Lfl/l;)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v12}, Lfl/l;->o()V

    iget v0, v7, Lfl/a;->g:I

    shl-int v0, v16, v0

    iget v2, v7, Lfl/a;->n0:I

    sub-int/2addr v0, v2

    iget v2, v7, Lfl/a;->f:I

    mul-int/2addr v0, v2

    iget v3, v7, Lfl/a;->o:I

    mul-int/2addr v0, v3

    mul-int/2addr v2, v3

    invoke-virtual {v8, v1, v12, v0, v2}, Lfl/l;->d(ILfl/l;II)V

    move v0, v1

    :goto_1
    iget v2, v7, Lfl/a;->b:I

    iget v3, v7, Lfl/a;->g:I

    sub-int v4, v2, v3

    iget v5, v7, Lfl/a;->l0:I

    sub-int/2addr v4, v5

    div-int/2addr v4, v5

    if-ge v0, v4, :cond_6

    invoke-virtual {v7, v10, v8}, Lfl/a;->g0(Lfl/l;Lfl/l;)V

    move/from16 v2, v16

    :goto_2
    iget v3, v7, Lfl/a;->l0:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v7, v10, v10}, Lfl/a;->g0(Lfl/l;Lfl/l;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget v2, v7, Lfl/a;->n0:I

    iget v3, v7, Lfl/a;->o:I

    mul-int/2addr v2, v3

    invoke-virtual {v11, v10, v2}, Lfl/l;->c(Lfl/l;I)V

    invoke-virtual {v13, v12}, Lfl/l;->b(Lfl/l;)V

    invoke-virtual {v9, v8}, Lfl/l;->b(Lfl/l;)V

    move v2, v1

    :goto_3
    iget v3, v7, Lfl/a;->f:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v7, v9, v13, v11}, Lfl/a;->k0(Lfl/l;Lfl/l;Lfl/l;)V

    iget v3, v7, Lfl/a;->o:I

    invoke-virtual {v9, v3}, Lfl/l;->r(I)V

    iget v3, v7, Lfl/a;->o:I

    invoke-virtual {v13, v3}, Lfl/l;->r(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iget v2, v7, Lfl/a;->n0:I

    add-int/lit8 v2, v2, 0x1

    :goto_4
    iget v3, v7, Lfl/a;->f:I

    if-ge v2, v3, :cond_4

    iget v3, v7, Lfl/a;->o:I

    invoke-virtual {v11, v3}, Lfl/l;->r(I)V

    invoke-virtual {v9, v8}, Lfl/l;->b(Lfl/l;)V

    move v3, v1

    :goto_5
    iget v4, v7, Lfl/a;->f:I

    if-ge v3, v4, :cond_3

    invoke-virtual {v7, v9, v13, v11}, Lfl/a;->m0(Lfl/l;Lfl/l;Lfl/l;)V

    iget v4, v7, Lfl/a;->o:I

    invoke-virtual {v9, v4}, Lfl/l;->r(I)V

    iget v4, v7, Lfl/a;->o:I

    invoke-virtual {v13, v4}, Lfl/l;->r(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_6
    iget v3, v7, Lfl/a;->n0:I

    if-ge v2, v3, :cond_5

    iget v3, v7, Lfl/a;->m0:I

    mul-int/2addr v3, v2

    iget v4, v7, Lfl/a;->o:I

    mul-int/2addr v3, v4

    mul-int v5, v2, v4

    invoke-virtual {v8, v3, v10, v5, v4}, Lfl/l;->N(ILfl/l;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v2, v3

    rem-int v3, v2, v5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lfl/a;->X(Lfl/l;IILfl/o$a;Lfl/l;)V

    return-void
.end method

.method public final Z(Lfl/l;ILfl/l;I)I
    .locals 5

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    invoke-direct {v0, v1}, Lfl/l;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lfl/a;->f0:I

    move v3, p2

    move-object p2, p1

    move-object p1, p3

    move p3, v3

    :goto_0
    if-eqz p4, :cond_1

    shl-int/lit8 v1, p4, 0x1

    if-le v1, p3, :cond_0

    invoke-virtual {p0, p2, p3, p1, p4}, Lfl/a;->A(Lfl/l;ILfl/l;I)I

    move-result p3

    goto :goto_1

    :cond_0
    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v1, p4

    invoke-virtual {p0, v0, p1, v1}, Lfl/a;->f0(Lfl/l;Lfl/l;I)V

    iget v1, p0, Lfl/a;->o:I

    mul-int v2, p4, v1

    invoke-virtual {p1, v2, v1}, Lfl/l;->w(II)V

    add-int/lit8 v1, p4, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lfl/a;->S(Lfl/l;Lfl/l;I)V

    invoke-virtual {p0, p2, p3, p1, p4}, Lfl/a;->C(Lfl/l;ILfl/l;I)I

    move-result p3

    :goto_1
    iget v1, p0, Lfl/a;->f0:I

    rsub-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfl/a;->f0:I

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    move v4, p4

    move p4, p3

    move p3, v4

    goto :goto_0

    :cond_1
    return p3
.end method

.method public final a(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    iget v1, v0, Lfl/a;->o:I

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v4, 0x0

    move-wide v6, v4

    move-wide v8, v6

    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {v3, v1}, Lfl/l;->i(I)J

    move-result-wide v10

    invoke-virtual {p1, v1}, Lfl/l;->i(I)J

    move-result-wide v12

    xor-long/2addr v10, v12

    invoke-static {v10, v11}, Lfl/j;->d(J)J

    move-result-wide v10

    or-long/2addr v6, v10

    add-long/2addr v8, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v6, v0, Lfl/a;->o:I

    if-ge v1, v6, :cond_1

    int-to-long v6, v1

    xor-long/2addr v6, v8

    invoke-static {v6, v7}, Lfl/j;->c(J)J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual {v3, v1}, Lfl/l;->i(I)J

    move-result-wide v10

    invoke-virtual {p1, v1}, Lfl/l;->i(I)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lfl/j;->a(JJ)J

    move-result-wide v10

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    neg-long v4, v4

    move-object/from16 v1, p3

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lfl/l;->D(Lfl/l;Lfl/l;JI)V

    return-void
.end method

.method public a0(Lfl/l;Lfl/l;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v10, Lfl/l;

    iget v3, v0, Lfl/a;->o:I

    invoke-direct {v10, v3}, Lfl/l;-><init>(I)V

    new-instance v11, Lfl/l;

    iget v3, v0, Lfl/a;->g:I

    const/4 v12, 0x1

    add-int/2addr v3, v12

    iget v4, v0, Lfl/a;->c:I

    add-int/2addr v4, v12

    mul-int/2addr v3, v4

    iget v4, v0, Lfl/a;->o:I

    mul-int/2addr v3, v4

    invoke-direct {v11, v3}, Lfl/l;-><init>(I)V

    new-instance v13, Lfl/l;

    iget v3, v0, Lfl/a;->z:I

    invoke-direct {v13, v2, v3}, Lfl/l;-><init>(Lfl/l;I)V

    const/4 v14, 0x0

    move v3, v14

    :goto_0
    iget v4, v0, Lfl/a;->g:I

    if-gt v3, v4, :cond_1

    move v4, v14

    :goto_1
    iget v5, v0, Lfl/a;->c:I

    if-gt v4, v5, :cond_0

    iget v5, v0, Lfl/a;->g:I

    add-int/2addr v5, v12

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    iget v6, v0, Lfl/a;->o:I

    mul-int/2addr v5, v6

    invoke-virtual {v11, v5, v13, v14, v6}, Lfl/l;->d(ILfl/l;II)V

    iget v5, v0, Lfl/a;->o:I

    invoke-virtual {v13, v5}, Lfl/l;->r(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget v4, v0, Lfl/a;->o:I

    mul-int/2addr v4, v3

    invoke-virtual {v13, v4}, Lfl/l;->r(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lfl/l;

    iget v4, v0, Lfl/a;->g0:I

    iget v5, v0, Lfl/a;->b:I

    sub-int/2addr v5, v12

    mul-int/2addr v4, v5

    iget v5, v0, Lfl/a;->o:I

    mul-int/2addr v4, v5

    invoke-direct {v3, v4}, Lfl/l;-><init>(I)V

    move v4, v12

    :goto_2
    iget v5, v0, Lfl/a;->b:I

    if-ge v4, v5, :cond_3

    ushr-int/lit8 v5, v4, 0x6

    and-int/lit8 v6, v4, 0x3f

    const-wide/16 v7, 0x1

    shl-long v6, v7, v6

    invoke-virtual {v3, v5, v6, v7}, Lfl/l;->u(IJ)V

    move v5, v14

    :goto_3
    iget v6, v0, Lfl/a;->g:I

    if-ge v5, v6, :cond_2

    iget v6, v0, Lfl/a;->o:I

    invoke-virtual {v0, v3, v6, v3, v14}, Lfl/a;->A0(Lfl/l;ILfl/l;I)V

    iget v6, v0, Lfl/a;->o:I

    invoke-virtual {v3, v6}, Lfl/l;->r(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    iget v5, v0, Lfl/a;->o:I

    invoke-virtual {v3, v5}, Lfl/l;->r(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lfl/l;->o()V

    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v1, v2, v4}, Lfl/l;->e(Lfl/l;I)V

    iget v4, v0, Lfl/a;->z:I

    invoke-virtual {v2, v4}, Lfl/l;->r(I)V

    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v1, v4}, Lfl/l;->r(I)V

    new-instance v4, Lfl/l;

    iget v5, v0, Lfl/a;->g:I

    iget v6, v0, Lfl/a;->b:I

    mul-int/2addr v5, v6

    iget v6, v0, Lfl/a;->o:I

    mul-int/2addr v5, v6

    invoke-direct {v4, v5}, Lfl/l;-><init>(I)V

    invoke-virtual {v0, v4, v2, v3}, Lfl/a;->z0(Lfl/l;Lfl/l;Lfl/l;)V

    new-instance v15, Lfl/l;

    invoke-direct {v15, v4}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v9, Lfl/l;

    invoke-direct {v9, v4}, Lfl/l;-><init>(Lfl/l;)V

    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v1, v9, v4}, Lfl/l;->e(Lfl/l;I)V

    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v9, v4}, Lfl/l;->r(I)V

    iget v4, v0, Lfl/a;->o:I

    iget v5, v0, Lfl/a;->g:I

    sub-int/2addr v5, v12

    invoke-virtual {v1, v9, v4, v5}, Lfl/l;->M(Lfl/l;II)V

    invoke-virtual {v13, v11}, Lfl/l;->b(Lfl/l;)V

    iget v4, v0, Lfl/a;->o:I

    iget v5, v0, Lfl/a;->g:I

    add-int/2addr v5, v12

    invoke-virtual {v1, v13, v4, v5}, Lfl/l;->L(Lfl/l;II)V

    new-instance v8, Lfl/l;

    iget v4, v0, Lfl/a;->o:I

    invoke-direct {v8, v3, v4}, Lfl/l;-><init>(Lfl/l;I)V

    move v4, v12

    :goto_4
    iget v5, v0, Lfl/a;->b:I

    if-ge v4, v5, :cond_4

    iget v5, v0, Lfl/a;->g:I

    invoke-virtual {v0, v1, v8, v15, v5}, Lfl/a;->E(Lfl/l;Lfl/l;Lfl/l;I)V

    iget v5, v0, Lfl/a;->g0:I

    iget v6, v0, Lfl/a;->o:I

    mul-int/2addr v5, v6

    invoke-virtual {v8, v5}, Lfl/l;->r(I)V

    iget v5, v0, Lfl/a;->o:I

    iget v6, v0, Lfl/a;->g:I

    invoke-virtual {v1, v9, v5, v6}, Lfl/l;->L(Lfl/l;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    iget v5, v0, Lfl/a;->i:I

    if-ge v4, v5, :cond_5

    iget v5, v0, Lfl/a;->o:I

    invoke-virtual {v1, v13, v5}, Lfl/l;->e(Lfl/l;I)V

    iget v5, v0, Lfl/a;->o:I

    invoke-virtual {v13, v5}, Lfl/l;->r(I)V

    iget v5, v0, Lfl/a;->o:I

    iget v6, v0, Lfl/a;->g:I

    invoke-virtual {v1, v13, v5, v6}, Lfl/l;->L(Lfl/l;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    new-instance v7, Lfl/l;

    iget v4, v0, Lfl/a;->o:I

    invoke-direct {v7, v3, v4}, Lfl/l;-><init>(Lfl/l;I)V

    new-instance v6, Lfl/l;

    iget v3, v0, Lfl/a;->x:I

    invoke-direct {v6, v3}, Lfl/l;-><init>(I)V

    move v5, v12

    :goto_6
    iget v3, v0, Lfl/a;->b:I

    if-ge v5, v3, :cond_9

    iget v3, v0, Lfl/a;->g:I

    iget v4, v0, Lfl/a;->o:I

    mul-int/2addr v3, v4

    invoke-virtual {v15, v3}, Lfl/l;->r(I)V

    invoke-virtual {v8, v7}, Lfl/l;->b(Lfl/l;)V

    invoke-virtual {v9, v15}, Lfl/l;->b(Lfl/l;)V

    iget-object v3, v0, Lfl/a;->r0:Lfl/k;

    iget-object v4, v0, Lfl/a;->t0:Lfl/l;

    new-instance v12, Lfl/l;

    iget v14, v0, Lfl/a;->o:I

    neg-int v14, v14

    invoke-direct {v12, v8, v14}, Lfl/l;-><init>(Lfl/l;I)V

    invoke-virtual {v3, v4, v11, v12}, Lfl/k;->H(Lfl/l;Lfl/l;Lfl/l;)V

    const/4 v12, 0x1

    :goto_7
    iget v3, v0, Lfl/a;->g:I

    if-gt v12, v3, :cond_6

    iget v14, v0, Lfl/a;->o:I

    mul-int v17, v12, v14

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object v3, v10

    move/from16 v19, v5

    move-object v5, v9

    move-object/from16 v20, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move-object v7, v11

    move-object/from16 v21, v8

    move/from16 v8, v17

    move-object v2, v9

    move v9, v14

    invoke-virtual/range {v3 .. v9}, Lfl/l;->B(ILfl/l;ILfl/l;II)V

    iget-object v3, v0, Lfl/a;->t0:Lfl/l;

    move-object/from16 v4, v21

    invoke-virtual {v0, v3, v10, v4}, Lfl/a;->o0(Lfl/l;Lfl/l;Lfl/l;)V

    iget v3, v0, Lfl/a;->o:I

    invoke-virtual {v2, v3}, Lfl/l;->r(I)V

    iget v3, v0, Lfl/a;->o:I

    invoke-virtual {v4, v3}, Lfl/l;->r(I)V

    add-int/lit8 v12, v12, 0x1

    move-object v9, v2

    move-object v8, v4

    move-object/from16 v7, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v2, p2

    goto :goto_7

    :cond_6
    move/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move-object v4, v8

    move-object v2, v9

    iget v3, v0, Lfl/a;->o:I

    invoke-virtual {v4, v3}, Lfl/l;->r(I)V

    iget-object v3, v0, Lfl/a;->t0:Lfl/l;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    iget v3, v0, Lfl/a;->o:I

    invoke-virtual {v1, v3}, Lfl/l;->r(I)V

    add-int/lit8 v5, v19, 0x1

    move v3, v5

    :goto_8
    iget v6, v0, Lfl/a;->b:I

    if-ge v3, v6, :cond_7

    invoke-virtual {v4}, Lfl/l;->m()I

    move-result v6

    invoke-virtual {v15}, Lfl/l;->m()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lfl/l;->m()I

    move-result v8

    invoke-virtual {v2}, Lfl/l;->m()I

    move-result v9

    move-object/from16 v12, v20

    invoke-virtual {v0, v12, v4, v15}, Lfl/a;->l0(Lfl/l;Lfl/l;Lfl/l;)V

    iget v14, v0, Lfl/a;->g:I

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v0, v12, v4, v15, v14}, Lfl/a;->U(Lfl/l;Lfl/l;Lfl/l;I)V

    iget v14, v0, Lfl/a;->g:I

    move/from16 v17, v5

    move-object/from16 v5, v18

    invoke-virtual {v0, v12, v5, v2, v14}, Lfl/a;->U(Lfl/l;Lfl/l;Lfl/l;I)V

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v14, v12}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    iget v14, v0, Lfl/a;->g0:I

    move-object/from16 v18, v10

    iget v10, v0, Lfl/a;->o:I

    mul-int/2addr v14, v10

    add-int/2addr v6, v14

    invoke-virtual {v4, v6}, Lfl/l;->a(I)V

    invoke-virtual {v15, v7}, Lfl/l;->a(I)V

    invoke-virtual {v5, v8}, Lfl/l;->a(I)V

    iget v6, v0, Lfl/a;->g:I

    iget v7, v0, Lfl/a;->o:I

    mul-int/2addr v6, v7

    add-int/2addr v9, v6

    invoke-virtual {v2, v9}, Lfl/l;->a(I)V

    iget v6, v0, Lfl/a;->o:I

    invoke-virtual {v1, v6}, Lfl/l;->r(I)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v18

    move-object/from16 v18, v5

    move/from16 v5, v17

    goto :goto_8

    :cond_7
    move/from16 v17, v5

    move-object/from16 v5, v18

    move-object/from16 v12, v20

    move-object/from16 v18, v10

    invoke-virtual {v13, v11}, Lfl/l;->b(Lfl/l;)V

    iget v6, v0, Lfl/a;->o:I

    neg-int v6, v6

    invoke-virtual {v5, v6}, Lfl/l;->r(I)V

    :goto_9
    iget v6, v0, Lfl/a;->i:I

    if-ge v3, v6, :cond_8

    iget v6, v0, Lfl/a;->g:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iget v8, v0, Lfl/a;->o:I

    mul-int/2addr v6, v8

    invoke-virtual {v13, v6}, Lfl/l;->r(I)V

    iget v6, v0, Lfl/a;->g:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v5, v13, v6}, Lfl/a;->E(Lfl/l;Lfl/l;Lfl/l;I)V

    iget v6, v0, Lfl/a;->o:I

    invoke-virtual {v1, v6}, Lfl/l;->r(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    iget v3, v0, Lfl/a;->o:I

    iget v6, v0, Lfl/a;->g0:I

    mul-int/2addr v6, v3

    add-int/2addr v3, v6

    invoke-virtual {v5, v3}, Lfl/l;->r(I)V

    move-object v9, v2

    move-object v8, v4

    move-object v7, v5

    move-object v6, v12

    move/from16 v5, v17

    move-object/from16 v10, v18

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_6

    :cond_9
    iget v2, v0, Lfl/a;->o:I

    iget v3, v0, Lfl/a;->z:I

    sub-int/2addr v2, v3

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Lfl/l;->r(I)V

    iget v2, v0, Lfl/a;->o:I

    iget v4, v0, Lfl/a;->q:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Lfl/l;->e(Lfl/l;I)V

    invoke-virtual/range {p1 .. p1}, Lfl/l;->o()V

    invoke-virtual/range {p2 .. p2}, Lfl/l;->o()V

    return-void
.end method

.method public final b(Lfl/l;Lfl/l;Lfl/l;IIIIZ)V
    .locals 13

    const/4 v0, 0x0

    move/from16 v1, p4

    :goto_0
    if-ge v0, v1, :cond_2

    new-instance v9, Lfl/l;

    move-object/from16 v10, p3

    invoke-direct {v9, v10}, Lfl/l;-><init>(Lfl/l;)V

    const/4 v2, 0x1

    move/from16 v12, p5

    move v11, v2

    :goto_1
    if-gt v11, v12, :cond_0

    const/16 v6, 0x40

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move/from16 v7, p7

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lfl/a;->e(Lfl/l;Lfl/l;Lfl/l;III)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    if-eqz p8, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lfl/a;->e(Lfl/l;Lfl/l;Lfl/l;III)V

    :cond_1
    move-object v2, p2

    move/from16 v3, p7

    invoke-virtual {p2, v3}, Lfl/l;->r(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b0(Lfl/l;II[BII[B)V
    .locals 1

    iget-object v0, p0, Lfl/a;->j0:LIi/N;

    invoke-virtual {v0, p4, p5, p6}, LIi/v;->update([BII)V

    iget-object p4, p0, Lfl/a;->j0:LIi/N;

    const/4 p5, 0x0

    invoke-virtual {p4, p7, p5}, LIi/N;->c([BI)I

    invoke-virtual {p1, p2, p7, p5, p3}, Lfl/l;->f(I[BII)V

    return-void
.end method

.method public final c(Lfl/l;Lfl/l;Lfl/l;Lfl/l;II)V
    .locals 8

    :goto_0
    if-ge p5, p6, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lfl/a;->o:I

    invoke-virtual {p1, v0, v1}, Lfl/l;->A(II)V

    invoke-virtual {p2, p3}, Lfl/l;->b(Lfl/l;)V

    const/4 v6, 0x0

    iget v7, p0, Lfl/a;->s:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lfl/a;->i(Lfl/l;Lfl/l;Lfl/l;II)V

    iget v0, p0, Lfl/a;->p:I

    invoke-virtual {p4, v0}, Lfl/l;->r(I)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c0([I)V
    .locals 6

    iget v0, p0, Lfl/a;->o:I

    const/4 v1, 0x1

    aput v0, p1, v1

    const/4 v0, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lfl/a;->g:I

    if-ge v3, v4, :cond_2

    iget-boolean v4, p0, Lfl/a;->A:Z

    if-eqz v4, :cond_1

    shl-int v4, v1, v3

    add-int/2addr v4, v1

    iget v5, p0, Lfl/a;->n:I

    if-le v4, v5, :cond_1

    if-eqz v3, :cond_0

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lfl/a;->o:I

    shl-int/2addr v5, v1

    aput v5, p1, v0

    move v0, v4

    :cond_0
    invoke-virtual {p0, p1, v0, v1, v3}, Lfl/a;->t0([IIII)I

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lfl/a;->o:I

    aput v5, p1, v0

    invoke-virtual {p0, p1, v4, v2, v3}, Lfl/a;->t0([IIII)I

    move-result v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lfl/a;->h:I

    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lfl/a;->A:Z

    if-eqz v5, :cond_3

    shl-int v3, v1, v3

    add-int/2addr v3, v1

    iget v5, p0, Lfl/a;->n:I

    if-le v3, v5, :cond_3

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lfl/a;->o:I

    shl-int/2addr v3, v1

    aput v3, p1, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, p1, v2, v1, v4}, Lfl/a;->t0([IIII)I

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v0, 0x1

    iget v5, p0, Lfl/a;->o:I

    aput v5, p1, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, p1, v3, v2, v4}, Lfl/a;->t0([IIII)I

    :cond_4
    :goto_2
    return-void
.end method

.method public final d(Lfl/l;Lfl/l;Lfl/l;II)V
    .locals 6

    :goto_0
    if-ge p4, p5, :cond_0

    const/4 v4, 0x0

    iget v5, p0, Lfl/a;->s:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lfl/a;->i(Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d0(Lfl/l;Lfl/l;Lfl/l;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    new-instance v10, Lfl/l;

    iget v2, v0, Lfl/a;->p:I

    invoke-direct {v10, v2}, Lfl/l;-><init>(I)V

    new-instance v11, Lfl/l;

    invoke-direct {v11}, Lfl/l;-><init>()V

    new-instance v12, Lfl/l;

    invoke-direct {v12}, Lfl/l;-><init>()V

    new-instance v2, Lfl/l;

    iget v3, v0, Lfl/a;->i:I

    iget v4, v0, Lfl/a;->o:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v3}, Lfl/l;-><init>(I)V

    iget v3, v0, Lfl/a;->o:I

    invoke-virtual {v8, v9, v3}, Lfl/l;->e(Lfl/l;I)V

    new-instance v13, Lfl/l;

    invoke-direct {v13, v1}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v14, Lfl/l;

    invoke-direct {v14, v2}, Lfl/l;-><init>(Lfl/l;)V

    const/4 v15, 0x0

    move v3, v15

    :goto_0
    iget v4, v0, Lfl/a;->i:I

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v14, v9, v13}, Lfl/a;->G(Lfl/l;Lfl/l;Lfl/l;)V

    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v14, v4}, Lfl/l;->r(I)V

    iget v4, v0, Lfl/a;->p:I

    invoke-virtual {v13, v4}, Lfl/l;->r(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v13, v1}, Lfl/l;->b(Lfl/l;)V

    invoke-virtual {v14, v2}, Lfl/l;->b(Lfl/l;)V

    move v1, v15

    :goto_1
    iget v2, v0, Lfl/a;->i:I

    if-ge v1, v2, :cond_2

    iget v2, v0, Lfl/a;->o:I

    invoke-virtual {v8, v2}, Lfl/l;->r(I)V

    iget v2, v0, Lfl/a;->o:I

    invoke-virtual {v14, v9, v2}, Lfl/l;->P(Lfl/l;I)V

    iget v2, v0, Lfl/a;->o:I

    invoke-virtual {v8, v14, v2}, Lfl/l;->e(Lfl/l;I)V

    invoke-virtual {v11, v14}, Lfl/l;->b(Lfl/l;)V

    invoke-virtual {v12, v13}, Lfl/l;->b(Lfl/l;)V

    add-int/lit8 v16, v1, 0x1

    move/from16 v7, v16

    :goto_2
    iget v1, v0, Lfl/a;->i:I

    if-ge v7, v1, :cond_1

    iget v1, v0, Lfl/a;->o:I

    invoke-virtual {v8, v1}, Lfl/l;->r(I)V

    iget v1, v0, Lfl/a;->o:I

    invoke-virtual {v11, v1}, Lfl/l;->r(I)V

    iget v1, v0, Lfl/a;->p:I

    invoke-virtual {v12, v1}, Lfl/l;->r(I)V

    iget v1, v0, Lfl/a;->p:I

    invoke-virtual {v10, v13, v12, v1}, Lfl/l;->C(Lfl/l;Lfl/l;I)V

    invoke-virtual {v0, v8, v9, v10}, Lfl/a;->G(Lfl/l;Lfl/l;Lfl/l;)V

    const/4 v6, 0x0

    iget v5, v0, Lfl/a;->o:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v3, v14

    move/from16 v17, v5

    move-object v5, v11

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lfl/l;->T(ILfl/l;ILfl/l;II)V

    add-int/lit8 v7, v18, 0x1

    goto :goto_2

    :cond_1
    iget v1, v0, Lfl/a;->o:I

    invoke-virtual {v14, v1}, Lfl/l;->r(I)V

    iget v1, v0, Lfl/a;->p:I

    invoke-virtual {v13, v1}, Lfl/l;->r(I)V

    move/from16 v1, v16

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lfl/l;->o()V

    return v15
.end method

.method public final e(Lfl/l;Lfl/l;Lfl/l;III)V
    .locals 4

    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p5

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lfl/l;->v(J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    invoke-virtual {p2, v0, p3, v0, p5}, Lfl/l;->l(ILfl/l;II)J

    move-result-wide v2

    invoke-static {v2, v3}, Lfl/j;->e(J)J

    move-result-wide v2

    shl-long/2addr v2, v1

    invoke-virtual {p1, v2, v3}, Lfl/l;->K(J)V

    invoke-virtual {p3, p6}, Lfl/l;->r(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lfl/l;->s()V

    return-void
.end method

.method public e0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    new-instance v12, Lfl/l;

    invoke-direct {v12, v0}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v13, Lfl/l;

    invoke-direct {v13, v0}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v14, Lfl/l;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lfl/l;-><init>(Lfl/l;)V

    sget-object v0, Lfl/a$a;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v15, 0x0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, v10, Lfl/a;->s:I

    iget v1, v10, Lfl/a;->i:I

    sub-int/2addr v1, v9

    iget v2, v10, Lfl/a;->p:I

    iget v3, v10, Lfl/a;->t:I

    iget v4, v10, Lfl/a;->u:I

    :goto_0
    move v8, v0

    move/from16 v16, v1

    move v7, v2

    move v6, v3

    move v5, v4

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v10, Lfl/a;->c0:I

    invoke-virtual {v11, v15, v0}, Lfl/l;->A(II)V

    iget v0, v10, Lfl/a;->l:I

    iget v1, v10, Lfl/a;->b:I

    sub-int/2addr v1, v9

    iget v2, v10, Lfl/a;->o:I

    iget v3, v10, Lfl/a;->m:I

    iget v4, v10, Lfl/a;->v:I

    goto :goto_0

    :goto_1
    new-instance v4, Lfl/l;

    invoke-direct {v4, v11}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v3, Lfl/l;

    invoke-direct {v3, v11}, Lfl/l;-><init>(Lfl/l;)V

    move v2, v15

    move/from16 v17, v2

    :goto_2
    if-ge v2, v8, :cond_2

    const/16 v18, 0x40

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 p2, v2

    move-object v2, v3

    move-object/from16 p3, v3

    move-object v3, v12

    move-object/from16 p4, v4

    move-object v4, v13

    move v15, v5

    move/from16 v5, v17

    move v10, v6

    move/from16 v6, p2

    move/from16 v19, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v16

    move v11, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lfl/a;->h0(Lfl/l;Lfl/l;Lfl/l;Lfl/l;IIIII)I

    move-result v17

    invoke-virtual {v13}, Lfl/l;->s()V

    move/from16 v9, p2

    add-int/lit8 v2, v9, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v6, v10

    move v9, v11

    move v5, v15

    move/from16 v8, v18

    move/from16 v7, v19

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    goto :goto_2

    :cond_2
    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move v15, v5

    move v10, v6

    move/from16 v19, v7

    move v11, v9

    move v9, v2

    const-wide/16 v7, 0x1

    if-le v10, v11, :cond_3

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object v3, v12

    move-object v4, v13

    move/from16 v5, v17

    move v6, v9

    move-wide v12, v7

    move v7, v10

    move/from16 v8, v16

    move v11, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Lfl/a;->h0(Lfl/l;Lfl/l;Lfl/l;Lfl/l;IIIII)I

    shl-long v0, v12, v10

    move-object/from16 v2, p4

    invoke-virtual {v2, v11, v0, v1}, Lfl/l;->J(IJ)V

    move/from16 v0, v19

    :goto_3
    invoke-virtual {v2, v0}, Lfl/l;->r(I)V

    goto :goto_4

    :cond_3
    move-object/from16 v2, p4

    move-wide v12, v7

    move v1, v9

    move/from16 v0, v19

    if-ne v10, v11, :cond_4

    invoke-virtual {v2, v1, v12, v13}, Lfl/l;->u(IJ)V

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v14, v15}, Lfl/l;->r(I)V

    move/from16 v1, v16

    :goto_5
    if-lez v1, :cond_6

    ushr-int/lit8 v3, v1, 0x6

    rsub-int/lit8 v3, v3, -0x1

    invoke-virtual {v14, v3}, Lfl/l;->r(I)V

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lfl/l;->r(I)V

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lfl/l;->b(Lfl/l;)V

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_5

    ushr-int/lit8 v6, v5, 0x6

    invoke-virtual {v14, v6}, Lfl/l;->i(I)J

    move-result-wide v6

    and-int/lit8 v8, v5, 0x3f

    ushr-long/2addr v6, v8

    and-long/2addr v6, v12

    neg-long v6, v6

    invoke-virtual {v4, v2, v0, v6, v7}, Lfl/l;->R(Lfl/l;IJ)V

    invoke-virtual {v4, v0}, Lfl/l;->r(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, -0x1

    move-object/from16 p3, v4

    goto :goto_5

    :cond_6
    return-void
.end method

.method public final f(Lfl/l;Lfl/m;IIJII)J
    .locals 4

    :goto_0
    if-ge p3, p4, :cond_1

    const-wide/16 v0, 0x1

    and-long/2addr v0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, p8}, Lfl/l;->O(ILfl/m;II)V

    :cond_0
    invoke-virtual {p2, p7}, Lfl/m;->f0(I)V

    const/4 v0, 0x1

    ushr-long/2addr p5, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-wide p5
.end method

.method public final f0(Lfl/l;Lfl/l;I)V
    .locals 5

    invoke-virtual {p2}, Lfl/l;->m()I

    move-result v0

    invoke-virtual {p2, p3}, Lfl/l;->r(I)V

    new-instance p3, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    invoke-direct {p3, v1}, Lfl/l;-><init>(I)V

    iget v1, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, v1}, Lfl/l;->e(Lfl/l;I)V

    iget v1, p0, Lfl/a;->p0:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v3, p0, Lfl/a;->b:I

    sub-int/2addr v3, v2

    add-int/lit8 v4, v1, 0x1

    ushr-int/2addr v3, v4

    invoke-virtual {p0, p3, p1}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, p3, p3}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lfl/a;->k0(Lfl/l;Lfl/l;Lfl/l;)V

    iget v3, p0, Lfl/a;->b:I

    sub-int/2addr v3, v2

    ushr-int/2addr v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3, p1}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    invoke-virtual {p0, p1, p2, p3}, Lfl/a;->k0(Lfl/l;Lfl/l;Lfl/l;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p1}, Lfl/a;->B0(Lfl/l;Lfl/l;)V

    invoke-virtual {p2, v0}, Lfl/l;->a(I)V

    return-void
.end method

.method public final g(Lfl/l;Lfl/m;IIJII)V
    .locals 13

    move/from16 v3, p3

    move-wide/from16 v9, p5

    :goto_0
    add-int/lit8 v0, p4, -0x3

    if-ge v3, v0, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lfl/a;->f(Lfl/l;Lfl/m;IIJII)J

    move-result-wide v9

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move-wide v5, v9

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lfl/a;->f(Lfl/l;Lfl/m;IIJII)J

    return-void
.end method

.method public final g0(Lfl/l;Lfl/l;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lfl/a;->f:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lfl/a;->o:I

    mul-int v2, v0, v1

    mul-int/2addr v1, v0

    invoke-virtual {p0, p1, v2, p2, v1}, Lfl/a;->A0(Lfl/l;ILfl/l;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Lfl/l;Lfl/l;JII)V
    .locals 3

    :goto_0
    if-ge p5, p6, :cond_0

    iget v0, p0, Lfl/a;->o:I

    const-wide/16 v1, 0x1

    and-long/2addr v1, p3

    neg-long v1, v1

    invoke-virtual {p2, p1, v0, v1, v2}, Lfl/l;->S(Lfl/l;IJ)V

    const/4 v0, 0x1

    ushr-long/2addr p3, v0

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h0(Lfl/l;Lfl/l;Lfl/l;Lfl/l;IIIII)I
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    move/from16 v3, p9

    const/4 v4, 0x0

    move/from16 v6, p7

    move v5, v4

    move/from16 v4, p5

    :goto_0
    if-ge v5, v6, :cond_1

    const-wide/16 v7, 0x1

    shl-long v9, v7, v5

    invoke-virtual {v0, v2, v9, v10}, Lfl/l;->J(IJ)V

    invoke-virtual {v1, v0}, Lfl/l;->b(Lfl/l;)V

    invoke-virtual/range {p3 .. p4}, Lfl/l;->b(Lfl/l;)V

    move/from16 v9, p8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_0

    invoke-virtual {v1, v3}, Lfl/l;->r(I)V

    ushr-int/lit8 v11, v10, 0x6

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, p3

    invoke-virtual {v12, v11}, Lfl/l;->r(I)V

    add-int/lit8 v11, v2, 0x1

    invoke-virtual/range {p3 .. p3}, Lfl/l;->h()J

    move-result-wide v13

    ushr-long/2addr v13, v5

    and-long/2addr v13, v7

    neg-long v13, v13

    invoke-virtual {v1, v0, v11, v13, v14}, Lfl/l;->R(Lfl/l;IJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v12, p3

    invoke-virtual {v0, v3}, Lfl/l;->r(I)V

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Lfl/l;->r(I)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public final i(Lfl/l;Lfl/l;Lfl/l;II)V
    .locals 7

    :goto_0
    if-ge p4, p5, :cond_0

    invoke-virtual {p2, p4}, Lfl/l;->i(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/16 v6, 0x40

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lfl/a;->h(Lfl/l;Lfl/l;JII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget p4, p0, Lfl/a;->t:I

    if-eqz p4, :cond_1

    invoke-virtual {p2, p5}, Lfl/l;->i(I)J

    move-result-wide v3

    const/4 v5, 0x0

    iget v6, p0, Lfl/a;->t:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lfl/a;->h(Lfl/l;Lfl/l;JII)V

    :cond_1
    iget p2, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2}, Lfl/l;->r(I)V

    return-void
.end method

.method public final i0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V
    .locals 16

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Lfl/l;->m()I

    move-result v10

    sget-object v0, Lfl/a$a;->a:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, v9, Lfl/a;->s:I

    iget v2, v9, Lfl/a;->t:I

    if-eqz v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v11, v0

    move v12, v2

    move v13, v3

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter for MULMATRICESLU_GF2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v9, Lfl/a;->l:I

    iget v2, v9, Lfl/a;->m:I

    move v11, v0

    move v13, v1

    move v12, v2

    :goto_1
    new-instance v14, Lfl/l;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lfl/l;-><init>(Lfl/l;)V

    move v15, v1

    :goto_2
    if-gt v15, v11, :cond_3

    const/16 v4, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p3

    move v5, v11

    move v6, v12

    move v7, v15

    move v8, v13

    invoke-virtual/range {v0 .. v8}, Lfl/a;->b(Lfl/l;Lfl/l;Lfl/l;IIIIZ)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p3

    move v4, v12

    move v5, v11

    move v6, v12

    move v7, v15

    move v8, v13

    invoke-virtual/range {v0 .. v8}, Lfl/a;->b(Lfl/l;Lfl/l;Lfl/l;IIIIZ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lfl/l;->a(I)V

    return-void
.end method

.method public j(Lfl/l;Lfl/l;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v10, Lfl/l;

    invoke-direct {v10}, Lfl/l;-><init>()V

    new-instance v11, Lfl/l;

    iget v0, v7, Lfl/a;->i:I

    mul-int/2addr v0, v0

    iget v1, v7, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-direct {v11, v0}, Lfl/l;-><init>(I)V

    new-instance v12, Lfl/l;

    iget v0, v7, Lfl/a;->o:I

    invoke-direct {v12, v8, v0}, Lfl/l;-><init>(Lfl/l;I)V

    new-instance v13, Lfl/l;

    invoke-direct {v13, v11}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v14, Lfl/l;

    invoke-direct {v14, v9}, Lfl/l;-><init>(Lfl/l;)V

    const/4 v6, 0x0

    :goto_0
    iget v0, v7, Lfl/a;->i:I

    const/16 v5, 0x40

    if-ge v6, v0, :cond_4

    invoke-virtual {v10, v12}, Lfl/l;->b(Lfl/l;)V

    const/4 v3, 0x0

    :goto_1
    iget v0, v7, Lfl/a;->s:I

    if-ge v3, v0, :cond_1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_0

    invoke-virtual {v14}, Lfl/l;->h()J

    move-result-wide v0

    ushr-long v16, v0, v4

    const/16 v18, 0x40

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v3, v16

    move v15, v5

    move/from16 v5, v20

    move/from16 v17, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lfl/a;->h(Lfl/l;Lfl/l;JII)V

    iget v0, v7, Lfl/a;->s:I

    sub-int v5, v0, v19

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lfl/a;->i(Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 v4, v20, 0x1

    move v5, v15

    move/from16 v6, v17

    move/from16 v3, v19

    goto :goto_2

    :cond_0
    move/from16 v19, v3

    move v15, v5

    move/from16 v17, v6

    invoke-virtual {v14}, Lfl/l;->s()V

    add-int/lit8 v3, v19, 0x1

    goto :goto_1

    :cond_1
    move/from16 v17, v6

    iget v0, v7, Lfl/a;->t:I

    if-eqz v0, :cond_3

    const/4 v15, 0x0

    :goto_3
    iget v0, v7, Lfl/a;->t:I

    if-ge v15, v0, :cond_2

    invoke-virtual {v14}, Lfl/l;->h()J

    move-result-wide v0

    ushr-long v3, v0, v15

    iget v6, v7, Lfl/a;->t:I

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move v5, v15

    invoke-virtual/range {v0 .. v6}, Lfl/a;->h(Lfl/l;Lfl/l;JII)V

    iget v0, v7, Lfl/a;->o:I

    invoke-virtual {v13, v0}, Lfl/l;->r(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v14}, Lfl/l;->s()V

    :cond_3
    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_4
    move v15, v5

    invoke-virtual {v12, v11}, Lfl/l;->b(Lfl/l;)V

    iget v0, v7, Lfl/a;->o:I

    invoke-virtual {v13, v8, v0}, Lfl/l;->c(Lfl/l;I)V

    new-instance v6, Lfl/l;

    invoke-direct {v6, v9}, Lfl/l;-><init>(Lfl/l;)V

    const/4 v5, 0x0

    :goto_4
    iget v0, v7, Lfl/a;->s:I

    if-ge v5, v0, :cond_8

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v15, :cond_7

    invoke-virtual {v14, v6}, Lfl/l;->b(Lfl/l;)V

    const/16 v17, 0x40

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object v3, v12

    move/from16 v18, v4

    move-object v4, v14

    move/from16 v19, v5

    move/from16 v5, v18

    move-object v15, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lfl/a;->c(Lfl/l;Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 v5, v19, 0x1

    move v6, v5

    :goto_6
    iget v0, v7, Lfl/a;->s:I

    if-ge v6, v0, :cond_5

    const/4 v5, 0x0

    const/16 v17, 0x40

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    move/from16 v21, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lfl/a;->c(Lfl/l;Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 v6, v21, 0x1

    goto :goto_6

    :cond_5
    iget v6, v7, Lfl/a;->t:I

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    invoke-virtual/range {v0 .. v6}, Lfl/a;->c(Lfl/l;Lfl/l;Lfl/l;Lfl/l;II)V

    :cond_6
    invoke-virtual {v12, v10}, Lfl/l;->b(Lfl/l;)V

    iget v0, v7, Lfl/a;->p:I

    invoke-virtual {v15, v0}, Lfl/l;->r(I)V

    add-int/lit8 v4, v18, 0x1

    move-object v6, v15

    move/from16 v5, v19

    const/16 v15, 0x40

    goto :goto_5

    :cond_7
    move/from16 v19, v5

    move-object v15, v6

    add-int/lit8 v5, v19, 0x1

    const/16 v15, 0x40

    goto :goto_4

    :cond_8
    move-object v15, v6

    iget v0, v7, Lfl/a;->t:I

    if-eqz v0, :cond_9

    const/4 v6, 0x0

    :goto_7
    iget v0, v7, Lfl/a;->t:I

    if-ge v6, v0, :cond_9

    invoke-virtual {v14, v15}, Lfl/l;->b(Lfl/l;)V

    invoke-virtual {v10, v12}, Lfl/l;->b(Lfl/l;)V

    iget v5, v7, Lfl/a;->t:I

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v10

    move-object v3, v12

    move-object v4, v14

    move/from16 v17, v5

    move v5, v6

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lfl/a;->c(Lfl/l;Lfl/l;Lfl/l;Lfl/l;II)V

    invoke-virtual {v12, v10}, Lfl/l;->b(Lfl/l;)V

    iget v0, v7, Lfl/a;->p:I

    invoke-virtual {v15, v0}, Lfl/l;->r(I)V

    add-int/lit8 v6, v18, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v12, v11}, Lfl/l;->b(Lfl/l;)V

    iget v0, v7, Lfl/a;->o:I

    invoke-virtual {v13, v8, v0}, Lfl/l;->c(Lfl/l;I)V

    invoke-virtual {v14, v9}, Lfl/l;->b(Lfl/l;)V

    const/4 v6, 0x0

    :goto_8
    iget v0, v7, Lfl/a;->s:I

    if-ge v6, v0, :cond_d

    const/4 v0, 0x0

    const/16 v11, 0x40

    :goto_9
    if-ge v0, v11, :cond_c

    iget v1, v7, Lfl/a;->o:I

    invoke-virtual {v13, v1}, Lfl/l;->r(I)V

    iget v1, v7, Lfl/a;->i:I

    iget v2, v7, Lfl/a;->o:I

    mul-int/2addr v1, v2

    invoke-virtual {v12, v1}, Lfl/l;->r(I)V

    invoke-virtual {v10, v12}, Lfl/l;->b(Lfl/l;)V

    add-int/lit8 v15, v0, 0x1

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lfl/a;->d(Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 v0, v6, 0x1

    move v5, v0

    :goto_a
    iget v0, v7, Lfl/a;->s:I

    if-ge v5, v0, :cond_a

    const/4 v4, 0x0

    const/16 v17, 0x40

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lfl/a;->d(Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 v5, v18, 0x1

    goto :goto_a

    :cond_a
    iget v5, v7, Lfl/a;->t:I

    if-eqz v5, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lfl/a;->d(Lfl/l;Lfl/l;Lfl/l;II)V

    :cond_b
    iget v0, v7, Lfl/a;->p:I

    invoke-virtual {v14, v0}, Lfl/l;->r(I)V

    move v0, v15

    goto :goto_9

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    iget v0, v7, Lfl/a;->t:I

    if-eqz v0, :cond_e

    const/4 v15, 0x0

    :goto_b
    iget v0, v7, Lfl/a;->t:I

    add-int/lit8 v0, v0, -0x1

    if-ge v15, v0, :cond_e

    iget v0, v7, Lfl/a;->o:I

    invoke-virtual {v13, v0}, Lfl/l;->r(I)V

    iget v0, v7, Lfl/a;->i:I

    iget v1, v7, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-virtual {v12, v0}, Lfl/l;->r(I)V

    invoke-virtual {v10, v12}, Lfl/l;->b(Lfl/l;)V

    add-int/lit8 v15, v15, 0x1

    iget v5, v7, Lfl/a;->t:I

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v10

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lfl/a;->d(Lfl/l;Lfl/l;Lfl/l;II)V

    iget v0, v7, Lfl/a;->p:I

    invoke-virtual {v14, v0}, Lfl/l;->r(I)V

    goto :goto_b

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lfl/l;->o()V

    invoke-virtual/range {p2 .. p2}, Lfl/l;->o()V

    return-void
.end method

.method public j0(Lfl/l;Lfl/l;ILfl/l;)V
    .locals 2

    invoke-virtual {p2}, Lfl/l;->m()I

    move-result v0

    invoke-virtual {p2, p3}, Lfl/l;->r(I)V

    iget-object p3, p0, Lfl/a;->r0:Lfl/k;

    iget-object v1, p0, Lfl/a;->t0:Lfl/l;

    invoke-virtual {p3, v1, p2, p4}, Lfl/k;->H(Lfl/l;Lfl/l;Lfl/l;)V

    invoke-virtual {p2, v0}, Lfl/l;->a(I)V

    const/4 p2, 0x0

    iget-object p3, p0, Lfl/a;->t0:Lfl/l;

    invoke-virtual {p0, p1, p2, p3}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    return-void
.end method

.method public final k(Lfl/l;Lfl/o$a;Lfl/l;)I
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    new-instance v11, Lfl/l;

    iget v0, v8, Lfl/a;->U:I

    invoke-direct {v11, v0}, Lfl/l;-><init>(I)V

    new-instance v12, Lfl/l;

    iget v0, v8, Lfl/a;->f:I

    const/4 v13, 0x1

    shl-int/2addr v0, v13

    sub-int/2addr v0, v13

    iget v1, v8, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-direct {v12, v0}, Lfl/l;-><init>(I)V

    new-instance v14, Lfl/l;

    iget v0, v8, Lfl/a;->f:I

    add-int/2addr v0, v13

    iget v1, v8, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-direct {v14, v0}, Lfl/l;-><init>(I)V

    new-instance v15, Lfl/l;

    iget v0, v8, Lfl/a;->o:I

    invoke-direct {v15, v0}, Lfl/l;-><init>(I)V

    iget-object v0, v7, Lfl/o$a;->a:Lfl/l;

    iget v1, v8, Lfl/a;->o:I

    invoke-virtual {v15, v0, v10, v1}, Lfl/l;->C(Lfl/l;Lfl/l;I)V

    iget v0, v8, Lfl/a;->f:I

    const/16 v1, 0x22

    const-wide/16 v5, 0x1

    if-le v0, v1, :cond_1

    iget v1, v8, Lfl/a;->b:I

    const/16 v2, 0xc4

    if-le v1, v2, :cond_0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iget v1, v8, Lfl/a;->g:I

    shl-int v3, v0, v1

    iget v0, v8, Lfl/a;->o:I

    mul-int/2addr v0, v3

    invoke-virtual {v12, v0, v5, v6}, Lfl/l;->u(IJ)V

    iget v4, v8, Lfl/a;->f:I

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v3

    move-object/from16 v5, p2

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lfl/a;->D(Lfl/l;IIILfl/o$a;Lfl/l;)V

    iget v0, v8, Lfl/a;->g:I

    add-int/lit8 v2, v0, 0x1

    iget v3, v8, Lfl/a;->b:I

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lfl/a;->X(Lfl/l;IILfl/o$a;Lfl/l;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v8, v12, v7, v15}, Lfl/a;->Y(Lfl/l;Lfl/o$a;Lfl/l;)V

    :goto_1
    iget v0, v8, Lfl/a;->o:I

    const-wide/16 v1, 0x1

    invoke-virtual {v12, v0, v1, v2}, Lfl/l;->J(IJ)V

    invoke-virtual {v14}, Lfl/l;->m()I

    move-result v0

    iget-object v3, v7, Lfl/o$a;->a:Lfl/l;

    iget v4, v8, Lfl/a;->o:I

    invoke-virtual {v14, v3, v4}, Lfl/l;->e(Lfl/l;I)V

    invoke-virtual {v8, v14, v7}, Lfl/a;->R(Lfl/l;Lfl/o$a;)V

    invoke-virtual {v14, v0}, Lfl/l;->a(I)V

    iget v0, v8, Lfl/a;->f:I

    iget v3, v8, Lfl/a;->o:I

    mul-int/2addr v0, v3

    invoke-virtual {v14, v0, v1, v2}, Lfl/l;->u(IJ)V

    iget v0, v8, Lfl/a;->o:I

    invoke-virtual {v14, v10, v0}, Lfl/l;->P(Lfl/l;I)V

    iget v0, v8, Lfl/a;->o:I

    iget v1, v8, Lfl/a;->f:I

    sub-int/2addr v1, v13

    invoke-virtual {v12, v0, v1}, Lfl/l;->k(II)I

    move-result v0

    iget v1, v8, Lfl/a;->f:I

    invoke-virtual {v8, v14, v1, v12, v0}, Lfl/a;->Z(Lfl/l;ILfl/l;I)I

    move-result v15

    iget v0, v8, Lfl/a;->f0:I

    if-eqz v0, :cond_2

    invoke-virtual {v12, v14}, Lfl/l;->V(Lfl/l;)V

    :cond_2
    iget v0, v8, Lfl/a;->o:I

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v0}, Lfl/l;->p(II)I

    move-result v0

    if-nez v0, :cond_3

    return v7

    :cond_3
    invoke-virtual {v8, v14, v15}, Lfl/a;->v(Lfl/l;I)V

    new-instance v12, Lfl/l;

    iget v0, v8, Lfl/a;->o:I

    mul-int/2addr v0, v15

    invoke-direct {v12, v0}, Lfl/l;-><init>(I)V

    invoke-virtual {v8, v12, v14, v15}, Lfl/a;->N(Lfl/l;Lfl/l;I)V

    if-ne v15, v13, :cond_4

    iget v0, v8, Lfl/a;->o:I

    invoke-virtual {v9, v12, v0}, Lfl/l;->e(Lfl/l;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v12, v15}, Lfl/a;->L(Lfl/l;I)V

    iget v0, v8, Lfl/a;->i0:I

    ushr-int/lit8 v3, v0, 0x3

    iget v0, v8, Lfl/a;->e0:I

    invoke-virtual {v10, v0}, Lfl/l;->W(I)[B

    move-result-object v4

    iget v6, v8, Lfl/a;->e0:I

    iget v0, v8, Lfl/a;->i0:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v10, v0, [B

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v13, v7

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lfl/a;->b0(Lfl/l;II[BII[B)V

    invoke-virtual {v11}, Lfl/l;->h()J

    move-result-wide v0

    int-to-long v2, v15

    invoke-static {v0, v1, v2, v3}, Lfl/a;->s0(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, v8, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-virtual {v9, v13, v12, v0, v1}, Lfl/l;->d(ILfl/l;II)V

    :goto_2
    return v15
.end method

.method public k0(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 2

    iget-object v0, p0, Lfl/a;->r0:Lfl/k;

    iget-object v1, p0, Lfl/a;->t0:Lfl/l;

    invoke-virtual {v0, v1, p2, p3}, Lfl/k;->H(Lfl/l;Lfl/l;Lfl/l;)V

    const/4 p2, 0x0

    iget-object p3, p0, Lfl/a;->t0:Lfl/l;

    invoke-virtual {p0, p1, p2, p3}, Lfl/a;->r0(Lfl/l;ILfl/l;)V

    return-void
.end method

.method public final l(Lfl/l;Lfl/m;IJII)V
    .locals 10

    move-object v9, p0

    iget v4, v9, Lfl/a;->t:I

    const/16 v0, 0x8

    if-ge v4, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lfl/a;->f(Lfl/l;Lfl/m;IIJII)J

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lfl/a;->g(Lfl/l;Lfl/m;IIJII)V

    :goto_0
    return-void
.end method

.method public l0(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 1

    iget-object v0, p0, Lfl/a;->r0:Lfl/k;

    invoke-virtual {v0, p1, p2, p3}, Lfl/k;->H(Lfl/l;Lfl/l;Lfl/l;)V

    iget p1, p0, Lfl/a;->o:I

    invoke-virtual {p2, p1}, Lfl/l;->r(I)V

    iget p1, p0, Lfl/a;->o:I

    invoke-virtual {p3, p1}, Lfl/l;->r(I)V

    return-void
.end method

.method public m(Lfl/l;Lfl/a$b;)V
    .locals 3

    sget-object v0, Lfl/a$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    iget p2, p0, Lfl/a;->s:I

    iget v1, p0, Lfl/a;->t:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p2, p0, Lfl/a;->l:I

    iget v1, p0, Lfl/a;->m:I

    :goto_0
    new-instance v2, Lfl/l;

    invoke-direct {v2, p1}, Lfl/l;-><init>(Lfl/l;)V

    :goto_1
    if-gt v0, p2, :cond_2

    const/16 p1, 0x40

    invoke-virtual {p0, v2, v0, p1}, Lfl/a;->P(Lfl/l;II)V

    invoke-virtual {v2}, Lfl/l;->s()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, v0, v1}, Lfl/a;->P(Lfl/l;II)V

    return-void
.end method

.method public m0(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 2

    iget-object v0, p0, Lfl/a;->r0:Lfl/k;

    iget-object v1, p0, Lfl/a;->t0:Lfl/l;

    invoke-virtual {v0, v1, p2, p3}, Lfl/k;->H(Lfl/l;Lfl/l;Lfl/l;)V

    iget-object p2, p0, Lfl/a;->s0:Lfl/n;

    iget-object p3, p1, Lfl/l;->a:[J

    iget p1, p1, Lfl/l;->b:I

    iget-object v0, p0, Lfl/a;->t0:Lfl/l;

    iget-object v0, v0, Lfl/l;->a:[J

    invoke-virtual {p2, p3, p1, v0}, Lfl/n;->b([JI[J)V

    return-void
.end method

.method public n(Lfl/l;)V
    .locals 3

    iget v0, p0, Lfl/a;->o:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lfl/a;->b0:I

    if-ge v0, v1, :cond_0

    iget-wide v1, p0, Lfl/a;->d0:J

    invoke-virtual {p1, v0, v1, v2}, Lfl/l;->x(IJ)V

    iget v1, p0, Lfl/a;->o:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n0(Lfl/l;Lfl/l;Lfl/l;I)V
    .locals 2

    invoke-virtual {p3}, Lfl/l;->m()I

    move-result v0

    invoke-virtual {p3, p4}, Lfl/l;->r(I)V

    iget-object p4, p0, Lfl/a;->r0:Lfl/k;

    iget-object v1, p0, Lfl/a;->t0:Lfl/l;

    invoke-virtual {p4, v1, p2, p3}, Lfl/k;->H(Lfl/l;Lfl/l;Lfl/l;)V

    iget-object p2, p0, Lfl/a;->s0:Lfl/n;

    iget-object p4, p1, Lfl/l;->a:[J

    iget p1, p1, Lfl/l;->b:I

    iget-object v1, p0, Lfl/a;->t0:Lfl/l;

    iget-object v1, v1, Lfl/l;->a:[J

    invoke-virtual {p2, p4, p1, v1}, Lfl/n;->b([JI[J)V

    invoke-virtual {p3, v0}, Lfl/l;->a(I)V

    return-void
.end method

.method public o([BLfl/l;)V
    .locals 12

    invoke-virtual {p2}, Lfl/l;->n()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Lfl/l;->W(I)[B

    move-result-object p2

    iget v0, p0, Lfl/a;->W:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lfl/a;->i:I

    iget v2, p0, Lfl/a;->p:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lfl/a;->I:I

    and-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Lfl/a;->e:I

    if-ge v4, v5, :cond_8

    iget v5, p0, Lfl/a;->d:I

    iget v6, p0, Lfl/a;->c:I

    add-int/2addr v5, v6

    and-int/lit8 v6, v0, 0x7

    rsub-int/lit8 v7, v6, 0x8

    and-int/lit8 v7, v7, 0x7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v6, :cond_3

    iget v7, p0, Lfl/a;->J:I

    if-eqz v7, :cond_2

    ushr-int/lit8 v8, v0, 0x3

    aget-byte v9, p1, v8

    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    ushr-int v7, v10, v7

    shl-int v6, v7, v6

    xor-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, p1, v8

    iget v6, p0, Lfl/a;->X:I

    sub-int v7, v5, v6

    if-ltz v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    if-lez v7, :cond_1

    add-int/2addr v0, v6

    ushr-int/lit8 v6, v0, 0x3

    aget-byte v8, p1, v6

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v10, v0, 0x7

    shl-int/2addr v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v6

    add-int/2addr v0, v7

    goto :goto_2

    :cond_1
    :goto_1
    add-int/2addr v0, v5

    goto :goto_2

    :cond_2
    ushr-int/lit8 v7, v0, 0x3

    aget-byte v8, p1, v7

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    shl-int v6, v9, v6

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v7

    goto :goto_1

    :cond_3
    :goto_2
    iget v6, p0, Lfl/a;->d:I

    iget v7, p0, Lfl/a;->c:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    iget v7, p0, Lfl/a;->j:I

    add-int/2addr v7, v5

    and-int/lit8 v5, v7, 0x7

    if-eqz v5, :cond_6

    move v7, v1

    :goto_3
    add-int/lit8 v8, v6, -0x1

    ushr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    ushr-int/lit8 v8, v0, 0x3

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    add-int/lit8 v2, v2, 0x1

    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v5, 0x8

    shl-int/2addr v10, v11

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    ushr-int/lit8 v7, v0, 0x3

    add-int/lit8 v8, v2, 0x1

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, p1, v7

    add-int/lit8 v6, v6, 0x7

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v3

    rsub-int/lit8 v5, v5, 0x8

    if-le v6, v5, :cond_5

    add-int/lit8 v2, v2, 0x2

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int v5, v8, v5

    int-to-byte v5, v5

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, p1, v7

    move v8, v2

    :cond_5
    add-int/2addr v0, v6

    goto :goto_5

    :cond_6
    move v5, v1

    :goto_4
    add-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v7, v7, 0x3

    if-ge v5, v7, :cond_7

    ushr-int/lit8 v7, v0, 0x3

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p2, v2

    aput-byte v2, p1, v7

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v5, 0x1

    move v2, v8

    goto :goto_4

    :cond_7
    and-int/lit8 v5, v6, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    sub-int/2addr v0, v5

    move v8, v2

    :goto_5
    iget v2, p0, Lfl/a;->W:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x7

    iget v5, p0, Lfl/a;->I:I

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v2, v5

    add-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public o0(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 1

    iget-object v0, p0, Lfl/a;->r0:Lfl/k;

    invoke-virtual {v0, p1, p2, p3}, Lfl/k;->I(Lfl/l;Lfl/l;Lfl/l;)V

    return-void
.end method

.method public p([BLfl/m;[B)V
    .locals 2

    iget v0, p0, Lfl/a;->J:I

    invoke-virtual {p0, p1, p3, v0}, Lfl/a;->s([B[BI)V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget v1, p0, Lfl/a;->r:I

    if-ge p3, v1, :cond_1

    iget v1, p0, Lfl/a;->I:I

    invoke-virtual {p2, p1, v0, v1}, Lfl/m;->l0([BII)I

    move-result v0

    iget v1, p0, Lfl/a;->J:I

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lfl/m;->e0()V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final p0(Lfl/o;[Lfl/l;[B)V
    .locals 7

    invoke-virtual {p0, p1, p3}, Lfl/a;->q0(Lfl/o;[B)V

    iget-object p3, p1, Lfl/o;->a:Lfl/o$a;

    iget-object p3, p3, Lfl/o$a;->b:[I

    invoke-virtual {p0, p3}, Lfl/a;->c0([I)V

    new-instance p3, Lfl/l;

    iget-object v0, p1, Lfl/o;->b:Lfl/l;

    invoke-direct {p3, v0}, Lfl/l;-><init>(Lfl/l;)V

    iget v0, p0, Lfl/a;->a0:I

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v0, v1

    new-instance v1, Lfl/l;

    invoke-direct {v1, v0}, Lfl/l;-><init>(I)V

    new-instance v0, Lfl/l;

    iget v2, p0, Lfl/a;->z:I

    invoke-direct {v0, p3, v2}, Lfl/l;-><init>(Lfl/l;I)V

    const/4 v2, 0x0

    aput-object v0, p2, v2

    iget v3, p0, Lfl/a;->k0:I

    invoke-virtual {p3, v0, v3}, Lfl/l;->c(Lfl/l;I)V

    new-instance v0, Lfl/l;

    iget v3, p0, Lfl/a;->o:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v3}, Lfl/l;-><init>(Lfl/l;I)V

    move v3, v2

    :goto_0
    iget v4, p0, Lfl/a;->g:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    shl-int v4, v5, v3

    add-int/2addr v4, v5

    iget v6, p0, Lfl/a;->n:I

    if-le v4, v6, :cond_0

    iget-boolean v4, p0, Lfl/a;->A:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    sub-int v4, v3, v5

    iget v5, p0, Lfl/a;->o:I

    mul-int/2addr v5, v4

    invoke-virtual {v0, p3, v5}, Lfl/l;->e(Lfl/l;I)V

    iget v5, p0, Lfl/a;->o:I

    mul-int/2addr v5, v4

    invoke-virtual {p3, v5}, Lfl/l;->r(I)V

    iget v5, p0, Lfl/a;->o:I

    mul-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lfl/l;->r(I)V

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Lfl/l;

    invoke-direct {v4, p3}, Lfl/l;-><init>(Lfl/l;)V

    aput-object v4, p2, v3

    iget v4, p0, Lfl/a;->k0:I

    invoke-virtual {p3, v4}, Lfl/l;->r(I)V

    iget v4, p0, Lfl/a;->o:I

    invoke-virtual {v0, v4}, Lfl/l;->r(I)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lfl/a;->h:I

    if-eqz p2, :cond_3

    shl-int v3, v5, v3

    add-int/2addr v3, v5

    iget v4, p0, Lfl/a;->n:I

    if-gt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_2
    sub-int/2addr p2, v2

    iget v2, p0, Lfl/a;->o:I

    mul-int/2addr p2, v2

    invoke-virtual {v0, p3, p2}, Lfl/l;->e(Lfl/l;I)V

    :cond_3
    iget-object p1, p1, Lfl/o;->a:Lfl/o$a;

    new-instance p2, Lfl/l;

    invoke-direct {p2, v1}, Lfl/l;-><init>(Lfl/l;)V

    iput-object p2, p1, Lfl/o$a;->a:Lfl/l;

    return-void
.end method

.method public q([BLfl/m;[B)V
    .locals 14

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p3

    iget v0, v9, Lfl/a;->J:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v11, v0}, Lfl/a;->s([B[BI)V

    iget v1, v9, Lfl/a;->L:I

    iget v2, v9, Lfl/a;->M:I

    mul-int v3, v0, v2

    add-int v6, v1, v3

    mul-int v12, v0, v2

    iget v5, v9, Lfl/a;->i:I

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move v3, v6

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lfl/a;->V([B[BIII)I

    move-result v7

    iget v3, v9, Lfl/a;->i:I

    add-int/lit8 v8, v3, -0x1

    iget v13, v9, Lfl/a;->Q:I

    move v4, v6

    move v5, v12

    move v6, v7

    move v7, v8

    move v8, v13

    invoke-virtual/range {v0 .. v8}, Lfl/a;->u0([B[BIIIIII)I

    iget v0, v9, Lfl/a;->Q:I

    add-int/lit8 v0, v0, -0x1

    iget v1, v9, Lfl/a;->f0:I

    const-wide/16 v2, 0x0

    :goto_0
    if-ltz v0, :cond_0

    ushr-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v12

    aget-byte v4, v11, v4

    and-int/lit8 v5, v1, 0x7

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    iget v6, v9, Lfl/a;->Q:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v9, Lfl/a;->L:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    iget v5, v9, Lfl/a;->J:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    iget v5, v9, Lfl/a;->M:I

    add-int/2addr v0, v5

    aget-byte v5, v10, v0

    iget v6, v9, Lfl/a;->P:I

    mul-int/2addr v6, v4

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    iget v7, v9, Lfl/a;->N:I

    shl-int/2addr v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v10, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lfl/m;->o()V

    move v0, v1

    :goto_2
    iget v2, v9, Lfl/a;->r:I

    if-ge v1, v2, :cond_2

    iget v2, v9, Lfl/a;->I:I

    move-object/from16 v3, p2

    invoke-virtual {v3, p1, v0, v2}, Lfl/m;->l0([BII)I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lfl/m;->e0()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final q0(Lfl/o;[B)V
    .locals 4

    iget v0, p0, Lfl/a;->b0:I

    iget v1, p0, Lfl/a;->u:I

    iget v2, p0, Lfl/a;->v:I

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    new-instance v1, Lfl/l;

    iget v2, p0, Lfl/a;->B:I

    add-int/2addr v2, v0

    iget v3, p0, Lfl/a;->c0:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lfl/l;-><init>(I)V

    iput-object v1, p1, Lfl/o;->e:Lfl/l;

    new-instance v1, LIi/Q;

    iget v2, p0, Lfl/a;->h0:I

    invoke-direct {v1, v2}, LIi/Q;-><init>(I)V

    iget v2, p0, Lfl/a;->w:I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, LIi/v;->update([BII)V

    shl-int/lit8 p2, v0, 0x3

    new-array v2, p2, [B

    invoke-virtual {v1, v2, v3, p2}, LIi/Q;->e([BII)I

    iget-object v1, p1, Lfl/o;->e:Lfl/l;

    invoke-virtual {v1, v3, v2, v3, p2}, Lfl/l;->f(I[BII)V

    new-instance p2, Lfl/l;

    iget-object v1, p1, Lfl/o;->e:Lfl/l;

    invoke-direct {p2, v1, v0}, Lfl/l;-><init>(Lfl/l;I)V

    iput-object p2, p1, Lfl/o;->c:Lfl/l;

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->B:I

    invoke-direct {v0, p2, v1}, Lfl/l;-><init>(Lfl/l;I)V

    iput-object v0, p1, Lfl/o;->d:Lfl/l;

    new-instance p2, Lfl/l;

    iget-object v0, p1, Lfl/o;->e:Lfl/l;

    invoke-direct {p2, v0}, Lfl/l;-><init>(Lfl/l;)V

    iput-object p2, p1, Lfl/o;->b:Lfl/l;

    invoke-virtual {p0, p2}, Lfl/a;->n(Lfl/l;)V

    new-instance p2, Lfl/l;

    iget-object v0, p1, Lfl/o;->e:Lfl/l;

    iget v1, p0, Lfl/a;->b0:I

    invoke-direct {p2, v0, v1}, Lfl/l;-><init>(Lfl/l;I)V

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->u:I

    invoke-direct {v0, p2, v1}, Lfl/l;-><init>(Lfl/l;I)V

    sget-object v1, Lfl/a$b;->NV:Lfl/a$b;

    invoke-virtual {p0, p2, v1}, Lfl/a;->m(Lfl/l;Lfl/a$b;)V

    invoke-virtual {p0, v0, v1}, Lfl/a;->m(Lfl/l;Lfl/a$b;)V

    iget-object v2, p1, Lfl/o;->c:Lfl/l;

    invoke-virtual {p0, v2, p2, v0, v1}, Lfl/a;->i0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    iget v1, p0, Lfl/a;->u:I

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lfl/l;->r(I)V

    iget v1, p0, Lfl/a;->v:I

    invoke-virtual {v0, p2, v1}, Lfl/l;->c(Lfl/l;I)V

    sget-object v1, Lfl/a$b;->N:Lfl/a$b;

    invoke-virtual {p0, p2, v1}, Lfl/a;->m(Lfl/l;Lfl/a$b;)V

    invoke-virtual {p0, v0, v1}, Lfl/a;->m(Lfl/l;Lfl/a$b;)V

    iget-object p1, p1, Lfl/o;->d:Lfl/l;

    invoke-virtual {p0, p1, p2, v0, v1}, Lfl/a;->i0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    return-void
.end method

.method public r([BLfl/m;)V
    .locals 13

    iget v0, p0, Lfl/a;->I:I

    invoke-virtual {p2, v0}, Lfl/m;->f0(I)V

    new-instance v0, Lfl/m;

    invoke-direct {v0, p2}, Lfl/m;-><init>(Lfl/m;)V

    iget v1, p0, Lfl/a;->r:I

    ushr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lfl/a;->J:I

    if-ge v3, v5, :cond_4

    invoke-virtual {v0, p2}, Lfl/m;->X(Lfl/m;)V

    move v5, v2

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_1

    invoke-virtual {v0}, Lfl/m;->a0()B

    move-result v7

    ushr-int/2addr v7, v3

    and-int/2addr v7, v6

    iget v8, p0, Lfl/a;->K:I

    invoke-virtual {v0, v8}, Lfl/m;->f0(I)V

    move v8, v6

    :goto_2
    const/16 v9, 0x8

    if-ge v8, v9, :cond_0

    invoke-virtual {v0}, Lfl/m;->a0()B

    move-result v9

    ushr-int/2addr v9, v3

    and-int/2addr v9, v6

    shl-int/2addr v9, v8

    xor-int/2addr v7, v9

    iget v9, p0, Lfl/a;->K:I

    invoke-virtual {v0, v9}, Lfl/m;->f0(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v4, 0x1

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_1

    :cond_1
    iget v5, p0, Lfl/a;->N:I

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lfl/m;->c0()J

    move-result-wide v7

    ushr-long/2addr v7, v3

    const-wide/16 v9, 0x1

    and-long/2addr v7, v9

    iget v5, p0, Lfl/a;->K:I

    invoke-virtual {v0, v5}, Lfl/m;->f0(I)V

    :goto_3
    iget v5, p0, Lfl/a;->N:I

    if-ge v6, v5, :cond_2

    invoke-virtual {v0}, Lfl/m;->c0()J

    move-result-wide v11

    ushr-long/2addr v11, v3

    and-long/2addr v11, v9

    shl-long/2addr v11, v6

    xor-long/2addr v7, v11

    iget v5, p0, Lfl/a;->K:I

    invoke-virtual {v0, v5}, Lfl/m;->f0(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    long-to-int v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    move v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final r0(Lfl/l;ILfl/l;)V
    .locals 1

    invoke-virtual {p1}, Lfl/l;->m()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lfl/a;->s0:Lfl/n;

    iget-object p1, p1, Lfl/l;->a:[J

    iget-object p3, p3, Lfl/l;->a:[J

    invoke-virtual {v0, p1, p2, p3}, Lfl/n;->a([JI[J)V

    return-void
.end method

.method public s([B[BI)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lfl/a;->L:I

    iget v2, p0, Lfl/a;->M:I

    mul-int v3, v0, v2

    add-int v7, v1, v3

    mul-int v8, v0, v2

    iget v1, p0, Lfl/a;->i:I

    add-int/lit8 v9, v1, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lfl/a;->V([B[BIII)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Lfl/l;Lfl/m;)J
    .locals 10

    new-instance v6, Lfl/m;

    invoke-direct {v6, p2}, Lfl/m;-><init>(Lfl/m;)V

    iget v0, p0, Lfl/a;->i:I

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    invoke-virtual {p0, p1, v6, v4}, Lfl/a;->W(Lfl/l;Lfl/m;I)I

    move-result v3

    if-eqz v0, :cond_0

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lfl/a;->v0(Lfl/l;Lfl/m;III)I

    move-result v3

    :cond_0
    iget v0, p0, Lfl/a;->i:I

    iget v1, p0, Lfl/a;->Q:I

    sub-int v2, v0, v1

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v2, v2, 0x3f

    const/16 v5, 0x40

    if-eqz v2, :cond_6

    and-int/lit8 v7, v3, 0x3f

    if-eqz v7, :cond_3

    iget v8, p0, Lfl/a;->r:I

    sub-int v9, v8, v1

    add-int/lit8 v9, v9, 0x7

    ushr-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, 0x7

    if-eqz v9, :cond_2

    sub-int/2addr v8, v1

    iget v1, p0, Lfl/a;->t:I

    sub-int/2addr v8, v1

    and-int/lit8 v1, v8, 0x3f

    rsub-int/lit8 v1, v1, 0x40

    and-int/lit8 v1, v1, 0x3f

    sub-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x6

    invoke-virtual {p1, v6, v0, v3}, Lfl/l;->G(Lfl/m;II)V

    invoke-virtual {v6, v0}, Lfl/m;->d0(I)J

    move-result-wide v8

    ushr-long/2addr v8, v7

    invoke-virtual {p1, v0, v8, v9}, Lfl/l;->u(IJ)V

    if-ge v0, v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v6, v1}, Lfl/m;->d0(I)J

    move-result-wide v2

    rsub-int/lit8 v4, v7, 0x40

    shl-long v4, v2, v4

    invoke-virtual {p1, v0, v4, v5}, Lfl/l;->J(IJ)V

    ushr-long/2addr v2, v7

    invoke-virtual {p1, v1, v2, v3}, Lfl/l;->u(IJ)V

    goto/16 :goto_0

    :cond_1
    add-int/2addr v2, v7

    if-le v2, v5, :cond_8

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v6, v1}, Lfl/m;->d0(I)J

    move-result-wide v1

    sub-int/2addr v5, v7

    shl-long/2addr v1, v5

    invoke-virtual {p1, v0, v1, v2}, Lfl/l;->J(IJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6, v4, v7}, Lfl/l;->F(Lfl/m;II)V

    invoke-virtual {v6, v4}, Lfl/m;->i(I)J

    move-result-wide v0

    ushr-long/2addr v0, v7

    invoke-virtual {p1, v4, v0, v1}, Lfl/l;->u(IJ)V

    add-int/2addr v2, v7

    if-le v2, v5, :cond_8

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v6, v0}, Lfl/m;->i(I)J

    move-result-wide v0

    sub-int/2addr v5, v7

    shl-long/2addr v0, v5

    invoke-virtual {p1, v4, v0, v1}, Lfl/l;->J(IJ)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lfl/a;->r:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_4

    invoke-virtual {p1, v6, v4}, Lfl/l;->E(Lfl/m;I)V

    invoke-virtual {v6, v4}, Lfl/m;->d0(I)J

    move-result-wide v0

    invoke-virtual {p1, v4, v0, v1}, Lfl/l;->u(IJ)V

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    invoke-virtual {p1, v6, v4}, Lfl/l;->E(Lfl/m;I)V

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_8

    and-int/lit8 v0, v3, 0x3f

    if-eqz v0, :cond_5

    iget v2, p0, Lfl/a;->r:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x7

    ushr-int/lit8 v1, v2, 0x3

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_7

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p1, v6, v1, v0}, Lfl/l;->F(Lfl/m;II)V

    invoke-virtual {v6, v1}, Lfl/m;->i(I)J

    move-result-wide v2

    ushr-long/2addr v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lfl/l;->u(IJ)V

    invoke-virtual {v6, v4}, Lfl/m;->d0(I)J

    move-result-wide v2

    sub-int/2addr v5, v0

    shl-long/2addr v2, v5

    invoke-virtual {p1, v1, v2, v3}, Lfl/l;->J(IJ)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v6, v4, v0}, Lfl/l;->F(Lfl/m;II)V

    :cond_8
    :goto_0
    invoke-virtual {p2}, Lfl/m;->h()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    and-long/2addr p1, v0

    return-wide p1
.end method

.method public final t0([IIII)I
    .locals 2

    :goto_0
    if-ge p3, p4, :cond_0

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lfl/a;->o:I

    shl-int/2addr v1, p3

    aput v1, p1, p2

    add-int/lit8 p3, p3, 0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return p2
.end method

.method public final u(Lfl/l;Lfl/m;)J
    .locals 6

    new-instance v2, Lfl/m;

    invoke-direct {v2, p2}, Lfl/m;-><init>(Lfl/m;)V

    iget v0, p0, Lfl/a;->s:I

    invoke-virtual {p0, p1, v2, v0}, Lfl/a;->W(Lfl/l;Lfl/m;I)I

    move-result v3

    iget v0, p0, Lfl/a;->t:I

    if-eqz v0, :cond_0

    iget v4, p0, Lfl/a;->s:I

    add-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfl/a;->v0(Lfl/l;Lfl/m;III)I

    :cond_0
    invoke-virtual {p2}, Lfl/m;->h()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    and-long/2addr p1, v0

    return-wide p1
.end method

.method public final u0([B[BIIIIII)I
    .locals 4

    :goto_0
    if-lt p7, p8, :cond_0

    ushr-int/lit8 v0, p6, 0x3

    add-int/2addr v0, p4

    aget-byte v1, p1, v0

    ushr-int/lit8 v2, p3, 0x3

    add-int/2addr v2, p5

    aget-byte v2, p2, v2

    and-int/lit8 v3, p3, 0x7

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, p6, 0x7

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/2addr p3, p7

    add-int/lit8 p7, p7, -0x1

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    iput p3, p0, Lfl/a;->f0:I

    return p6
.end method

.method public final v(Lfl/l;I)V
    .locals 4

    new-instance v0, Lfl/l;

    iget v1, p0, Lfl/a;->o:I

    invoke-direct {v0, v1}, Lfl/l;-><init>(I)V

    invoke-virtual {p1}, Lfl/l;->m()I

    move-result v1

    iget v2, p0, Lfl/a;->o:I

    mul-int/2addr v2, p2

    invoke-virtual {p1, v2}, Lfl/l;->r(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lfl/a;->f0(Lfl/l;Lfl/l;I)V

    iget v3, p0, Lfl/a;->o:I

    invoke-virtual {p1, v2, v3}, Lfl/l;->w(II)V

    add-int/lit8 p2, p2, -0x1

    :goto_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    iget v2, p0, Lfl/a;->o:I

    neg-int v2, v2

    invoke-virtual {p1, v2}, Lfl/l;->r(I)V

    invoke-virtual {p0, p1, p1, v0}, Lfl/a;->k0(Lfl/l;Lfl/l;Lfl/l;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lfl/l;->a(I)V

    return-void
.end method

.method public final v0(Lfl/l;Lfl/m;III)I
    .locals 6

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p5, :cond_3

    and-int/lit8 v1, p3, 0x3f

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2, p4, v1}, Lfl/l;->F(Lfl/m;II)V

    invoke-virtual {p2, p4}, Lfl/m;->i(I)J

    move-result-wide v2

    ushr-long/2addr v2, v1

    invoke-virtual {p1, p4, v2, v3}, Lfl/l;->u(IJ)V

    add-int v2, v1, v0

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {p2, v4}, Lfl/m;->i(I)J

    move-result-wide v4

    rsub-int/lit8 v1, v1, 0x40

    shl-long/2addr v4, v1

    invoke-virtual {p1, p4, v4, v5}, Lfl/l;->J(IJ)V

    :cond_0
    if-lt v2, v3, :cond_2

    invoke-virtual {p2}, Lfl/l;->s()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p1, p2, v1}, Lfl/l;->E(Lfl/m;I)V

    :cond_2
    :goto_1
    invoke-virtual {p2, p4}, Lfl/l;->r(I)V

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    invoke-virtual {p1, p4, v3, v4}, Lfl/l;->x(IJ)V

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p1, v1}, Lfl/l;->r(I)V

    shl-int/lit8 v1, p4, 0x6

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public final w(Lfl/l;Lfl/l;Lfl/l;Lfl/l;Lfl/l;II)V
    .locals 1

    iget v0, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, v0}, Lfl/l;->e(Lfl/l;I)V

    :goto_0
    const/4 p2, 0x1

    if-le p6, p2, :cond_0

    add-int p2, p7, p6

    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr p2, v0

    invoke-virtual {p4, p3, p2}, Lfl/l;->c(Lfl/l;I)V

    invoke-virtual {p0, p1, p4, p5}, Lfl/a;->a(Lfl/l;Lfl/l;Lfl/l;)V

    ushr-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w0(Lfl/l;Lfl/m;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x3f

    add-int/lit8 p4, p4, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p4, p3}, Lfl/l;->F(Lfl/m;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p4}, Lfl/l;->E(Lfl/m;I)V

    :goto_0
    return-void
.end method

.method public final x(Lfl/l;Lfl/l;I)V
    .locals 1

    iget v0, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, v0}, Lfl/l;->e(Lfl/l;I)V

    iget v0, p0, Lfl/a;->o:I

    invoke-virtual {p2, v0}, Lfl/l;->r(I)V

    iget v0, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, v0, p3}, Lfl/l;->L(Lfl/l;II)V

    iget p1, p0, Lfl/a;->o:I

    iget p3, p0, Lfl/a;->c:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lfl/l;->r(I)V

    return-void
.end method

.method public x0(Ljava/security/SecureRandom;[B[BII[B)V
    .locals 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iput-object v9, v8, Lfl/a;->a:Ljava/security/SecureRandom;

    new-instance v11, Lfl/l;

    iget v0, v8, Lfl/a;->o:I

    invoke-direct {v11, v0}, Lfl/l;-><init>(I)V

    new-instance v0, Lfl/l;

    iget v1, v8, Lfl/a;->U:I

    invoke-direct {v0, v1}, Lfl/l;-><init>(I)V

    new-instance v1, Lfl/l;

    iget v2, v8, Lfl/a;->U:I

    invoke-direct {v1, v2}, Lfl/l;-><init>(I)V

    new-instance v12, Lfl/l;

    invoke-direct {v12, v1}, Lfl/l;-><init>(Lfl/l;)V

    iget v1, v8, Lfl/a;->c:I

    and-int/lit8 v13, v1, 0x7

    ushr-int/lit8 v1, v1, 0x3

    const/4 v15, 0x1

    if-eqz v13, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int v7, v1, v2

    iget v1, v8, Lfl/a;->G:I

    invoke-static {v1}, Lfl/j;->f(I)J

    move-result-wide v5

    new-instance v4, Lfl/o;

    invoke-direct {v4, v8}, Lfl/o;-><init>(Lfl/a;)V

    new-instance v3, Lfl/l;

    iget v1, v8, Lfl/a;->H:I

    invoke-direct {v3, v1}, Lfl/l;-><init>(I)V

    iget v1, v8, Lfl/a;->g:I

    add-int/2addr v1, v15

    new-array v2, v1, [Lfl/l;

    move-object/from16 v1, p6

    invoke-virtual {v8, v4, v2, v1}, Lfl/a;->p0(Lfl/o;[Lfl/l;[B)V

    new-instance v1, Lfl/l;

    iget-object v14, v4, Lfl/o;->a:Lfl/o$a;

    iget-object v14, v14, Lfl/o$a;->a:Lfl/l;

    invoke-direct {v1, v14}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v14, Lfl/l;

    invoke-direct {v14, v0}, Lfl/l;-><init>(Lfl/l;)V

    iget v0, v8, Lfl/a;->i0:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v15, v0, [B

    const/16 v16, 0x0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object v10, v1

    move-object v1, v14

    move-object/from16 v23, v2

    move/from16 v2, v16

    move-object/from16 v24, v3

    move/from16 v3, v17

    move-object/from16 v25, v4

    move-object/from16 v4, p3

    move-wide/from16 v26, v5

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v28, v12

    move v12, v7

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lfl/a;->b0(Lfl/l;II[BII[B)V

    new-instance v15, Lfl/l;

    iget v0, v8, Lfl/a;->S:I

    invoke-direct {v15, v0}, Lfl/l;-><init>(I)V

    new-instance v7, Lfl/l;

    iget v0, v8, Lfl/a;->p:I

    invoke-direct {v7, v0}, Lfl/l;-><init>(I)V

    new-instance v0, Lfl/m;

    invoke-direct {v0, v7}, Lfl/m;-><init>(Lfl/l;)V

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    :goto_1
    iget v3, v8, Lfl/a;->e:I

    if-gt v5, v3, :cond_a

    iget v3, v8, Lfl/a;->E:I

    invoke-virtual {v7, v15, v14, v3}, Lfl/l;->C(Lfl/l;Lfl/l;I)V

    iget v3, v8, Lfl/a;->J:I

    if-eqz v3, :cond_1

    iget v1, v8, Lfl/a;->E:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-wide v2, v8, Lfl/a;->Y:J

    invoke-virtual {v7, v1, v2, v3}, Lfl/l;->x(IJ)V

    iget v1, v8, Lfl/a;->I:I

    invoke-virtual {v0, v1}, Lfl/m;->b0(I)B

    move-result v1

    int-to-long v1, v1

    :cond_1
    move-wide/from16 v29, v1

    :goto_2
    iget v1, v8, Lfl/a;->J:I

    if-eqz v1, :cond_2

    iget v1, v8, Lfl/a;->I:I

    iget v2, v8, Lfl/a;->e0:I

    iget v3, v8, Lfl/a;->K:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v9, v2}, Lfl/m;->Z(ILjava/security/SecureRandom;I)V

    iget v2, v8, Lfl/a;->I:I

    const-wide/16 v3, 0x1

    iget v1, v8, Lfl/a;->J:I

    shl-long/2addr v3, v1

    neg-long v3, v3

    move-object v1, v0

    move-object/from16 p6, v14

    move v14, v5

    move-wide/from16 v5, v29

    invoke-virtual/range {v1 .. v6}, Lfl/m;->h0(IJJ)V

    goto :goto_3

    :cond_2
    move-object/from16 p6, v14

    move v14, v5

    iget v1, v8, Lfl/a;->K:I

    iget v2, v8, Lfl/a;->e0:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v9, v2}, Lfl/m;->Z(ILjava/security/SecureRandom;I)V

    :goto_3
    iget v1, v8, Lfl/a;->b:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_3

    iget v1, v8, Lfl/a;->o:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-wide v3, v8, Lfl/a;->d0:J

    invoke-virtual {v7, v1, v3, v4}, Lfl/l;->x(IJ)V

    :goto_4
    move-object/from16 v6, v25

    goto :goto_5

    :cond_3
    const/4 v2, 0x1

    goto :goto_4

    :goto_5
    iget-object v1, v6, Lfl/o;->d:Lfl/l;

    sget-object v3, Lfl/a$b;->N:Lfl/a$b;

    invoke-virtual {v8, v11, v7, v1, v3}, Lfl/a;->F0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    move-object/from16 v5, v24

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v9, v12}, Lfl/l;->g(ILjava/security/SecureRandom;I)V

    if-eqz v13, :cond_4

    iget v1, v8, Lfl/a;->H:I

    sub-int/2addr v1, v2

    move-wide/from16 v3, v26

    invoke-virtual {v5, v1, v3, v4}, Lfl/l;->x(IJ)V

    goto :goto_6

    :cond_4
    move-wide/from16 v3, v26

    :goto_6
    iget-object v1, v6, Lfl/o;->b:Lfl/l;

    invoke-virtual {v8, v10, v5, v1}, Lfl/a;->J(Lfl/l;Lfl/l;Lfl/l;)V

    const/4 v1, 0x0

    :goto_7
    iget v2, v8, Lfl/a;->g:I

    if-gt v1, v2, :cond_5

    iget-object v2, v8, Lfl/a;->u0:Lfl/l;

    move-object/from16 p3, v0

    new-instance v0, Lfl/l;

    move-wide/from16 v26, v3

    aget-object v3, v23, v1

    iget v4, v8, Lfl/a;->o:I

    invoke-direct {v0, v3, v4}, Lfl/l;-><init>(Lfl/l;I)V

    sget-object v3, Lfl/a$b;->V:Lfl/a$b;

    invoke-virtual {v8, v2, v5, v0, v3}, Lfl/a;->F0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    iget v0, v8, Lfl/a;->o:I

    add-int/lit8 v2, v1, 0x1

    mul-int v3, v1, v2

    const/4 v4, 0x1

    ushr-int/2addr v3, v4

    add-int/2addr v3, v4

    mul-int v17, v0, v3

    aget-object v18, v23, v1

    iget-object v1, v8, Lfl/a;->u0:Lfl/l;

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v10

    move-object/from16 v20, v1

    move/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Lfl/l;->B(ILfl/l;ILfl/l;II)V

    move-object/from16 v0, p3

    move v1, v2

    move-wide/from16 v3, v26

    goto :goto_7

    :cond_5
    move-object/from16 p3, v0

    move-wide/from16 v26, v3

    iget-object v0, v6, Lfl/o;->a:Lfl/o$a;

    invoke-virtual {v8, v7, v0, v11}, Lfl/a;->k(Lfl/l;Lfl/o$a;Lfl/l;)I

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v8, Lfl/a;->o:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5}, Lfl/l;->h()J

    move-result-wide v2

    iget v4, v8, Lfl/a;->m:I

    shl-long/2addr v2, v4

    invoke-virtual {v7, v0, v2, v3}, Lfl/l;->J(IJ)V

    iget v0, v8, Lfl/a;->o:I

    iget v2, v8, Lfl/a;->H:I

    add-int/lit8 v20, v2, -0x1

    iget v1, v8, Lfl/a;->m:I

    rsub-int/lit8 v21, v1, 0x40

    const/16 v19, 0x0

    move-object/from16 v16, v7

    move/from16 v17, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v16 .. v21}, Lfl/l;->H(ILfl/l;III)V

    iget v0, v8, Lfl/a;->o:I

    iget v1, v8, Lfl/a;->H:I

    add-int v2, v0, v1

    iget v3, v8, Lfl/a;->p:I

    if-ne v2, v3, :cond_6

    add-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Lfl/l;->i(I)J

    move-result-wide v1

    iget v3, v8, Lfl/a;->m:I

    rsub-int/lit8 v3, v3, 0x40

    ushr-long/2addr v1, v3

    invoke-virtual {v7, v0, v1, v2}, Lfl/l;->u(IJ)V

    :cond_6
    iget-object v0, v6, Lfl/o;->c:Lfl/l;

    sget-object v1, Lfl/a$b;->NV:Lfl/a$b;

    invoke-virtual {v8, v15, v7, v0, v1}, Lfl/a;->F0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    iget v0, v8, Lfl/a;->e:I

    if-eq v14, v0, :cond_8

    iget v1, v8, Lfl/a;->p:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v14

    iget v2, v8, Lfl/a;->R:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    sub-int/2addr v1, v2

    invoke-virtual {v15, v0, v15, v1, v2}, Lfl/l;->d(ILfl/l;II)V

    iget v1, v8, Lfl/a;->D:I

    if-eqz v1, :cond_7

    iget-wide v1, v8, Lfl/a;->Y:J

    not-long v1, v1

    invoke-virtual {v15, v0, v1, v2}, Lfl/l;->x(IJ)V

    :cond_7
    iget v0, v8, Lfl/a;->T:I

    move-object/from16 v4, p6

    invoke-virtual {v4, v0}, Lfl/l;->W(I)[B

    move-result-object v3

    iget v2, v8, Lfl/a;->T:I

    array-length v1, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, p3

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, v28

    move/from16 v20, v2

    move/from16 v2, v16

    move-object/from16 v16, v3

    move-wide/from16 v21, v26

    move/from16 v3, v20

    move-object/from16 v31, v4

    move-object/from16 v4, v16

    move-object/from16 v20, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move/from16 v6, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lfl/a;->b0(Lfl/l;II[BII[B)V

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lfl/l;->V(Lfl/l;)V

    goto :goto_8

    :cond_8
    move-object/from16 v18, p3

    move-object/from16 v1, p6

    move-object/from16 v20, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-wide/from16 v21, v26

    move-object/from16 v0, v28

    :goto_8
    add-int/lit8 v5, v14, 0x1

    move-object/from16 v28, v0

    move-object v14, v1

    move-object/from16 v25, v17

    move-object/from16 v0, v18

    move-object/from16 v7, v19

    move-object/from16 v24, v20

    move-wide/from16 v26, v21

    move-wide/from16 v1, v29

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move v5, v14

    move-object/from16 v14, p6

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x1

    if-ne v3, v2, :cond_b

    invoke-virtual {v15}, Lfl/l;->n()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {v15, v0}, Lfl/l;->W(I)[B

    move-result-object v0

    iget v1, v8, Lfl/a;->W:I

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_b
    move-object/from16 v2, p2

    invoke-virtual {v8, v2, v15}, Lfl/a;->o([BLfl/l;)V

    :goto_9
    return-void
.end method

.method public y([B[B[B)I
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v4, p2

    new-instance v9, Lfl/m;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lfl/m;-><init>([B)V

    iget v0, v8, Lfl/a;->N:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_0

    iget v0, v8, Lfl/a;->J:I

    if-le v0, v2, :cond_0

    new-instance v0, Lfl/m;

    invoke-direct {v0, v9}, Lfl/m;-><init>(Lfl/m;)V

    iget v3, v8, Lfl/a;->L:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lfl/m;->f0(I)V

    move v3, v1

    move-wide v10, v5

    :goto_0
    iget v7, v8, Lfl/a;->J:I

    sub-int/2addr v7, v2

    if-ge v3, v7, :cond_1

    iget v7, v8, Lfl/a;->M:I

    invoke-virtual {v0, v7}, Lfl/m;->f0(I)V

    invoke-virtual {v0}, Lfl/m;->a0()B

    move-result v7

    int-to-long v12, v7

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    iget v7, v8, Lfl/a;->N:I

    ushr-long/2addr v12, v7

    iget v7, v8, Lfl/a;->P:I

    mul-int/2addr v7, v3

    shl-long/2addr v12, v7

    xor-long/2addr v10, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-wide v10, v5

    :cond_1
    iget v0, v8, Lfl/a;->J:I

    const/16 v3, 0x40

    if-eqz v0, :cond_7

    new-instance v7, Lfl/l;

    iget v12, v8, Lfl/a;->O:I

    mul-int/2addr v12, v0

    add-int/2addr v12, v2

    invoke-direct {v7, v12}, Lfl/l;-><init>(I)V

    new-instance v0, Lfl/m;

    invoke-direct {v0, v9}, Lfl/m;-><init>(Lfl/m;)V

    :goto_1
    iget v12, v8, Lfl/a;->J:I

    sub-int/2addr v12, v2

    if-ge v1, v12, :cond_2

    iget v12, v8, Lfl/a;->L:I

    iget v13, v8, Lfl/a;->M:I

    mul-int/2addr v13, v1

    add-int/2addr v12, v13

    invoke-virtual {v0, v12}, Lfl/m;->j0(I)V

    new-instance v12, Lfl/l;

    iget v13, v8, Lfl/a;->O:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v2

    invoke-direct {v12, v7, v13}, Lfl/l;-><init>(Lfl/l;I)V

    invoke-virtual {v8, v12, v0}, Lfl/a;->u(Lfl/l;Lfl/m;)J

    move-result-wide v12

    shl-long/2addr v12, v1

    xor-long/2addr v5, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v12, v8, Lfl/a;->L:I

    iget v13, v8, Lfl/a;->M:I

    mul-int/2addr v13, v1

    add-int/2addr v12, v13

    invoke-virtual {v0, v12}, Lfl/m;->j0(I)V

    new-instance v12, Lfl/l;

    iget v13, v8, Lfl/a;->O:I

    mul-int/2addr v13, v1

    add-int/2addr v13, v2

    invoke-direct {v12, v7, v13}, Lfl/l;-><init>(Lfl/l;I)V

    invoke-virtual {v8, v12, v0}, Lfl/a;->t(Lfl/l;Lfl/m;)J

    move-result-wide v12

    shl-long/2addr v12, v1

    xor-long/2addr v5, v12

    iget v0, v8, Lfl/a;->N:I

    if-eqz v0, :cond_6

    iget v0, v8, Lfl/a;->t:I

    if-nez v0, :cond_3

    add-int/2addr v1, v2

    iget v0, v8, Lfl/a;->O:I

    mul-int/2addr v1, v0

    iget v0, v8, Lfl/a;->Q:I

    sub-int/2addr v3, v0

    shl-long v2, v10, v3

    :goto_2
    invoke-virtual {v7, v1, v2, v3}, Lfl/l;->J(IJ)V

    goto :goto_3

    :cond_3
    iget v12, v8, Lfl/a;->Q:I

    add-int/2addr v1, v2

    if-le v0, v12, :cond_4

    iget v2, v8, Lfl/a;->O:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v12

    shl-long v2, v10, v0

    goto :goto_2

    :cond_4
    if-ne v0, v12, :cond_5

    iget v0, v8, Lfl/a;->O:I

    mul-int/2addr v1, v0

    invoke-virtual {v7, v1, v10, v11}, Lfl/l;->u(IJ)V

    goto :goto_3

    :cond_5
    iget v13, v8, Lfl/a;->O:I

    mul-int/2addr v13, v1

    sub-int/2addr v13, v2

    sub-int/2addr v12, v0

    sub-int/2addr v3, v12

    shl-long v2, v10, v3

    invoke-virtual {v7, v13, v2, v3}, Lfl/l;->J(IJ)V

    iget v0, v8, Lfl/a;->O:I

    mul-int/2addr v1, v0

    iget v0, v8, Lfl/a;->Q:I

    iget v2, v8, Lfl/a;->t:I

    sub-int/2addr v0, v2

    ushr-long v2, v10, v0

    invoke-virtual {v7, v1, v2, v3}, Lfl/l;->u(IJ)V

    :cond_6
    :goto_3
    iget v0, v8, Lfl/a;->D:I

    iget v1, v8, Lfl/a;->J:I

    sub-int/2addr v0, v1

    shl-long v0, v5, v0

    invoke-virtual {v7, v0, v1}, Lfl/l;->v(J)V

    array-length v2, v4

    new-instance v5, Lfl/m;

    invoke-direct {v5, v7}, Lfl/m;-><init>(Lfl/l;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lfl/a;->y0([BI[BLfl/m;Lfl/m;)I

    move-result v0

    return v0

    :cond_7
    new-instance v10, Lfl/l;

    iget v0, v8, Lfl/a;->S:I

    invoke-direct {v10, v0}, Lfl/l;-><init>(I)V

    new-instance v0, Lfl/l;

    iget v2, v8, Lfl/a;->p:I

    invoke-direct {v0, v2}, Lfl/l;-><init>(I)V

    new-instance v11, Lfl/l;

    invoke-direct {v11, v0}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v12, Lfl/l;

    iget v0, v8, Lfl/a;->U:I

    invoke-direct {v12, v0}, Lfl/l;-><init>(I)V

    iget v0, v8, Lfl/a;->W:I

    move-object/from16 v2, p3

    invoke-virtual {v10, v1, v2, v1, v0}, Lfl/l;->f(I[BII)V

    new-array v7, v3, [B

    array-length v6, v4

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v7}, Lfl/a;->b0(Lfl/l;II[BII[B)V

    invoke-virtual {v8, v11, v10, v9}, Lfl/a;->I(Lfl/l;Lfl/l;Lfl/m;)V

    iget v0, v8, Lfl/a;->E:I

    invoke-virtual {v11, v12, v0}, Lfl/l;->q(Lfl/l;I)I

    move-result v0

    return v0
.end method

.method public y0([BI[BLfl/m;Lfl/m;)I
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    new-instance v11, Lfl/l;

    iget v0, v8, Lfl/a;->S:I

    invoke-direct {v11, v0}, Lfl/l;-><init>(I)V

    new-instance v0, Lfl/l;

    iget v1, v8, Lfl/a;->p:I

    invoke-direct {v0, v1}, Lfl/l;-><init>(I)V

    new-instance v1, Lfl/l;

    iget v2, v8, Lfl/a;->p:I

    invoke-direct {v1, v2}, Lfl/l;-><init>(I)V

    new-instance v12, Lfl/l;

    invoke-direct {v12, v0}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v13, Lfl/l;

    invoke-direct {v13, v1}, Lfl/l;-><init>(Lfl/l;)V

    const/16 v0, 0x40

    new-array v14, v0, [B

    new-instance v15, Lfl/l;

    iget v0, v8, Lfl/a;->e:I

    iget v1, v8, Lfl/a;->U:I

    mul-int/2addr v0, v1

    invoke-direct {v15, v0}, Lfl/l;-><init>(I)V

    invoke-virtual/range {p5 .. p5}, Lfl/m;->h()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lfl/l;->r(I)V

    move-object/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Lfl/a;->E0(Lfl/l;[B)V

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v4, p1

    move/from16 v5, v16

    move-wide/from16 v17, v6

    move/from16 v6, p2

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lfl/a;->b0(Lfl/l;II[BII[B)V

    const/4 v7, 0x1

    :goto_0
    iget v0, v8, Lfl/a;->e:I

    if-ge v7, v0, :cond_0

    iget v0, v8, Lfl/a;->U:I

    mul-int v2, v7, v0

    const/4 v5, 0x0

    iget v6, v8, Lfl/a;->T:I

    const/16 v3, 0x40

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v4, v14

    move/from16 v16, v7

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lfl/a;->b0(Lfl/l;II[BII[B)V

    iget v0, v8, Lfl/a;->U:I

    add-int/lit8 v7, v16, -0x1

    mul-int/2addr v0, v7

    iget v1, v8, Lfl/a;->E:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-wide v2, v8, Lfl/a;->Y:J

    invoke-virtual {v15, v0, v2, v3}, Lfl/l;->x(IJ)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v7

    const/4 v1, 0x1

    iget v0, v8, Lfl/a;->U:I

    add-int/lit8 v7, v16, -0x1

    mul-int/2addr v0, v7

    iget v2, v8, Lfl/a;->E:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-wide v2, v8, Lfl/a;->Y:J

    invoke-virtual {v15, v0, v2, v3}, Lfl/l;->x(IJ)V

    invoke-virtual {v8, v12, v11, v9, v10}, Lfl/a;->H(Lfl/l;Lfl/l;Lfl/m;Lfl/m;)V

    iget v0, v8, Lfl/a;->C:I

    move-wide/from16 v2, v17

    invoke-virtual {v12, v0, v2, v3}, Lfl/l;->J(IJ)V

    iget v0, v8, Lfl/a;->e:I

    sub-int/2addr v0, v1

    :goto_1
    if-lez v0, :cond_2

    iget v4, v8, Lfl/a;->U:I

    mul-int/2addr v4, v0

    iget v5, v8, Lfl/a;->E:I

    invoke-virtual {v12, v15, v4, v5}, Lfl/l;->Q(Lfl/l;II)V

    iget v4, v8, Lfl/a;->p:I

    iget v5, v8, Lfl/a;->e:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v0

    iget v6, v8, Lfl/a;->R:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, v8, Lfl/a;->E:I

    sub-int/2addr v5, v1

    iget-wide v6, v8, Lfl/a;->Y:J

    invoke-virtual {v12, v5, v6, v7}, Lfl/l;->x(IJ)V

    iget v5, v8, Lfl/a;->E:I

    sub-int/2addr v5, v1

    invoke-virtual {v11, v4}, Lfl/l;->i(I)J

    move-result-wide v6

    invoke-virtual {v12, v5, v6, v7}, Lfl/l;->J(IJ)V

    iget v5, v8, Lfl/a;->R:I

    if-eq v5, v1, :cond_1

    iget v6, v8, Lfl/a;->E:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v12, v6, v11, v4, v5}, Lfl/l;->d(ILfl/l;II)V

    :cond_1
    invoke-virtual {v8, v13, v12, v9, v10}, Lfl/a;->H(Lfl/l;Lfl/l;Lfl/m;Lfl/m;)V

    iget v4, v8, Lfl/a;->C:I

    invoke-virtual {v13, v4, v2, v3}, Lfl/l;->J(IJ)V

    invoke-virtual {v13, v12}, Lfl/l;->V(Lfl/l;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget v0, v8, Lfl/a;->E:I

    invoke-virtual {v12, v15, v0}, Lfl/l;->q(Lfl/l;I)I

    move-result v0

    return v0
.end method

.method public final z(Lfl/l;ILfl/l;I)V
    .locals 8

    new-instance v6, Lfl/l;

    invoke-direct {v6}, Lfl/l;-><init>()V

    new-instance v7, Lfl/l;

    invoke-direct {v7}, Lfl/l;-><init>()V

    :goto_0
    if-lt p2, p4, :cond_1

    iget v0, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, p4, v0}, Lfl/l;->t(III)I

    move-result p2

    if-ge p2, p4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lfl/a;->o:I

    mul-int/2addr v0, p2

    invoke-virtual {v6, p1, v0}, Lfl/l;->c(Lfl/l;I)V

    shl-int/lit8 v0, p4, 0x1

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v0, p2, p4

    add-int/2addr v0, v4

    iget v1, p0, Lfl/a;->o:I

    mul-int/2addr v0, v1

    invoke-virtual {v7, p1, v0}, Lfl/l;->c(Lfl/l;I)V

    move-object v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lfl/a;->T(Lfl/l;Lfl/l;Lfl/l;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final z0(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 6

    invoke-virtual {p2}, Lfl/l;->m()I

    move-result v0

    iget v1, p0, Lfl/a;->o:I

    iget v2, p0, Lfl/a;->c:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lfl/l;->r(I)V

    iget v1, p0, Lfl/a;->o:I

    invoke-virtual {p1, p2, v1}, Lfl/l;->e(Lfl/l;I)V

    iget v1, p0, Lfl/a;->o:I

    invoke-virtual {p1, v1}, Lfl/l;->r(I)V

    new-instance v1, Lfl/l;

    iget v2, p0, Lfl/a;->o:I

    iget v3, p0, Lfl/a;->c:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-direct {v1, p2, v2}, Lfl/l;-><init>(Lfl/l;I)V

    move v2, v4

    :goto_0
    iget v3, p0, Lfl/a;->g0:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, p1, v1, v3}, Lfl/a;->x(Lfl/l;Lfl/l;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lfl/a;->A:Z

    if-eqz v3, :cond_1

    :goto_1
    iget v3, p0, Lfl/a;->g0:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    invoke-virtual {p0, p1, v1, v3}, Lfl/a;->x(Lfl/l;Lfl/l;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lfl/a;->o:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lfl/l;->w(II)V

    iget v2, p0, Lfl/a;->o:I

    iget v5, p0, Lfl/a;->h:I

    invoke-virtual {p1, v1, v2, v5}, Lfl/l;->L(Lfl/l;II)V

    :goto_2
    iget v2, p0, Lfl/a;->b:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_6

    invoke-virtual {p0, p1, p3, p2}, Lfl/a;->k0(Lfl/l;Lfl/l;Lfl/l;)V

    iget v2, p0, Lfl/a;->o:I

    invoke-virtual {p1, v2}, Lfl/l;->r(I)V

    iget v2, p0, Lfl/a;->o:I

    iget v5, p0, Lfl/a;->c:I

    add-int/2addr v5, v4

    mul-int/2addr v2, v5

    invoke-virtual {v1, p2, v2}, Lfl/l;->c(Lfl/l;I)V

    move v2, v4

    :goto_3
    iget v5, p0, Lfl/a;->g:I

    if-ge v2, v5, :cond_2

    invoke-virtual {p0, p1, v1, p3, v2}, Lfl/a;->F(Lfl/l;Lfl/l;Lfl/l;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iget-boolean v5, p0, Lfl/a;->A:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lfl/a;->o:I

    invoke-virtual {p3, v5}, Lfl/l;->r(I)V

    :goto_4
    iget v5, p0, Lfl/a;->g0:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_3

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, p1, v1, p3, v5}, Lfl/a;->F(Lfl/l;Lfl/l;Lfl/l;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    iget v2, p0, Lfl/a;->o:I

    neg-int v2, v2

    invoke-virtual {p3, v2}, Lfl/l;->r(I)V

    :cond_4
    iget v2, p0, Lfl/a;->h:I

    if-nez v2, :cond_5

    iget v2, p0, Lfl/a;->o:I

    invoke-virtual {p1, p3, v2}, Lfl/l;->e(Lfl/l;I)V

    iget v2, p0, Lfl/a;->o:I

    invoke-virtual {p1, v2}, Lfl/l;->r(I)V

    iget v2, p0, Lfl/a;->g0:I

    :goto_5
    iget v5, p0, Lfl/a;->o:I

    mul-int/2addr v2, v5

    invoke-virtual {p3, v2}, Lfl/l;->r(I)V

    goto :goto_6

    :cond_5
    invoke-virtual {p0, p1, p3, v1, v2}, Lfl/a;->E(Lfl/l;Lfl/l;Lfl/l;I)V

    iget v2, p0, Lfl/a;->h:I

    iget v5, p0, Lfl/a;->o:I

    mul-int/2addr v2, v5

    invoke-virtual {p3, v2}, Lfl/l;->r(I)V

    iget v2, p0, Lfl/a;->o:I

    invoke-virtual {p1, p3, v2}, Lfl/l;->U(Lfl/l;I)V

    iget v2, p0, Lfl/a;->g0:I

    iget v5, p0, Lfl/a;->h:I

    sub-int/2addr v2, v5

    goto :goto_5

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lfl/l;->o()V

    invoke-virtual {p2, v0}, Lfl/l;->a(I)V

    invoke-virtual {p3}, Lfl/l;->o()V

    return-void
.end method
