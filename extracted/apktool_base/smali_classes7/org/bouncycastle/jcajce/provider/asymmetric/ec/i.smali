.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$b;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$c;
    }
.end annotation


# static fields
.field public static final w:Lki/q;


# instance fields
.field public final g:Ldk/f;

.field public final h:LCi/f;

.field public final i:LOi/z;

.field public final j:LBi/I;

.field public final k:I

.field public final l:I

.field public m:I

.field public n:LLi/L;

.field public o:I

.field public p:Ljava/io/ByteArrayOutputStream;

.field public q:Ljava/security/AlgorithmParameters;

.field public r:Lck/n;

.field public s:LXi/c;

.field public t:Ljava/security/SecureRandom;

.field public u:Z

.field public v:LXi/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lki/q;

    invoke-direct {v0}, Lki/q;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->w:Lki/q;

    return-void
.end method

.method public constructor <init>(LCi/f;LOi/z;LBi/I;II)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->g:Ldk/f;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->o:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->p:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->q:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->r:Lck/n;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->u:Z

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->v:LXi/c;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->h:LCi/f;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->i:LOi/z;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->k:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->l:I

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->engineDoFinal([BII)[B

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    invoke-static {p1, p3, p4, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    return p1
.end method

.method public engineDoFinal([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->p:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->p:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->p:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->s:LXi/c;

    check-cast v0, LXi/J;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->o:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cipher not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->s:LXi/c;

    check-cast v1, LXi/L;

    invoke-virtual {v1}, LXi/J;->d()LXi/G;

    move-result-object v6

    invoke-virtual {v6}, LXi/G;->a()Ljk/e;

    move-result-object v6

    invoke-virtual {v6}, Ljk/e;->w()I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    aget-byte v8, p1, p2

    if-ne v8, v4, :cond_4

    mul-int/2addr v7, v5

    :cond_4
    add-int/2addr v7, v2

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->l:I

    add-int/2addr v2, v7

    sub-int v2, p3, v2

    add-int/2addr v7, p2

    invoke-static {p1, p2, v7}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljk/e;->l([B)Ljk/i;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->h:LCi/f;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->s:LXi/c;

    invoke-virtual {v5, v6}, LCi/f;->a(LBi/k;)V

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->w:Lki/q;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->h:LCi/f;

    new-instance v8, LXi/M;

    invoke-virtual {v1}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-direct {v8, v4, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    invoke-virtual {v6, v8}, LCi/f;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {v5, v0}, Lki/q;->a(Ljk/e;)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Lki/q;->c(Ljava/math/BigInteger;I)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->k:I

    add-int/2addr v1, v2

    new-array v4, v1, [B

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->i:LOi/z;

    new-instance v6, LXi/n0;

    iget-object v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->r:Lck/n;

    invoke-virtual {v8}, Lck/n;->a()[B

    move-result-object v8

    invoke-direct {v6, v0, v8}, LXi/n0;-><init>([B[B)V

    invoke-virtual {v5, v6}, LOi/c;->c(LBi/x;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->i:LOi/z;

    invoke-virtual {v0, v4, v3, v1}, LOi/c;->a([BII)I

    new-array v0, v2, [B

    move v5, v3

    :goto_1
    if-eq v5, v2, :cond_5

    add-int v6, v7, v5

    aget-byte v6, p1, v6

    aget-byte v8, v4, v5

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    new-instance v5, LXi/o0;

    sub-int/2addr v1, v2

    invoke-direct {v5, v4, v2, v1}, LXi/o0;-><init>([BII)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    invoke-interface {v1, v5}, LBi/I;->a(LBi/k;)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    invoke-interface {v1, p1, v7, v2}, LBi/I;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    invoke-interface {v1}, LBi/I;->d()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    invoke-interface {v2, v1, v3}, LBi/I;->c([BI)I

    invoke-virtual {v5}, LXi/o0;->b()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/a;->n([B)V

    invoke-static {v4}, Lorg/bouncycastle/util/a;->n([B)V

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->l:I

    sub-int/2addr p3, v2

    add-int/2addr p2, p3

    invoke-static {v2, v1, v3, p1, p2}, Lorg/bouncycastle/util/a;->H(I[BI[BI)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v0

    :cond_6
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string p2, "mac field"

    invoke-direct {p1, p2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    new-instance v1, LOi/p;

    invoke-direct {v1}, LOi/p;-><init>()V

    new-instance v2, LXi/I;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->t:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v4}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v2}, LOi/p;->b(LBi/G;)V

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->r:Lck/n;

    invoke-virtual {v2}, Lck/n;->b()Z

    move-result v2

    new-instance v4, LOi/u;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$a;

    invoke-direct {v5, p0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$a;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;Z)V

    invoke-direct {v4, v1, v5}, LOi/u;-><init>(LBi/d;LBi/F;)V

    invoke-virtual {v4}, LOi/u;->a()LBi/C;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->h:LCi/f;

    invoke-virtual {v1}, LBi/C;->b()LBi/c;

    move-result-object v4

    invoke-virtual {v4}, LBi/c;->a()LXi/c;

    move-result-object v4

    invoke-virtual {v2, v4}, LCi/f;->a(LBi/k;)V

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->w:Lki/q;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->h:LCi/f;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->s:LXi/c;

    invoke-virtual {v4, v5}, LCi/f;->b(LBi/k;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lki/q;->a(Ljk/e;)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lki/q;->c(Ljava/math/BigInteger;I)[B

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->k:I

    add-int/2addr v2, p3

    new-array v4, v2, [B

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->i:LOi/z;

    new-instance v6, LXi/n0;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->r:Lck/n;

    invoke-virtual {v7}, Lck/n;->a()[B

    move-result-object v7

    invoke-direct {v6, v0, v7}, LXi/n0;-><init>([B[B)V

    invoke-virtual {v5, v6}, LOi/c;->c(LBi/x;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->i:LOi/z;

    invoke-virtual {v0, v4, v3, v2}, LOi/c;->a([BII)I

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->l:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    move v5, v3

    :goto_3
    if-eq v5, p3, :cond_8

    add-int v6, p2, v5

    aget-byte v6, p1, v6

    aget-byte v7, v4, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    new-instance p1, LXi/o0;

    sub-int/2addr v2, p3

    invoke-direct {p1, v4, p3, v2}, LXi/o0;-><init>([BII)V

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    invoke-interface {p2, p1}, LBi/I;->a(LBi/k;)V

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    invoke-interface {p2, v0, v3, p3}, LBi/I;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    invoke-interface {p2}, LBi/I;->d()I

    move-result p2

    new-array p2, p2, [B

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->j:LBi/I;

    invoke-interface {v2, p2, v3}, LBi/I;->c([BI)I

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->n([B)V

    invoke-static {v4}, Lorg/bouncycastle/util/a;->n([B)V

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->l:I

    invoke-static {p2, v3, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, LBi/C;->a()[B

    move-result-object p1

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    instance-of v0, p1, Lfk/b;

    if-eqz v0, :cond_0

    check-cast p1, Lfk/b;

    invoke-interface {p1}, Lfk/b;->getParameters()Lhk/e;

    move-result-object p1

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p1}, Ljk/e;->w()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not an EC key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetOutputSize(I)I
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->s:LXi/c;

    const-string v1, "cipher not initialised"

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->n:LLi/L;

    invoke-virtual {v0}, LLi/L;->f()LBi/I;

    move-result-object v0

    invoke-interface {v0}, LBi/I;->d()I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->v:LXi/c;

    const/4 v3, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->s:LXi/c;

    check-cast v2, LXi/J;

    invoke-virtual {v2}, LXi/J;->d()LXi/G;

    move-result-object v2

    invoke-virtual {v2}, LXi/G;->a()Ljk/e;

    move-result-object v2

    invoke-virtual {v2}, Ljk/e;->w()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->p:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, p1

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->n:LLi/L;

    invoke-virtual {p1}, LLi/L;->d()LBi/h;

    move-result-object p1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->o:I

    if-eq p1, v7, :cond_5

    if-ne p1, v6, :cond_2

    goto :goto_3

    :cond_2
    if-eq p1, v3, :cond_4

    if-ne p1, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->n:LLi/L;

    invoke-virtual {p1}, LLi/L;->d()LBi/h;

    move-result-object p1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    :goto_2
    invoke-virtual {p1, v4}, LBi/h;->c(I)I

    move-result v4

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->n:LLi/L;

    invoke-virtual {p1}, LLi/L;->d()LBi/h;

    move-result-object p1

    goto :goto_2

    :goto_4
    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->o:I

    if-eq p1, v7, :cond_9

    if-ne p1, v6, :cond_6

    goto :goto_6

    :cond_6
    if-eq p1, v3, :cond_8

    if-ne p1, v5, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    return v4

    :cond_9
    :goto_6
    add-int/2addr v0, v2

    add-int/2addr v0, v4

    return v0

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->q:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->r:Lck/n;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->g:Ldk/f;

    const-string v1, "IES"

    invoke-interface {v0, v1}, Ldk/f;->l(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->q:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->r:Lck/n;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->q:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    :try_start_0
    const-class v0, Lhk/s;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cannot recognise parameters: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->q:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot handle supplied parameter spec: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->v:LXi/c;

    check-cast p3, Lck/n;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->r:Lck/n;

    const/4 p3, 0x1

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed EC key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_3

    check-cast p2, Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->s:LXi/c;

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed recipient\'s private EC key for decryption"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    instance-of p3, p2, Ljava/security/PublicKey;

    if-eqz p3, :cond_5

    check-cast p2, Ljava/security/PublicKey;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p2

    goto :goto_1

    :goto_3
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->t:Ljava/security/SecureRandom;

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->o:I

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->p:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed recipient\'s public EC key for encryption"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "padding not available with IESCipher"

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII[BI)I
    .locals 0

    .line 1
    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->p:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    return p1
.end method

.method public engineUpdate([BII)[B
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;->p:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    return-object p1
.end method
