.class public Lbl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x6d9

.field public static final B:I = 0x20

.field public static final C:I = 0x40

.field public static final D:I = 0x20

.field public static final E:I = 0x40

.field public static final F:I = 0x140

.field public static final G:I = 0x1a0

.field public static final w:I = 0x100

.field public static final x:I = 0x7fe001

.field public static final y:I = 0x3802001

.field public static final z:I = 0xd


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:LIi/Q;

.field public final c:LIi/Q;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Lbl/q;


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;Z)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/Q;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    iput-object v0, p0, Lbl/a;->b:LIi/Q;

    new-instance v0, LIi/Q;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, LIi/Q;-><init>(I)V

    iput-object v0, p0, Lbl/a;->c:LIi/Q;

    iput p1, p0, Lbl/a;->h:I

    const/16 v0, 0x20

    const/high16 v2, 0x20000

    const/4 v3, 0x4

    const/16 v4, 0x60

    const/high16 v5, 0x80000

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v7, 0x3

    const/16 v8, 0x280

    const v9, 0x3ff00

    const/4 v10, 0x5

    if-eq p1, v7, :cond_1

    if-ne p1, v10, :cond_0

    const/16 p1, 0x8

    iput p1, p0, Lbl/a;->i:I

    const/4 p1, 0x7

    iput p1, p0, Lbl/a;->j:I

    iput v6, p0, Lbl/a;->k:I

    const/16 p1, 0x3c

    iput p1, p0, Lbl/a;->l:I

    const/16 p1, 0x78

    iput p1, p0, Lbl/a;->m:I

    iput v5, p0, Lbl/a;->n:I

    iput v9, p0, Lbl/a;->o:I

    const/16 p1, 0x4b

    iput p1, p0, Lbl/a;->p:I

    iput v8, p0, Lbl/a;->e:I

    iput v1, p0, Lbl/a;->f:I

    iput v4, p0, Lbl/a;->g:I

    const/16 p1, 0x40

    :goto_0
    iput p1, p0, Lbl/a;->q:I

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The mode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is not supported by Crystals Dilithium!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p1, 0x6

    iput p1, p0, Lbl/a;->i:I

    iput v10, p0, Lbl/a;->j:I

    iput v3, p0, Lbl/a;->k:I

    const/16 p1, 0x31

    iput p1, p0, Lbl/a;->l:I

    const/16 p1, 0xc4

    iput p1, p0, Lbl/a;->m:I

    iput v5, p0, Lbl/a;->n:I

    iput v9, p0, Lbl/a;->o:I

    const/16 p1, 0x37

    iput p1, p0, Lbl/a;->p:I

    iput v8, p0, Lbl/a;->e:I

    iput v1, p0, Lbl/a;->f:I

    iput v1, p0, Lbl/a;->g:I

    const/16 p1, 0x30

    goto :goto_0

    :cond_2
    iput v3, p0, Lbl/a;->i:I

    iput v3, p0, Lbl/a;->j:I

    iput v6, p0, Lbl/a;->k:I

    const/16 p1, 0x27

    iput p1, p0, Lbl/a;->l:I

    const/16 p1, 0x4e

    iput p1, p0, Lbl/a;->m:I

    iput v2, p0, Lbl/a;->n:I

    const p1, 0x17400

    iput p1, p0, Lbl/a;->o:I

    const/16 p1, 0x50

    iput p1, p0, Lbl/a;->p:I

    const/16 p1, 0x240

    iput p1, p0, Lbl/a;->e:I

    const/16 p1, 0xc0

    iput p1, p0, Lbl/a;->f:I

    iput v4, p0, Lbl/a;->g:I

    iput v0, p0, Lbl/a;->q:I

    :goto_1
    if-eqz p3, :cond_3

    new-instance p1, Lbl/q$a;

    invoke-direct {p1}, Lbl/q$a;-><init>()V

    :goto_2
    iput-object p1, p0, Lbl/a;->v:Lbl/q;

    goto :goto_3

    :cond_3
    new-instance p1, Lbl/q$b;

    invoke-direct {p1}, Lbl/q$b;-><init>()V

    goto :goto_2

    :goto_3
    iput-object p2, p0, Lbl/a;->a:Ljava/security/SecureRandom;

    iget p1, p0, Lbl/a;->p:I

    iget p2, p0, Lbl/a;->i:I

    add-int/2addr p1, p2

    iput p1, p0, Lbl/a;->d:I

    mul-int/lit16 p3, p2, 0x140

    add-int/2addr p3, v0

    iput p3, p0, Lbl/a;->r:I

    iget p3, p0, Lbl/a;->j:I

    iget v0, p0, Lbl/a;->g:I

    mul-int v1, p3, v0

    add-int/2addr v1, v4

    mul-int/2addr v0, p2

    add-int/2addr v1, v0

    mul-int/lit16 p2, p2, 0x1a0

    add-int/2addr v1, p2

    iput v1, p0, Lbl/a;->s:I

    iget p2, p0, Lbl/a;->q:I

    iget v0, p0, Lbl/a;->e:I

    mul-int/2addr p3, v0

    add-int/2addr p2, p3

    add-int/2addr p2, p1

    iput p2, p0, Lbl/a;->t:I

    iget p1, p0, Lbl/a;->n:I

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lbl/a;->v:Lbl/q;

    iget p1, p1, Lbl/q;->b:I

    add-int/lit16 p2, p1, 0x23f

    :goto_4
    div-int/2addr p2, p1

    iput p2, p0, Lbl/a;->u:I

    goto :goto_5

    :cond_4
    if-ne p1, v5, :cond_5

    iget-object p1, p0, Lbl/a;->v:Lbl/q;

    iget p1, p1, Lbl/q;->b:I

    add-int/lit16 p2, p1, 0x27f

    goto :goto_4

    :goto_5
    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Wrong Dilithium Gamma1!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lbl/q;
    .locals 1

    iget-object v0, p0, Lbl/a;->v:Lbl/q;

    return-object v0
