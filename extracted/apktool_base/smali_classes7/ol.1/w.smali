.class public Lol/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/g;


# instance fields
.field public a:Lol/u;

.field public b:Lol/v;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, Lol/u;

    iput-object p1, p0, Lol/w;->a:Lol/u;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lol/w;->c:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    check-cast p2, Lol/u;

    iput-object p2, p0, Lol/w;->a:Lol/u;

    goto :goto_0

    :cond_1
    check-cast p2, Lol/v;

    iput-object p2, p0, Lol/w;->b:Lol/v;

    :goto_0
    return-void
.end method

.method public b([B)[B
    .locals 11

    iget-object v0, p0, Lol/w;->a:Lol/u;

    invoke-virtual {v0}, Lol/s;->d()Lol/t;

    move-result-object v0

    invoke-virtual {v0}, Lol/t;->b()Lol/o;

    move-result-object v0

    iget-object v1, p0, Lol/w;->a:Lol/u;

    iget-object v1, v1, Lol/u;->e:Lol/j;

    iget-object v1, v1, Lol/j;->a:[B

    invoke-virtual {v0, v1}, Lol/o;->g([B)V

    iget v1, v0, Lol/o;->b:I

    new-array v2, v1, [B

    iget-object v3, p0, Lol/w;->c:Ljava/security/SecureRandom;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lol/w;->a:Lol/u;

    iget-object v3, v3, Lol/u;->e:Lol/j;

    iget-object v3, v3, Lol/j;->a:[B

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v1, Lol/b;

    invoke-direct {v1, v0}, Lol/b;-><init>(Lol/o;)V

    iget-object v3, p0, Lol/w;->a:Lol/u;

    iget-object v3, v3, Lol/u;->d:Lol/n;

    iget-object v3, v3, Lol/n;->b:[B

    invoke-virtual {v0, v3, v2, p1}, Lol/o;->e([B[B[B)[B

    move-result-object v2

    iget-object v3, p0, Lol/w;->a:Lol/u;

    iget-object v3, v3, Lol/u;->e:Lol/j;

    iget-object v5, v3, Lol/j;->a:[B

    iget-object v3, v3, Lol/j;->b:[B

    invoke-virtual {v0, v2, v5, v3, p1}, Lol/o;->c([B[B[B[B)Lol/h;

    move-result-object p1

    iget-object v3, p1, Lol/h;->c:[B

    iget-wide v5, p1, Lol/h;->a:J

    iget p1, p1, Lol/h;->b:I

    new-instance v7, Lol/a;

    invoke-direct {v7}, Lol/a;-><init>()V

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lol/a;->o(I)V

    invoke-virtual {v7, v5, v6}, Lol/a;->l(J)V

    invoke-virtual {v7, p1}, Lol/a;->j(I)V

    iget-object v9, p0, Lol/w;->a:Lol/u;

    iget-object v10, v9, Lol/u;->d:Lol/n;

    iget-object v10, v10, Lol/n;->a:[B

    iget-object v9, v9, Lol/u;->e:Lol/j;

    iget-object v9, v9, Lol/j;->a:[B

    invoke-virtual {v1, v3, v10, v9, v7}, Lol/b;->c([B[B[BLol/a;)[Lol/l;

    move-result-object v7

    new-instance v9, Lol/a;

    invoke-direct {v9}, Lol/a;-><init>()V

    invoke-virtual {v9, v8}, Lol/a;->o(I)V

    invoke-virtual {v9, v5, v6}, Lol/a;->l(J)V

    invoke-virtual {v9, p1}, Lol/a;->j(I)V

    iget-object v8, p0, Lol/w;->a:Lol/u;

    iget-object v8, v8, Lol/u;->e:Lol/j;

    iget-object v8, v8, Lol/j;->a:[B

    invoke-virtual {v1, v7, v3, v8, v9}, Lol/b;->b([Lol/l;[B[BLol/a;)[B

    move-result-object v1

    new-instance v3, Lol/a;

    invoke-direct {v3}, Lol/a;-><init>()V

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lol/a;->o(I)V

    new-instance v3, Lol/c;

    iget-object v8, p0, Lol/w;->a:Lol/u;

    invoke-virtual {v8}, Lol/u;->j()[B

    move-result-object v8

    iget-object v9, p0, Lol/w;->a:Lol/u;

    invoke-virtual {v9}, Lol/u;->h()[B

    move-result-object v9

    invoke-direct {v3, v0, v8, v9}, Lol/c;-><init>(Lol/o;[B[B)V

    invoke-virtual {v3, v1, v5, v6, p1}, Lol/c;->a([BJI)[B

    move-result-object p1

    array-length v0, v7

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[B

    aput-object v2, v1, v4

    :goto_1
    array-length v2, v7

    if-eq v4, v2, :cond_1

    add-int/lit8 v2, v4, 0x1

    aget-object v3, v7, v4

    iget-object v4, v3, Lol/l;->b:[B

    iget-object v3, v3, Lol/l;->a:[[B

    invoke-static {v3}, Lorg/bouncycastle/util/a;->E([[B)[B

    move-result-object v3

    invoke-static {v4, v3}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v3

    aput-object v3, v1, v2

    move v4, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Lorg/bouncycastle/util/a;->E([[B)[B

    move-result-object p1

    return-object p1
.end method

.method public d([B[B)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lol/w;->b:Lol/v;

    invoke-virtual {v1}, Lol/s;->d()Lol/t;

    move-result-object v1

    invoke-virtual {v1}, Lol/t;->b()Lol/o;

    move-result-object v1

    iget-object v2, v0, Lol/w;->b:Lol/v;

    invoke-virtual {v2}, Lol/v;->f()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lol/o;->g([B)V

    new-instance v2, Lol/a;

    invoke-direct {v2}, Lol/a;-><init>()V

    new-instance v11, Lol/k;

    iget v4, v1, Lol/o;->b:I

    iget v5, v1, Lol/o;->j:I

    iget v6, v1, Lol/o;->i:I

    iget v7, v1, Lol/o;->h:I

    iget v8, v1, Lol/o;->l:I

    iget v9, v1, Lol/o;->e:I

    move-object v3, v11

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lol/k;-><init>(IIIIII[B)V

    invoke-virtual {v11}, Lol/k;->a()[B

    move-result-object v3

    invoke-virtual {v11}, Lol/k;->b()[Lol/l;

    move-result-object v4

    invoke-virtual {v11}, Lol/k;->c()[Lol/m;

    move-result-object v14

    iget-object v5, v0, Lol/w;->b:Lol/v;

    invoke-virtual {v5}, Lol/v;->f()[B

    move-result-object v5

    iget-object v6, v0, Lol/w;->b:Lol/v;

    invoke-virtual {v6}, Lol/v;->e()[B

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v1, v3, v5, v6, v7}, Lol/o;->c([B[B[B[B)Lol/h;

    move-result-object v3

    iget-object v5, v3, Lol/h;->c:[B

    iget-wide v6, v3, Lol/h;->a:J

    iget v3, v3, Lol/h;->b:I

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Lol/a;->o(I)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lol/a;->k(I)V

    invoke-virtual {v2, v6, v7}, Lol/a;->l(J)V

    invoke-virtual {v2, v3}, Lol/a;->j(I)V

    new-instance v9, Lol/b;

    invoke-direct {v9, v1}, Lol/b;-><init>(Lol/o;)V

    iget-object v10, v0, Lol/w;->b:Lol/v;

    invoke-virtual {v10}, Lol/v;->f()[B

    move-result-object v10

    invoke-virtual {v9, v4, v5, v10, v2}, Lol/b;->b([Lol/l;[B[BLol/a;)[B

    move-result-object v13

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lol/a;->o(I)V

    invoke-virtual {v2, v8}, Lol/a;->k(I)V

    invoke-virtual {v2, v6, v7}, Lol/a;->l(J)V

    invoke-virtual {v2, v3}, Lol/a;->j(I)V

    new-instance v12, Lol/c;

    iget-object v2, v0, Lol/w;->b:Lol/v;

    invoke-virtual {v2}, Lol/v;->f()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4, v2}, Lol/c;-><init>(Lol/o;[B[B)V

    iget-object v1, v0, Lol/w;->b:Lol/v;

    invoke-virtual {v1}, Lol/v;->f()[B

    move-result-object v15

    iget-object v1, v0, Lol/w;->b:Lol/v;

    invoke-virtual {v1}, Lol/v;->e()[B

    move-result-object v19

    move-wide/from16 v16, v6

    move/from16 v18, v3

    invoke-virtual/range {v12 .. v19}, Lol/c;->c([B[Lol/m;[BJI[B)Z

    move-result v1

    return v1
.end method
