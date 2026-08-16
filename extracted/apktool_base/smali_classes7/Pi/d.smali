.class public LPi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:B = 0x0t

.field public static final k:B = 0x1t

.field public static final l:B = 0x2t

.field public static final m:B = 0x3t

.field public static final n:S = 0x10s

.field public static final o:S = 0x11s

.field public static final p:S = 0x12s

.field public static final q:S = 0x20s

.field public static final r:S = 0x21s

.field public static final s:S = 0x1s

.field public static final t:S = 0x2s

.field public static final u:S = 0x3s

.field public static final v:S = 0x1s

.field public static final w:S = 0x2s

.field public static final x:S = 0x3s

.field public static final y:S = -0x1s


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:B

.field public final d:S

.field public final e:S

.field public final f:S

.field public final g:LPi/b;

.field public final h:LPi/c;

.field public i:S


# direct methods
.method public constructor <init>(BSSS)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LPi/d;->a:[B

    iput-object v0, p0, LPi/d;->b:[B

    iput-byte p1, p0, LPi/d;->c:B

    iput-short p2, p0, LPi/d;->d:S

    iput-short p3, p0, LPi/d;->e:S

    iput-short p4, p0, LPi/d;->f:S

    new-instance p1, LPi/c;

    invoke-direct {p1, p3}, LPi/c;-><init>(S)V

    iput-object p1, p0, LPi/d;->h:LPi/c;

    new-instance p1, LPi/b;

    invoke-direct {p1, p2}, LPi/b;-><init>(S)V

    iput-object p1, p0, LPi/d;->g:LPi/b;

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    const/16 p1, 0x10

    :goto_0
    iput-short p1, p0, LPi/d;->i:S

    goto :goto_1

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public a(LXi/c;[B[B[B)LPi/f;
    .locals 7

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1}, LPi/b;->g(LXi/c;)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object v3, p1, v0

    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p2

    new-instance p3, LPi/f;

    const/4 p4, 0x1

    aget-object p1, p1, p4

    invoke-direct {p3, p2, p1}, LPi/f;-><init>(LPi/e;[B)V

    return-object p3
.end method

.method public final b(B[B[B)V
    .locals 2

    iget-object v0, p0, LPi/d;->a:[B

    invoke-static {p2, v0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    iget-object v1, p0, LPi/d;->b:[B

    invoke-static {p3, v1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p3

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    if-ne v0, p3, :cond_4

    if-nez p2, :cond_1

    rem-int/lit8 p3, p1, 0x2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PSK input provided when not needed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    rem-int/lit8 p1, p1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing required PSK input"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Inconsistent PSK inputs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)LBi/c;
    .locals 1

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1}, LPi/b;->d([B)LBi/c;

    move-result-object p1

    return-object p1
.end method

.method public d([B[B)LBi/c;
    .locals 1

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1, p2}, LPi/b;->e([B[B)LBi/c;

    move-result-object p1

    return-object p1
.end method

.method public e([B)LXi/c;
    .locals 1

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1}, LPi/b;->f([B)LXi/c;

    move-result-object p1

    return-object p1
.end method

.method public f()LBi/c;
    .locals 1

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0}, LPi/b;->j()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public g()S
    .locals 1

    iget-short v0, p0, LPi/d;->f:S

    return v0
.end method

.method public h()I
    .locals 2

    iget-short v0, p0, LPi/d;->d:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid kem id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x85

    return v0

    :pswitch_1
    const/16 v0, 0x61

    return v0

    :pswitch_2
    const/16 v0, 0x41

    return v0

    :cond_0
    const/16 v0, 0x38

    return v0

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(B[B[B[B[B)LPi/e;
    .locals 10

    invoke-virtual {p0, p1, p4, p5}, LPi/d;->b(B[B[B)V

    const-string v0, "HPKE"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    iget-short v1, p0, LPi/d;->d:S

    invoke-static {v1}, Lorg/bouncycastle/util/p;->Q(S)[B

    move-result-object v1

    iget-short v2, p0, LPi/d;->e:S

    invoke-static {v2}, Lorg/bouncycastle/util/p;->Q(S)[B

    move-result-object v2

    iget-short v3, p0, LPi/d;->f:S

    invoke-static {v3}, Lorg/bouncycastle/util/p;->Q(S)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/a;->D([B[B[B[B)[B

    move-result-object v0

    iget-object v1, p0, LPi/d;->h:LPi/c;

    const-string v2, "psk_id_hash"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2, p5}, LPi/c;->d([B[BLjava/lang/String;[B)[B

    move-result-object p5

    iget-object v1, p0, LPi/d;->h:LPi/c;

    const-string v2, "info_hash"

    invoke-virtual {v1, v3, v0, v2, p3}, LPi/c;->d([B[BLjava/lang/String;[B)[B

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-static {v1, p5, p3}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p1

    iget-object p3, p0, LPi/d;->h:LPi/c;

    const-string p5, "secret"

    invoke-virtual {p3, p2, v0, p5, p4}, LPi/c;->d([B[BLjava/lang/String;[B)[B

    move-result-object p2

    iget-object v4, p0, LPi/d;->h:LPi/c;

    const-string v7, "key"

    iget-short v9, p0, LPi/d;->i:S

    move-object v5, p2

    move-object v6, v0

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, LPi/c;->c([B[BLjava/lang/String;[BI)[B

    move-result-object p3

    iget-object v4, p0, LPi/d;->h:LPi/c;

    const-string v7, "base_nonce"

    const/16 v9, 0xc

    invoke-virtual/range {v4 .. v9}, LPi/c;->c([B[BLjava/lang/String;[BI)[B

    move-result-object p4

    iget-object v4, p0, LPi/d;->h:LPi/c;

    const-string v7, "exp"

    invoke-virtual {v4}, LPi/c;->e()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, LPi/c;->c([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    new-instance p2, LPi/e;

    new-instance p5, LPi/a;

    iget-short v1, p0, LPi/d;->f:S

    invoke-direct {p5, v1, p3, p4}, LPi/a;-><init>(S[B[B)V

    iget-object p3, p0, LPi/d;->h:LPi/c;

    invoke-direct {p2, p5, p3, p1, v0}, LPi/e;-><init>(LPi/a;LPi/c;[B[B)V

    return-object p2
.end method

.method public j([BLBi/c;[B[B[B[B[BLXi/c;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-byte v0, p0, LPi/d;->c:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, LPi/d;->p([BLBi/c;[B[B[BLXi/c;)LPi/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p8}, LPi/d;->r([BLBi/c;[BLXi/c;)LPi/e;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, LPi/d;->w([BLBi/c;[B[B[B)LPi/e;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, LPi/d;->t([BLBi/c;[B)LPi/e;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p4, p5}, LPi/e;->d([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public k([BLBi/c;[B[BI[B[BLXi/c;)[B
    .locals 7

    iget-byte v0, p0, LPi/d;->c:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, LPi/d;->p([BLBi/c;[B[B[BLXi/c;)LPi/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p8}, LPi/d;->r([BLBi/c;[BLXi/c;)LPi/e;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, LPi/d;->w([BLBi/c;[B[B[B)LPi/e;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, LPi/d;->t([BLBi/c;[B)LPi/e;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p4, p5}, LPi/e;->b([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public l(LXi/c;[B[B[B[B[BLBi/c;)[[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-byte v0, p0, LPi/d;->c:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, LPi/d;->q(LXi/c;[B[B[BLBi/c;)LPi/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p2, p7}, LPi/d;->s(LXi/c;[BLBi/c;)LPi/f;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p5, p6}, LPi/d;->a(LXi/c;[B[B[B)LPi/f;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, LPi/d;->u(LXi/c;[B)LPi/f;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p3, p4}, LPi/e;->f([B[B)[B

    move-result-object p2

    invoke-virtual {p1}, LPi/f;->h()[B

    move-result-object p1

    filled-new-array {p2, p1}, [[B

    move-result-object p1

    return-object p1
.end method

.method public m(LXi/c;[B[BI[B[BLBi/c;)[[B
    .locals 6

    iget-byte v0, p0, LPi/d;->c:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, LPi/d;->q(LXi/c;[B[B[BLBi/c;)LPi/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p2, p7}, LPi/d;->s(LXi/c;[BLBi/c;)LPi/f;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p5, p6}, LPi/d;->a(LXi/c;[B[B[B)LPi/f;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, LPi/d;->u(LXi/c;[B)LPi/f;

    move-result-object p1

    :goto_0
    iget-object p2, p1, LPi/f;->e:[B

    invoke-virtual {p1, p3, p4}, LPi/e;->b([BI)[B

    move-result-object p1

    filled-new-array {p2, p1}, [[B

    move-result-object p1

    return-object p1
.end method

.method public n(LXi/c;)[B
    .locals 1

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1}, LPi/b;->k(LXi/c;)[B

    move-result-object p1

    return-object p1
.end method

.method public o(LXi/c;)[B
    .locals 1

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1}, LPi/b;->l(LXi/c;)[B

    move-result-object p1

    return-object p1
.end method

.method public p([BLBi/c;[B[B[BLXi/c;)LPi/e;
    .locals 7

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1, p2, p6}, LPi/b;->a([BLBi/c;LXi/c;)[B

    move-result-object v3

    const/4 v2, 0x3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p1

    return-object p1
.end method

.method public q(LXi/c;[B[B[BLBi/c;)LPi/f;
    .locals 6

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1, p5}, LPi/b;->b(LXi/c;LBi/c;)[[B

    move-result-object p1

    const/4 p5, 0x0

    aget-object v2, p1, p5

    const/4 v1, 0x3

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p2

    new-instance p3, LPi/f;

    const/4 p4, 0x1

    aget-object p1, p1, p4

    invoke-direct {p3, p2, p1}, LPi/f;-><init>(LPi/e;[B)V

    return-object p3
.end method

.method public r([BLBi/c;[BLXi/c;)LPi/e;
    .locals 7

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1, p2, p4}, LPi/b;->a([BLBi/c;LXi/c;)[B

    move-result-object v3

    iget-object v5, p0, LPi/d;->a:[B

    iget-object v6, p0, LPi/d;->b:[B

    const/4 v2, 0x2

    move-object v1, p0

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p1

    return-object p1
.end method

.method public s(LXi/c;[BLBi/c;)LPi/f;
    .locals 6

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1, p3}, LPi/b;->b(LXi/c;LBi/c;)[[B

    move-result-object p1

    const/4 p3, 0x0

    aget-object v2, p1, p3

    iget-object v4, p0, LPi/d;->a:[B

    iget-object v5, p0, LPi/d;->b:[B

    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p2

    new-instance p3, LPi/f;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p3, p2, p1}, LPi/f;-><init>(LPi/e;[B)V

    return-object p3
.end method

.method public t([BLBi/c;[B)LPi/e;
    .locals 7

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1, p2}, LPi/b;->c([BLBi/c;)[B

    move-result-object v3

    iget-object v5, p0, LPi/d;->a:[B

    iget-object v6, p0, LPi/d;->b:[B

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p1

    return-object p1
.end method

.method public u(LXi/c;[B)LPi/f;
    .locals 7

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1}, LPi/b;->g(LXi/c;)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object v3, p1, v0

    iget-object v5, p0, LPi/d;->a:[B

    iget-object v6, p0, LPi/d;->b:[B

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p2

    new-instance v0, LPi/f;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-direct {v0, p2, p1}, LPi/f;-><init>(LPi/e;[B)V

    return-object v0
.end method

.method public v(LXi/c;[BLBi/c;)LPi/f;
    .locals 6

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1, p3}, LPi/b;->h(LXi/c;LBi/c;)[[B

    move-result-object p1

    const/4 p3, 0x0

    aget-object v2, p1, p3

    iget-object v4, p0, LPi/d;->a:[B

    iget-object v5, p0, LPi/d;->b:[B

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p2

    new-instance p3, LPi/f;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p3, p2, p1}, LPi/f;-><init>(LPi/e;[B)V

    return-object p3
.end method

.method public w([BLBi/c;[B[B[B)LPi/e;
    .locals 7

    iget-object v0, p0, LPi/d;->g:LPi/b;

    invoke-virtual {v0, p1, p2}, LPi/b;->c([BLBi/c;)[B

    move-result-object v3

    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, LPi/d;->i(B[B[B[B[B)LPi/e;

    move-result-object p1

    return-object p1
.end method
