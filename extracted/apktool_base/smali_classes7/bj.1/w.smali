.class public Lbj/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;


# static fields
.field public static final k:Ljava/util/Hashtable;


# instance fields
.field public final g:LBi/b;

.field public final h:Lhi/b;

.field public final i:LBi/y;

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbj/w;->k:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    sget-object v2, Lbi/b;->c:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RIPEMD160"

    sget-object v2, Lbi/b;->b:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RIPEMD256"

    sget-object v2, Lbi/b;->d:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-1"

    sget-object v2, Lhi/E0;->T4:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-224"

    sget-object v2, LSh/d;->f:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-256"

    sget-object v2, LSh/d;->c:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-384"

    sget-object v2, LSh/d;->d:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512"

    sget-object v2, LSh/d;->e:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512/224"

    sget-object v2, LSh/d;->g:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512/256"

    sget-object v2, LSh/d;->h:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA3-224"

    sget-object v2, LSh/d;->i:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA3-256"

    sget-object v2, LSh/d;->j:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA3-384"

    sget-object v2, LSh/d;->k:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA3-512"

    sget-object v2, LSh/d;->l:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MD2"

    sget-object v2, LXh/t;->s1:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MD4"

    sget-object v2, LXh/t;->t1:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MD5"

    sget-object v2, LXh/t;->u1:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LBi/y;)V
    .locals 2

    .line 1
    sget-object v0, Lbj/w;->k:Ljava/util/Hashtable;

    invoke-interface {p1}, LBi/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/x;

    invoke-direct {p0, p1, v0}, Lbj/w;-><init>(LBi/y;Loh/x;)V

    return-void
.end method

.method public constructor <init>(LBi/y;Loh/x;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LKi/c;

    new-instance v1, LLi/e0;

    invoke-direct {v1}, LLi/e0;-><init>()V

    invoke-direct {v0, v1}, LKi/c;-><init>(LBi/b;)V

    iput-object v0, p0, Lbj/w;->g:LBi/b;

    iput-object p1, p0, Lbj/w;->i:LBi/y;

    if-eqz p2, :cond_0

    new-instance p1, Lhi/b;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {p1, p2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_0
    iput-object p1, p0, Lbj/w;->h:Lhi/b;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    iput-boolean p1, p0, Lbj/w;->j:Z

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LXi/x0;

    invoke-virtual {v0}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/c;

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, LXi/c;

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "signing requires private key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "verification requires public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lbj/w;->reset()V

    iget-object v0, p0, Lbj/w;->g:LBi/b;

    invoke-interface {v0, p1, p2}, LBi/b;->a(ZLBi/k;)V

    return-void
.end method

.method public b([B)Z
    .locals 10

    iget-boolean v0, p0, Lbj/w;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lbj/w;->i:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lbj/w;->i:LBi/y;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, LBi/y;->c([BI)I

    :try_start_0
    iget-object v2, p0, Lbj/w;->g:LBi/b;

    array-length v4, p1

    invoke-interface {v2, p1, v3, v4}, LBi/b;->b([BII)[B

    move-result-object p1

    invoke-virtual {p0, v1}, Lbj/w;->g([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, p1

    array-length v4, v1

    if-ne v2, v4, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1

    :cond_0
    array-length v2, p1

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ne v2, v4, :cond_4

    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x2

    array-length v4, v1

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    add-int/lit8 v6, v6, -0x2

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v6, 0x3

    aget-byte v7, v1, v6

    add-int/lit8 v7, v7, -0x2

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v0, :cond_1

    add-int v8, v2, v6

    aget-byte v8, p1, v8

    add-int v9, v4, v6

    aget-byte v9, v1, v9

    xor-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_2

    aget-byte v4, p1, v0

    aget-byte v6, v1, v0

    xor-int/2addr v4, v6

    or-int/2addr v7, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    move v3, v5

    :cond_3
    return v3

    :cond_4
    invoke-static {v1, v1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    :catch_0
    return v3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RSADigestSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lbj/w;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbj/w;->i:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lbj/w;->i:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    invoke-virtual {p0, v0}, Lbj/w;->g([B)[B

    move-result-object v0

    iget-object v1, p0, Lbj/w;->g:LBi/b;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, LBi/b;->b([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/CryptoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSADigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbj/w;->h:Lhi/b;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lhi/w;->w(Ljava/lang/Object;)Lhi/w;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed DigestInfo for NONEwithRSA hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lhi/w;

    invoke-direct {v1, v0, p1}, Lhi/w;-><init>(Lhi/b;[B)V

    const-string p1, "DER"

    invoke-virtual {v1, p1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbj/w;->i:LBi/y;

    invoke-interface {v1}, LBi/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "withRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lbj/w;->i:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbj/w;->i:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lbj/w;->i:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
