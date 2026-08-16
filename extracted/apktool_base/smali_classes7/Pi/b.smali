.class public LPi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LBi/d;

.field public b:LBi/e;

.field public final c:S

.field public d:LPi/c;

.field public e:B

.field public f:I

.field public g:I

.field public h:LXi/G;


# direct methods
.method public constructor <init>(S)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, LPi/b;->c:S

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v2, 0x21

    const/16 v3, 0x40

    const/4 v4, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, LPi/c;

    invoke-direct {p1, v4}, LPi/c;-><init>(S)V

    iput-object p1, p0, LPi/b;->d:LPi/c;

    new-instance v6, Lmk/Q;

    invoke-direct {v6}, Lmk/Q;-><init>()V

    new-instance p1, LXi/G;

    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    const/16 v4, 0x10

    invoke-direct {v0, v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v5, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v0, v2}, Ljk/e;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v7

    invoke-virtual {v6}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v9

    const-string v0, "d09e8800291cb85396cc6717393284aaa0da64ba"

    invoke-static {v0}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v10

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, LPi/b;->h:LXi/G;

    new-instance p1, LCi/f;

    invoke-direct {p1}, LCi/f;-><init>()V

    iput-object p1, p0, LPi/b;->b:LBi/e;

    iput-byte v1, p0, LPi/b;->e:B

    const/16 p1, 0x42

    iput p1, p0, LPi/b;->f:I

    iput v3, p0, LPi/b;->g:I

    new-instance p1, LOi/p;

    invoke-direct {p1}, LOi/p;-><init>()V

    iput-object p1, p0, LPi/b;->a:LBi/d;

    new-instance v0, LXi/I;

    iget-object v1, p0, LPi/b;->h:LXi/G;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    :goto_0
    invoke-interface {p1, v0}, LBi/d;->b(LBi/G;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance p1, LPi/c;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, LPi/c;-><init>(S)V

    iput-object p1, p0, LPi/b;->d:LPi/c;

    new-instance v4, Lmk/M;

    invoke-direct {v4}, Lmk/M;-><init>()V

    new-instance p1, LXi/G;

    new-instance v0, Ljava/math/BigInteger;

    const-string v3, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-static {v3}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-static {v5}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4, v0, v3}, Ljk/e;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v5

    invoke-virtual {v4}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v7

    const-string v0, "a335926aa319a27a1d00896a6773a4827acdac73"

    invoke-static {v0}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, LPi/b;->h:LXi/G;

    new-instance p1, LCi/f;

    invoke-direct {p1}, LCi/f;-><init>()V

    iput-object p1, p0, LPi/b;->b:LBi/e;

    iput-byte v2, p0, LPi/b;->e:B

    const/16 p1, 0x30

    iput p1, p0, LPi/b;->f:I

    iput p1, p0, LPi/b;->g:I

    new-instance p1, LOi/p;

    invoke-direct {p1}, LOi/p;-><init>()V

    iput-object p1, p0, LPi/b;->a:LBi/d;

    new-instance v0, LXi/I;

    iget-object v1, p0, LPi/b;->h:LXi/G;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, LPi/c;

    invoke-direct {p1, v1}, LPi/c;-><init>(S)V

    iput-object p1, p0, LPi/b;->d:LPi/c;

    new-instance v4, Lmk/I;

    invoke-direct {v4}, Lmk/I;-><init>()V

    new-instance p1, LXi/G;

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-static {v5}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-static {v6}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4, v3, v5}, Ljk/e;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v5

    invoke-virtual {v4}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v7

    const-string v1, "c49d360886e704936a6678e1139d26b7819f7e90"

    invoke-static {v1}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, LPi/b;->h:LXi/G;

    new-instance p1, LCi/f;

    invoke-direct {p1}, LCi/f;-><init>()V

    iput-object p1, p0, LPi/b;->b:LBi/e;

    iput-byte v2, p0, LPi/b;->e:B

    iput v0, p0, LPi/b;->f:I

    iput v0, p0, LPi/b;->g:I

    new-instance p1, LOi/p;

    invoke-direct {p1}, LOi/p;-><init>()V

    iput-object p1, p0, LPi/b;->a:LBi/d;

    new-instance v0, LXi/I;

    iget-object v1, p0, LPi/b;->h:LXi/G;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    goto/16 :goto_0

    :cond_0
    new-instance p1, LPi/c;

    invoke-direct {p1, v4}, LPi/c;-><init>(S)V

    iput-object p1, p0, LPi/b;->d:LPi/c;

    new-instance p1, LCi/p;

    invoke-direct {p1}, LCi/p;-><init>()V

    iput-object p1, p0, LPi/b;->b:LBi/e;

    iput v3, p0, LPi/b;->g:I

    const/16 p1, 0x38

    iput p1, p0, LPi/b;->f:I

    new-instance p1, LOi/Q;

    invoke-direct {p1}, LOi/Q;-><init>()V

    iput-object p1, p0, LPi/b;->a:LBi/d;

    new-instance v0, LXi/P0;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1}, LXi/P0;-><init>(Ljava/security/SecureRandom;)V

    goto/16 :goto_0

    :cond_1
    new-instance p1, LPi/c;

    invoke-direct {p1, v1}, LPi/c;-><init>(S)V

    iput-object p1, p0, LPi/b;->d:LPi/c;

    new-instance p1, LCi/p;

    invoke-direct {p1}, LCi/p;-><init>()V

    iput-object p1, p0, LPi/b;->b:LBi/e;

    iput v0, p0, LPi/b;->g:I

    iput v0, p0, LPi/b;->f:I

    new-instance p1, LOi/P;

    invoke-direct {p1}, LOi/P;-><init>()V

    iput-object p1, p0, LPi/b;->a:LBi/d;

    new-instance v0, LXi/M0;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1}, LXi/M0;-><init>(Ljava/security/SecureRandom;)V

    goto/16 :goto_0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a([BLBi/c;LXi/c;)[B
    .locals 3

    invoke-virtual {p0, p1}, LPi/b;->f([B)LXi/c;

    move-result-object v0

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-virtual {p2}, LBi/c;->a()LXi/c;

    move-result-object v2

    invoke-interface {v1, v2}, LBi/e;->a(LBi/k;)V

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-interface {v1, v0}, LBi/e;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-interface {v1}, LBi/e;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LPi/b;->n([BI)[B

    move-result-object v0

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-virtual {p2}, LBi/c;->a()LXi/c;

    move-result-object v2

    invoke-interface {v1, v2}, LBi/e;->a(LBi/k;)V

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-interface {v1, p3}, LBi/e;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, LPi/b;->b:LBi/e;

    invoke-interface {v2}, LBi/e;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, LPi/b;->n([BI)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    invoke-virtual {p2}, LBi/c;->b()LXi/c;

    move-result-object p2

    invoke-virtual {p0, p2}, LPi/b;->l(LXi/c;)[B

    move-result-object p2

    invoke-virtual {p0, p3}, LPi/b;->l(LXi/c;)[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LPi/b;->i([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public b(LXi/c;LBi/c;)[[B
    .locals 4

    iget-object v0, p0, LPi/b;->a:LBi/d;

    invoke-interface {v0}, LBi/d;->a()LBi/c;

    move-result-object v0

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v2

    invoke-interface {v1, v2}, LBi/e;->a(LBi/k;)V

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-interface {v1, p1}, LBi/e;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, LPi/b;->b:LBi/e;

    invoke-interface {v2}, LBi/e;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, LPi/b;->n([BI)[B

    move-result-object v1

    iget-object v2, p0, LPi/b;->b:LBi/e;

    invoke-virtual {p2}, LBi/c;->a()LXi/c;

    move-result-object v3

    invoke-interface {v2, v3}, LBi/e;->a(LBi/k;)V

    iget-object v2, p0, LPi/b;->b:LBi/e;

    invoke-interface {v2, p1}, LBi/e;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, LPi/b;->b:LBi/e;

    invoke-interface {v3}, LBi/e;->c()I

    move-result v3

    invoke-virtual {p0, v2, v3}, LPi/b;->n([BI)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v1

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    invoke-virtual {p0, v0}, LPi/b;->l(LXi/c;)[B

    move-result-object v0

    invoke-virtual {p0, p1}, LPi/b;->l(LXi/c;)[B

    move-result-object p1

    invoke-virtual {p2}, LBi/c;->b()LXi/c;

    move-result-object p2

    invoke-virtual {p0, p2}, LPi/b;->l(LXi/c;)[B

    move-result-object p2

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, LPi/b;->i([B[B)[B

    move-result-object p1

    filled-new-array {p1, v0}, [[B

    move-result-object p1

    return-object p1
.end method

.method public c([BLBi/c;)[B
    .locals 3

    invoke-virtual {p0, p1}, LPi/b;->f([B)LXi/c;

    move-result-object v0

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-virtual {p2}, LBi/c;->a()LXi/c;

    move-result-object v2

    invoke-interface {v1, v2}, LBi/e;->a(LBi/k;)V

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-interface {v1, v0}, LBi/e;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-interface {v1}, LBi/e;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LPi/b;->n([BI)[B

    move-result-object v0

    invoke-virtual {p2}, LBi/c;->b()LXi/c;

    move-result-object p2

    invoke-virtual {p0, p2}, LPi/b;->l(LXi/c;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LPi/b;->i([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public d([B)LBi/c;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "KEM"

    invoke-static {v2}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v2

    iget-short v3, p0, LPi/b;->c:S

    invoke-static {v3}, Lorg/bouncycastle/util/p;->Q(S)[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v2

    iget-short v3, p0, LPi/b;->c:S

    const/16 v4, 0x20

    const-string v5, "dkp_prk"

    const/4 v6, 0x0

    if-eq v3, v4, :cond_3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v3, p0, LPi/b;->d:LPi/c;

    invoke-virtual {v3, v6, v2, v5, p1}, LPi/c;->d([B[BLjava/lang/String;[B)[B

    move-result-object p1

    move v3, v0

    :goto_0
    const/16 v4, 0xff

    if-gt v3, v4, :cond_1

    int-to-byte v4, v3

    new-array v8, v1, [B

    aput-byte v4, v8, v0

    iget-object v4, p0, LPi/b;->d:LPi/c;

    const-string v7, "candidate"

    iget v9, p0, LPi/b;->f:I

    move-object v5, p1

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, LPi/c;->c([B[BLjava/lang/String;[BI)[B

    move-result-object v4

    aget-byte v5, v4, v0

    iget-byte v6, p0, LPi/b;->e:B

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v5}, LPi/b;->m(Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p1, Ljk/k;

    invoke-direct {p1}, Ljk/k;-><init>()V

    iget-object v0, p0, LPi/b;->h:LXi/G;

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Ljk/b;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    new-instance v0, LXi/L;

    iget-object v1, p0, LPi/b;->h:LXi/G;

    invoke-direct {v0, v5, v1}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    new-instance v1, LXi/M;

    iget-object v2, p0, LPi/b;->h:LXi/G;

    invoke-direct {v1, p1, v2}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    new-instance p1, LBi/c;

    invoke-direct {p1, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object p1

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DeriveKeyPairError"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, LPi/b;->d:LPi/c;

    invoke-virtual {v0, v6, v2, v5, p1}, LPi/c;->d([B[BLjava/lang/String;[B)[B

    move-result-object v5

    iget-object v4, p0, LPi/b;->d:LPi/c;

    const/4 v8, 0x0

    iget v9, p0, LPi/b;->f:I

    const-string v7, "sk"

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, LPi/c;->c([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    new-instance v0, LXi/Q0;

    invoke-direct {v0, p1}, LXi/Q0;-><init>([B)V

    new-instance p1, LBi/c;

    invoke-virtual {v0}, LXi/Q0;->e()LXi/R0;

    move-result-object v1

    invoke-direct {p1, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object p1

    :cond_3
    iget-object v0, p0, LPi/b;->d:LPi/c;

    invoke-virtual {v0, v6, v2, v5, p1}, LPi/c;->d([B[BLjava/lang/String;[B)[B

    move-result-object v5

    iget-object v4, p0, LPi/b;->d:LPi/c;

    const/4 v8, 0x0

    iget v9, p0, LPi/b;->f:I

    const-string v7, "sk"

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, LPi/c;->c([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    new-instance v0, LXi/N0;

    invoke-direct {v0, p1}, LXi/N0;-><init>([B)V

    new-instance p1, LBi/c;

    invoke-virtual {v0}, LXi/N0;->e()LXi/O0;

    move-result-object v1

    invoke-direct {p1, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e([B[B)LBi/c;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, LPi/b;->f([B)LXi/c;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-short v0, p0, LPi/b;->c:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid kem id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, LXi/L;

    iget-object v1, p0, LPi/b;->h:LXi/G;

    invoke-direct {p1, v0, v1}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    if-nez p2, :cond_1

    new-instance p2, Ljk/k;

    invoke-direct {p2}, Ljk/k;-><init>()V

    iget-object v0, p0, LPi/b;->h:LXi/G;

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v0

    invoke-virtual {p1}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljk/b;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p2

    new-instance v0, LXi/M;

    iget-object v1, p0, LPi/b;->h:LXi/G;

    invoke-direct {v0, p2, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    move-object p2, v0

    :cond_1
    new-instance v0, LBi/c;

    invoke-direct {v0, p2, p1}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0

    :cond_2
    new-instance v0, LXi/Q0;

    invoke-direct {v0, p1}, LXi/Q0;-><init>([B)V

    if-nez p2, :cond_3

    invoke-virtual {v0}, LXi/Q0;->e()LXi/R0;

    move-result-object p2

    :cond_3
    new-instance p1, LBi/c;

    invoke-direct {p1, p2, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object p1

    :cond_4
    new-instance v0, LXi/N0;

    invoke-direct {v0, p1}, LXi/N0;-><init>([B)V

    if-nez p2, :cond_5

    invoke-virtual {v0}, LXi/N0;->e()LXi/O0;

    move-result-object p2

    :cond_5
    new-instance p1, LBi/c;

    invoke-direct {p1, p2, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public f([B)LXi/c;
    .locals 2

    iget-short v0, p0, LPi/b;->c:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, LPi/b;->h:LXi/G;

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/e;->l([B)Ljk/i;

    move-result-object p1

    new-instance v0, LXi/M;

    iget-object v1, p0, LPi/b;->h:LXi/G;

    invoke-direct {v0, p1, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object v0

    :cond_0
    new-instance v0, LXi/R0;

    invoke-direct {v0, p1}, LXi/R0;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, LXi/O0;

    invoke-direct {v0, p1}, LXi/O0;-><init>([B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public g(LXi/c;)[[B
    .locals 1

    iget-object v0, p0, LPi/b;->a:LBi/d;

    invoke-interface {v0}, LBi/d;->a()LBi/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LPi/b;->h(LXi/c;LBi/c;)[[B

    move-result-object p1

    return-object p1
.end method

.method public h(LXi/c;LBi/c;)[[B
    .locals 2

    iget-object v0, p0, LPi/b;->b:LBi/e;

    invoke-virtual {p2}, LBi/c;->a()LXi/c;

    move-result-object v1

    invoke-interface {v0, v1}, LBi/e;->a(LBi/k;)V

    iget-object v0, p0, LPi/b;->b:LBi/e;

    invoke-interface {v0, p1}, LBi/e;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, LPi/b;->b:LBi/e;

    invoke-interface {v1}, LBi/e;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LPi/b;->n([BI)[B

    move-result-object v0

    invoke-virtual {p2}, LBi/c;->b()LXi/c;

    move-result-object p2

    invoke-virtual {p0, p2}, LPi/b;->l(LXi/c;)[B

    move-result-object p2

    invoke-virtual {p0, p1}, LPi/b;->l(LXi/c;)[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LPi/b;->i([B[B)[B

    move-result-object p1

    filled-new-array {p1, p2}, [[B

    move-result-object p1

    return-object p1
.end method

.method public final i([B[B)[B
    .locals 8

    const-string v0, "KEM"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    iget-short v1, p0, LPi/b;->c:S

    invoke-static {v1}, Lorg/bouncycastle/util/p;->Q(S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v4

    iget-object v0, p0, LPi/b;->d:LPi/c;

    const/4 v1, 0x0

    const-string v2, "eae_prk"

    invoke-virtual {v0, v1, v4, v2, p1}, LPi/c;->d([B[BLjava/lang/String;[B)[B

    move-result-object v3

    iget-object v2, p0, LPi/b;->d:LPi/c;

    const-string v5, "shared_secret"

    iget v7, p0, LPi/b;->g:I

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, LPi/c;->c([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public j()LBi/c;
    .locals 1

    iget-object v0, p0, LPi/b;->a:LBi/d;

    invoke-interface {v0}, LBi/d;->a()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public k(LXi/c;)[B
    .locals 2

    iget-short v0, p0, LPi/b;->c:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, LXi/L;

    invoke-virtual {p1}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iget v0, p0, LPi/b;->f:I

    invoke-virtual {p0, p1, v0}, LPi/b;->n([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, LXi/Q0;

    invoke-virtual {p1}, LXi/Q0;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, LXi/N0;

    invoke-virtual {p1}, LXi/N0;->getEncoded()[B

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public l(LXi/c;)[B
    .locals 2

    iget-short v0, p0, LPi/b;->c:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, LXi/M;

    invoke-virtual {p1}, LXi/M;->e()Ljk/i;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljk/i;->l(Z)[B

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, LXi/R0;

    invoke-virtual {p1}, LXi/R0;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, LXi/O0;

    invoke-virtual {p1}, LXi/O0;->getEncoded()[B

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Ljava/math/BigInteger;)Z
    .locals 4

    iget-object v0, p0, LPi/b;->h:LXi/G;

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljk/B;->i(Ljava/math/BigInteger;)I

    move-result p1

    if-ge p1, v1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v3
.end method

.method public final n([BI)[B
    .locals 3

    new-array v0, p2, [B

    array-length v1, p1

    const/4 v2, 0x0

    if-gt v1, p2, :cond_0

    array-length v1, p1

    sub-int/2addr p2, v1

    array-length v1, p1

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0
.end method
