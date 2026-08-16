.class public LFj/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LDj/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFj/j$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/security/interfaces/ECPublicKey;

.field public final b:[B

.field public final c:Ldk/f;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLdk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFj/j;->a:Ljava/security/interfaces/ECPublicKey;

    iput-object p2, p0, LFj/j;->b:[B

    iput-object p3, p0, LFj/j;->c:Ldk/f;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLdk/f;LFj/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, LFj/j;-><init>(Ljava/security/interfaces/ECPublicKey;[BLdk/f;)V

    return-void
.end method


# virtual methods
.method public a([B)LEk/j;
    .locals 6

    :try_start_0
    iget-object v0, p0, LFj/j;->c:Ldk/f;

    const-string v1, "ETSIKEMwithSHA256"

    invoke-interface {v0, v1}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, LFj/j;->a:Ljava/security/interfaces/ECPublicKey;

    new-instance v2, Lck/n;

    iget-object v3, p0, LFj/j;->b:[B

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lck/n;-><init>([BZ)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    iget-object v1, p0, LFj/j;->a:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    mul-int/lit8 v1, v1, 0x2

    :cond_0
    add-int/2addr v1, v4

    iget-object v3, p0, LFj/j;->a:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v3

    invoke-virtual {v3}, Lhi/h0;->u()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v3

    invoke-static {}, LFk/o;->u()LFk/o$a;

    move-result-object v4

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    invoke-static {v2}, LFk/k;->A([B)LFk/k;

    move-result-object v2

    invoke-virtual {v4, v2}, LFk/o$a;->f(LFk/k;)LFk/o$a;

    move-result-object v2

    array-length v4, p1

    add-int/2addr v4, v1

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, LFk/o$a;->c([B)LFk/o$a;

    move-result-object v2

    array-length p1, p1

    add-int/2addr v1, p1

    array-length p1, v0

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, LFk/o$a;->e([B)LFk/o$a;

    move-result-object p1

    invoke-virtual {p1}, LFk/o$a;->a()LFk/o;

    move-result-object p1

    sget-object v0, LZh/d;->H:Loh/x;

    invoke-virtual {v3, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, LEk/j;->v(LFk/o;)LEk/j;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object v0, Lbi/b;->u:Loh/x;

    invoke-virtual {v3, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, LEk/j;->u(LFk/o;)LEk/j;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "recipient key curve is not P-256 or Brainpool P256r1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
