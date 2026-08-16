.class public Ljl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/B;


# instance fields
.field public final a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljl/b;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 18

    move-object/from16 v0, p1

    check-cast v0, Ljl/h;

    invoke-virtual {v0}, Ljl/e;->d()Ljl/f;

    move-result-object v1

    invoke-virtual {v1}, Ljl/f;->c()I

    move-result v2

    invoke-virtual {v1}, Ljl/f;->f()I

    move-result v6

    invoke-virtual {v1}, Ljl/f;->m()I

    move-result v3

    invoke-virtual {v1}, Ljl/f;->g()I

    move-result v9

    invoke-virtual {v1}, Ljl/f;->i()I

    move-result v7

    invoke-virtual {v1}, Ljl/f;->j()I

    move-result v8

    const/4 v10, 0x1

    new-array v4, v10, [B

    const/4 v5, 0x4

    const/4 v11, 0x0

    aput-byte v5, v4, v11

    invoke-virtual {v0}, Ljl/h;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljl/q;->p([B[B)[B

    move-result-object v12

    const/16 v4, 0x100

    new-array v5, v4, [B

    move-object/from16 v13, p0

    iget-object v14, v13, Ljl/b;->a:Ljava/security/SecureRandom;

    invoke-static {v14, v5}, Ljl/q;->t(Ljava/security/SecureRandom;[B)V

    const/16 v14, 0x20

    new-array v15, v14, [B

    invoke-static {v15, v5}, Ljl/q;->m([B[B)V

    new-array v14, v2, [S

    invoke-virtual {v0}, Ljl/h;->e()[B

    move-result-object v4

    invoke-static {v14, v4, v2, v6}, Ljl/q;->x([S[BII)V

    new-array v4, v2, [S

    invoke-virtual {v0}, Ljl/h;->f()[B

    move-result-object v0

    invoke-static {v4, v0, v2, v6}, Ljl/q;->j([S[BII)V

    new-array v0, v10, [B

    const/16 v16, 0x5

    aput-byte v16, v0, v11

    invoke-static {v0, v15}, Ljl/q;->p([B[B)[B

    move-result-object v0

    array-length v10, v0

    const/16 v17, 0x2

    div-int/lit8 v10, v10, 0x2

    invoke-static {v0, v11, v10}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    new-array v10, v2, [I

    invoke-static {v10, v0}, Ljl/q;->h([I[B)V

    new-array v0, v2, [B

    invoke-static {v0, v10, v2, v3}, Ljl/q;->N([B[III)V

    new-array v3, v2, [S

    invoke-static {v3, v4, v0, v2, v6}, Ljl/q;->I([S[S[BII)V

    new-array v4, v2, [S

    invoke-static {v4, v3}, Ljl/q;->K([S[S)V

    new-array v10, v9, [B

    invoke-static {v10, v4, v2, v6}, Ljl/q;->y([B[SII)V

    new-array v4, v2, [S

    invoke-static {v4, v14, v0, v2, v6}, Ljl/q;->I([S[S[BII)V

    const/16 v0, 0x100

    new-array v0, v0, [B

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Ljl/q;->P([B[S[BIII)V

    const/16 v2, 0x80

    new-array v3, v2, [B

    invoke-static {v3, v0}, Ljl/q;->B([B[B)V

    array-length v0, v12

    div-int/lit8 v0, v0, 0x2

    const/16 v4, 0x20

    add-int v14, v4, v0

    new-array v0, v14, [B

    invoke-static {v15, v11, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v12

    div-int/lit8 v5, v5, 0x2

    invoke-static {v12, v11, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x1

    new-array v5, v4, [B

    aput-byte v17, v5, v11

    invoke-static {v5, v0}, Ljl/q;->p([B[B)[B

    move-result-object v0

    add-int/lit16 v4, v9, 0x80

    array-length v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    new-array v6, v5, [B

    invoke-static {v10, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v11, v6, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v11, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x20

    add-int v14, v0, v5

    new-array v2, v14, [B

    invoke-static {v15, v11, v2, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v11, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    new-array v3, v0, [B

    aput-byte v0, v3, v11

    invoke-static {v3, v2}, Ljl/q;->p([B[B)[B

    move-result-object v0

    invoke-virtual {v1}, Ljl/f;->h()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v11, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    new-instance v1, Lpl/e;

    invoke-direct {v1, v0, v6}, Lpl/e;-><init>([B[B)V

    return-object v1
.end method