.end method

.method public b()[[B
    .locals 23

    move-object/from16 v7, p0

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/16 v4, 0x40

    new-array v5, v4, [B

    new-array v6, v0, [B

    new-array v8, v4, [B

    new-array v9, v0, [B

    new-instance v10, Lbl/n;

    invoke-direct {v10, v7}, Lbl/n;-><init>(Lbl/a;)V

    new-instance v11, Lbl/m;

    invoke-direct {v11, v7}, Lbl/m;-><init>(Lbl/a;)V

    new-instance v12, Lbl/l;

    invoke-direct {v12, v7}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v13, Lbl/l;

    invoke-direct {v13, v7}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v14, Lbl/l;

    invoke-direct {v14, v7}, Lbl/l;-><init>(Lbl/a;)V

    iget-object v15, v7, Lbl/a;->a:Ljava/security/SecureRandom;

    invoke-virtual {v15, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v15, v7, Lbl/a;->c:LIi/Q;

    const/4 v4, 0x0

    invoke-virtual {v15, v1, v4, v0}, LIi/v;->update([BII)V

    iget-object v1, v7, Lbl/a;->c:LIi/Q;

    invoke-virtual {v1, v3, v4, v2}, LIi/Q;->e([BII)I

    invoke-static {v3, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x40

    invoke-static {v3, v0, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x60

    invoke-static {v3, v1, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v10, v6}, Lbl/n;->b([B)V

    invoke-virtual {v11, v8, v4}, Lbl/m;->k([BS)V

    iget v1, v7, Lbl/a;->j:I

    int-to-short v1, v1

    invoke-virtual {v12, v8, v1}, Lbl/l;->q([BS)V

    new-instance v1, Lbl/m;

    invoke-direct {v1, v7}, Lbl/m;-><init>(Lbl/a;)V

    invoke-virtual {v11, v1}, Lbl/m;->c(Lbl/m;)V

    invoke-virtual {v1}, Lbl/m;->h()V

    invoke-virtual {v10, v13, v1}, Lbl/n;->c(Lbl/l;Lbl/m;)V

    invoke-virtual {v13}, Lbl/l;->l()V

    invoke-virtual {v13}, Lbl/l;->f()V

    invoke-virtual {v13, v12}, Lbl/l;->a(Lbl/l;)V

    invoke-virtual {v13}, Lbl/l;->c()V

    invoke-virtual {v13, v14}, Lbl/l;->k(Lbl/l;)V

    invoke-static {v13, v7}, Lbl/j;->a(Lbl/l;Lbl/a;)[B

    move-result-object v8

    iget-object v1, v7, Lbl/a;->c:LIi/Q;

    invoke-virtual {v1, v6, v4, v0}, LIi/v;->update([BII)V

    iget-object v0, v7, Lbl/a;->c:LIi/Q;

    array-length v1, v8

    invoke-virtual {v0, v8, v4, v1}, LIi/v;->update([BII)V

    iget-object v0, v7, Lbl/a;->c:LIi/Q;

    const/16 v1, 0x40

    invoke-virtual {v0, v5, v4, v1}, LIi/Q;->e([BII)I

    move-object v0, v6

    move-object v1, v5

    move-object v2, v9

    move-object v3, v14

    move v9, v4

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lbl/j;->b([B[B[BLbl/l;Lbl/m;Lbl/l;Lbl/a;)[[B

    move-result-object v0

    aget-object v16, v0, v9

    const/4 v1, 0x1

    aget-object v17, v0, v1

    const/4 v1, 0x2

    aget-object v18, v0, v1

    const/4 v1, 0x3

    aget-object v19, v0, v1

    const/4 v1, 0x4

    aget-object v20, v0, v1

    const/4 v1, 0x5

    aget-object v21, v0, v1

    move-object/from16 v22, v8

    filled-new-array/range {v16 .. v22}, [[B

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbl/a;->t:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbl/a;->r:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lbl/a;->s:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lbl/a;->m:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lbl/a;->q:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lbl/a;->k:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lbl/a;->n:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lbl/a;->o:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lbl/a;->i:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lbl/a;->j:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lbl/a;->h:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lbl/a;->p:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lbl/a;->g:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lbl/a;->d:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lbl/a;->f:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lbl/a;->e:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lbl/a;->l:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lbl/a;->u:I

    return v0
.end method

.method public u()LIi/Q;
    .locals 1

    iget-object v0, p0, Lbl/a;->b:LIi/Q;

    return-object v0
.end method

.method public v()LIi/Q;
    .locals 1

    iget-object v0, p0, Lbl/a;->c:LIi/Q;

    return-object v0
.end method

.method public w([BI[B[B[B[B[B[B)[B
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lbl/a;->y([BI[B[B[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public x([B[BI[B[B)Z
    .locals 7

    array-length v4, p1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lbl/a;->z([BI[BI[B[B)Z

    move-result p1

    return p1
.end method

.method public y([BI[B[B[B[B[B[B)[B
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    iget v0, v7, Lbl/a;->t:I

    add-int/2addr v0, v8

    new-array v9, v0, [B

    const/16 v10, 0x40

    new-array v11, v10, [B

    new-array v12, v10, [B

    new-instance v13, Lbl/m;

    invoke-direct {v13, v7}, Lbl/m;-><init>(Lbl/a;)V

    new-instance v14, Lbl/m;

    invoke-direct {v14, v7}, Lbl/m;-><init>(Lbl/a;)V

    new-instance v15, Lbl/m;

    invoke-direct {v15, v7}, Lbl/m;-><init>(Lbl/a;)V

    new-instance v6, Lbl/l;

    invoke-direct {v6, v7}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v5, Lbl/l;

    invoke-direct {v5, v7}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v4, Lbl/l;

    invoke-direct {v4, v7}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v3, Lbl/l;

    invoke-direct {v3, v7}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v2, Lbl/l;

    invoke-direct {v2, v7}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v1, Lbl/k;

    invoke-direct {v1, v7}, Lbl/k;-><init>(Lbl/a;)V

    new-instance v0, Lbl/n;

    invoke-direct {v0, v7}, Lbl/n;-><init>(Lbl/a;)V

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v17, v1

    move-object v1, v13

    move-object/from16 v18, v2

    move-object v2, v5

    move-object/from16 v19, v3

    move-object/from16 v3, p6

    move-object/from16 v20, v4

    move-object/from16 v4, p7

    move-object/from16 p6, v5

    move-object/from16 v5, p8

    move-object/from16 p7, v6

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lbl/j;->e(Lbl/l;Lbl/m;Lbl/l;[B[B[BLbl/a;)V

    iget-object v0, v7, Lbl/a;->c:LIi/Q;

    const/4 v1, 0x0

    move-object/from16 v2, p5

    invoke-virtual {v0, v2, v1, v10}, LIi/v;->update([BII)V

    iget-object v0, v7, Lbl/a;->c:LIi/Q;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1, v8}, LIi/v;->update([BII)V

    iget-object v0, v7, Lbl/a;->c:LIi/Q;

    invoke-virtual {v0, v11, v1, v10}, LIi/Q;->e([BII)I

    const/16 v0, 0x20

    new-array v2, v0, [B

    iget-object v3, v7, Lbl/a;->a:Ljava/security/SecureRandom;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    const/16 v3, 0x80

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lorg/bouncycastle/util/a;->Q([BI)[B

    move-result-object v4

    invoke-static {v2, v1, v4, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v1, v4, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v7, Lbl/a;->c:LIi/Q;

    invoke-virtual {v2, v4, v1, v3}, LIi/v;->update([BII)V

    iget-object v2, v7, Lbl/a;->c:LIi/Q;

    invoke-virtual {v2, v12, v1, v10}, LIi/Q;->e([BII)I

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    invoke-virtual {v3, v2}, Lbl/n;->b([B)V

    invoke-virtual {v13}, Lbl/m;->h()V

    invoke-virtual/range {p6 .. p6}, Lbl/l;->j()V

    invoke-virtual/range {p7 .. p7}, Lbl/l;->j()V

    move v2, v1

    move v4, v2

    :goto_0
    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    int-to-short v5, v5

    invoke-virtual {v14, v12, v4}, Lbl/m;->l([BS)V

    invoke-virtual {v14, v15}, Lbl/m;->c(Lbl/m;)V

    invoke-virtual {v15}, Lbl/m;->h()V

    move-object/from16 v4, v20

    invoke-virtual {v3, v4, v15}, Lbl/n;->c(Lbl/l;Lbl/m;)V

    invoke-virtual {v4}, Lbl/l;->l()V

    invoke-virtual {v4}, Lbl/l;->f()V

    invoke-virtual {v4}, Lbl/l;->c()V

    move-object/from16 v6, v19

    invoke-virtual {v4, v6}, Lbl/l;->d(Lbl/l;)V

    invoke-virtual {v4}, Lbl/l;->h()[B

    move-result-object v8

    iget v0, v7, Lbl/a;->i:I

    iget v10, v7, Lbl/a;->f:I

    mul-int/2addr v0, v10

    invoke-static {v8, v1, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, Lbl/a;->c:LIi/Q;

    const/16 v8, 0x40

    invoke-virtual {v0, v11, v1, v8}, LIi/v;->update([BII)V

    iget-object v0, v7, Lbl/a;->c:LIi/Q;

    iget v10, v7, Lbl/a;->i:I

    iget v8, v7, Lbl/a;->f:I

    mul-int/2addr v10, v8

    invoke-virtual {v0, v9, v1, v10}, LIi/v;->update([BII)V

    iget-object v0, v7, Lbl/a;->c:LIi/Q;

    iget v8, v7, Lbl/a;->q:I

    invoke-virtual {v0, v9, v1, v8}, LIi/Q;->e([BII)I

    const/16 v0, 0x20

    invoke-static {v9, v1, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v8

    move-object/from16 v10, v17

    invoke-virtual {v10, v8}, Lbl/k;->b([B)V

    invoke-virtual {v10}, Lbl/k;->n()V

    invoke-virtual {v15, v10, v13}, Lbl/m;->g(Lbl/k;Lbl/m;)V

    invoke-virtual {v15}, Lbl/m;->f()V

    invoke-virtual {v15, v14}, Lbl/m;->a(Lbl/m;)V

    invoke-virtual {v15}, Lbl/m;->i()V

    iget v8, v7, Lbl/a;->n:I

    iget v0, v7, Lbl/a;->m:I

    sub-int/2addr v8, v0

    invoke-virtual {v15, v8}, Lbl/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v17, p6

    move-object/from16 v8, v18

    goto :goto_1

    :cond_1
    move-object/from16 v0, p6

    move-object/from16 v8, v18

    invoke-virtual {v8, v10, v0}, Lbl/l;->i(Lbl/k;Lbl/l;)V

    invoke-virtual {v8}, Lbl/l;->f()V

    invoke-virtual {v6, v8}, Lbl/l;->o(Lbl/l;)V

    invoke-virtual {v6}, Lbl/l;->l()V

    iget v1, v7, Lbl/a;->o:I

    move-object/from16 v17, v0

    iget v0, v7, Lbl/a;->m:I

    sub-int/2addr v1, v0

    invoke-virtual {v6, v1}, Lbl/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p7

    invoke-virtual {v8, v10, v0}, Lbl/l;->i(Lbl/k;Lbl/l;)V

    invoke-virtual {v8}, Lbl/l;->f()V

    invoke-virtual {v8}, Lbl/l;->l()V

    iget v1, v7, Lbl/a;->o:I

    invoke-virtual {v8, v1}, Lbl/l;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 p7, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v8}, Lbl/l;->a(Lbl/l;)V

    invoke-virtual {v6}, Lbl/l;->c()V

    invoke-virtual {v8, v6, v4}, Lbl/l;->g(Lbl/l;Lbl/l;)I

    move-result v1

    move-object/from16 p7, v0

    iget v0, v7, Lbl/a;->p:I

    if-le v1, v0, :cond_4

    :goto_1
    move-object/from16 v20, v4

    move v4, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v8

    move-object/from16 p6, v17

    const/16 v0, 0x20

    const/4 v1, 0x0

    move-object/from16 v17, v10

    const/16 v10, 0x40

    goto/16 :goto_0

    :cond_4
    invoke-static {v9, v15, v8, v7}, Lbl/j;->c([BLbl/m;Lbl/l;Lbl/a;)[B

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public z([BI[BI[B[B)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const/16 v4, 0x40

    new-array v5, v4, [B

    iget v6, v0, Lbl/a;->q:I

    new-array v6, v6, [B

    new-instance v7, Lbl/k;

    invoke-direct {v7, v0}, Lbl/k;-><init>(Lbl/a;)V

    new-instance v8, Lbl/n;

    invoke-direct {v8, v0}, Lbl/n;-><init>(Lbl/a;)V

    new-instance v9, Lbl/m;

    invoke-direct {v9, v0}, Lbl/m;-><init>(Lbl/a;)V

    new-instance v10, Lbl/l;

    invoke-direct {v10, v0}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v11, Lbl/l;

    invoke-direct {v11, v0}, Lbl/l;-><init>(Lbl/a;)V

    new-instance v12, Lbl/l;

    invoke-direct {v12, v0}, Lbl/l;-><init>(Lbl/a;)V

    iget v13, v0, Lbl/a;->t:I

    const/4 v14, 0x0

    move/from16 v15, p2

    if-eq v15, v13, :cond_0

    return v14

    :cond_0
    invoke-static {v10, v3, v0}, Lbl/j;->d(Lbl/l;[BLbl/a;)Lbl/l;

    move-result-object v10

    invoke-static {v9, v12, v1, v0}, Lbl/j;->f(Lbl/m;Lbl/l;[BLbl/a;)Z

    move-result v13

    if-nez v13, :cond_1

    return v14

    :cond_1
    iget v13, v0, Lbl/a;->q:I

    invoke-static {v1, v14, v13}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lbl/a;->i()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lbl/a;->f()I

    move-result v15

    sub-int/2addr v13, v15

    invoke-virtual {v9, v13}, Lbl/m;->b(I)Z

    move-result v13

    if-eqz v13, :cond_2

    return v14

    :cond_2
    iget-object v13, v0, Lbl/a;->c:LIi/Q;

    array-length v15, v2

    invoke-virtual {v13, v2, v14, v15}, LIi/v;->update([BII)V

    iget-object v13, v0, Lbl/a;->c:LIi/Q;

    array-length v15, v3

    invoke-virtual {v13, v3, v14, v15}, LIi/v;->update([BII)V

    iget-object v3, v0, Lbl/a;->c:LIi/Q;

    invoke-virtual {v3, v5, v14, v4}, LIi/Q;->e([BII)I

    iget-object v3, v0, Lbl/a;->c:LIi/Q;

    invoke-virtual {v3, v5, v14, v4}, LIi/v;->update([BII)V

    iget-object v3, v0, Lbl/a;->c:LIi/Q;

    move-object/from16 v13, p3

    move/from16 v15, p4

    invoke-virtual {v3, v13, v14, v15}, LIi/v;->update([BII)V

    iget-object v3, v0, Lbl/a;->c:LIi/Q;

    invoke-virtual {v3, v5, v14}, LIi/Q;->c([BI)I

    const/16 v3, 0x20

    invoke-static {v1, v14, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lbl/k;->b([B)V

    invoke-virtual {v8, v2}, Lbl/n;->b([B)V

    invoke-virtual {v9}, Lbl/m;->h()V

    invoke-virtual {v8, v11, v9}, Lbl/n;->c(Lbl/l;Lbl/m;)V

    invoke-virtual {v7}, Lbl/k;->n()V

    invoke-virtual {v10}, Lbl/l;->n()V

    invoke-virtual {v10}, Lbl/l;->j()V

    invoke-virtual {v10, v7, v10}, Lbl/l;->i(Lbl/k;Lbl/l;)V

    invoke-virtual {v11, v10}, Lbl/l;->o(Lbl/l;)V

    invoke-virtual {v11}, Lbl/l;->l()V

    invoke-virtual {v11}, Lbl/l;->f()V

    invoke-virtual {v11}, Lbl/l;->c()V

    invoke-virtual {v11, v11, v12}, Lbl/l;->r(Lbl/l;Lbl/l;)V

    invoke-virtual {v11}, Lbl/l;->h()[B

    move-result-object v2

    new-instance v3, LIi/Q;

    const/16 v7, 0x100

    invoke-direct {v3, v7}, LIi/Q;-><init>(I)V

    invoke-virtual {v3, v5, v14, v4}, LIi/v;->update([BII)V

    iget v4, v0, Lbl/a;->i:I

    iget v5, v0, Lbl/a;->f:I

    mul-int/2addr v4, v5

    invoke-virtual {v3, v2, v14, v4}, LIi/v;->update([BII)V

    iget v2, v0, Lbl/a;->q:I

    invoke-virtual {v3, v6, v14, v2}, LIi/Q;->e([BII)I

    move v2, v14

    :goto_0
    iget v3, v0, Lbl/a;->q:I

    if-ge v2, v3, :cond_4

    aget-byte v3, v1, v2

    aget-byte v4, v6, v2

    if-eq v3, v4, :cond_3

    return v14

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    return v1
.end method
