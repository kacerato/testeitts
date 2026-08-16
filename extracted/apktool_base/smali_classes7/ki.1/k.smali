.class public Lki/k;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Lki/r;


# instance fields
.field public b:Ljk/e;

.field public c:[B

.field public d:Loh/x;


# direct methods
.method public constructor <init>(Ljk/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lki/k;-><init>(Ljk/e;[B)V

    return-void
.end method

.method public constructor <init>(Ljk/e;[B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lki/k;->d:Loh/x;

    iput-object p1, p0, Lki/k;->b:Ljk/e;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lki/k;->c:[B

    invoke-virtual {p0}, Lki/k;->x()V

    return-void
.end method

.method public constructor <init>(Lki/p;Ljava/math/BigInteger;Ljava/math/BigInteger;Loh/E;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 3
    invoke-direct/range {p0 .. p0}, Loh/v;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lki/k;->d:Loh/x;

    invoke-virtual/range {p1 .. p1}, Lki/p;->u()Loh/x;

    move-result-object v2

    iput-object v2, v0, Lki/k;->d:Loh/x;

    sget-object v3, Lki/r;->x5:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lki/p;->x()Loh/B;

    move-result-object v2

    check-cast v2, Loh/s;

    invoke-virtual {v2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-direct {v8, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljk/e$f;

    move-object v6, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v2, v0, Lki/k;->b:Ljk/e;

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lki/k;->d:Loh/x;

    sget-object v6, Lki/r;->y5:Loh/x;

    invoke-virtual {v2, v6}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lki/p;->x()Loh/B;

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    invoke-virtual {v2, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/s;

    invoke-virtual {v6}, Loh/s;->O()I

    move-result v8

    invoke-virtual {v2, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/x;

    sget-object v7, Lki/r;->A5:Loh/x;

    invoke-virtual {v6, v7}, Loh/B;->A(Loh/B;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    invoke-virtual {v2}, Loh/s;->O()I

    move-result v2

    move v9, v2

    move v10, v4

    move v11, v10

    goto :goto_1

    :cond_1
    sget-object v7, Lki/r;->B5:Loh/x;

    invoke-virtual {v6, v7}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    invoke-virtual {v2, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v6

    invoke-virtual {v6}, Loh/s;->O()I

    move-result v6

    invoke-virtual {v2, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v7

    invoke-static {v7}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v7

    invoke-virtual {v7}, Loh/s;->O()I

    move-result v7

    invoke-virtual {v2, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    invoke-virtual {v2}, Loh/s;->O()I

    move-result v2

    move v11, v2

    move v9, v6

    move v10, v7

    :goto_1
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-direct {v12, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-direct {v13, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljk/e$e;

    move-object v7, v2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v7 .. v15}, Ljk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Loh/E;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    invoke-virtual {v1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/r0;

    invoke-virtual {v1}, Loh/c;->F()[B

    move-result-object v1

    iput-object v1, v0, Lki/k;->c:[B

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of EC basis is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of ECCurve is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lki/k;->d:Loh/x;

    sget-object v2, Lki/r;->x5:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lki/o;

    iget-object v2, p0, Lki/k;->b:Ljk/e;

    invoke-virtual {v2}, Ljk/e;->p()Ljk/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lki/o;-><init>(Ljk/f;)V

    invoke-virtual {v1}, Lki/o;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Lki/o;

    iget-object v2, p0, Lki/k;->b:Ljk/e;

    invoke-virtual {v2}, Ljk/e;->r()Ljk/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lki/o;-><init>(Ljk/f;)V

    :goto_0
    invoke-virtual {v1}, Lki/o;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lki/k;->d:Loh/x;

    sget-object v2, Lki/r;->y5:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lki/o;

    iget-object v2, p0, Lki/k;->b:Ljk/e;

    invoke-virtual {v2}, Ljk/e;->p()Ljk/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lki/o;-><init>(Ljk/f;)V

    invoke-virtual {v1}, Lki/o;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Lki/o;

    iget-object v2, p0, Lki/k;->b:Ljk/e;

    invoke-virtual {v2}, Ljk/e;->r()Ljk/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lki/o;-><init>(Ljk/f;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lki/k;->c:[B

    if-eqz v1, :cond_2

    new-instance v1, Loh/r0;

    iget-object v2, p0, Lki/k;->c:[B

    invoke-direct {v1, v2}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljk/e;
    .locals 1

    iget-object v0, p0, Lki/k;->b:Ljk/e;

    return-object v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, Lki/k;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lki/k;->b:Ljk/e;

    invoke-static {v0}, Ljk/c;->o(Ljk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lki/r;->x5:Loh/x;

    :goto_0
    iput-object v0, p0, Lki/k;->d:Loh/x;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lki/k;->b:Ljk/e;

    invoke-static {v0}, Ljk/c;->m(Ljk/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lki/r;->y5:Loh/x;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
