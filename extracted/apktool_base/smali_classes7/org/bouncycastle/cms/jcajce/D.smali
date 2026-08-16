.class public abstract Lorg/bouncycastle/cms/jcajce/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/l0;


# static fields
.field public static final h:Ljava/util/Set;

.field public static i:Lorg/bouncycastle/cms/jcajce/Q;

.field public static j:Lorg/bouncycastle/cms/jcajce/Q;

.field public static k:Lorg/bouncycastle/cms/jcajce/Q;


# instance fields
.field public c:Ljava/security/PrivateKey;

.field public d:Lorg/bouncycastle/cms/jcajce/c;

.field public e:Lorg/bouncycastle/cms/jcajce/c;

.field public f:LQk/I;

.field public g:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/D;->h:Ljava/util/Set;

    sget-object v1, Lki/r;->v6:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lki/r;->x6:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/bouncycastle/cms/jcajce/D$a;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/D$a;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/D;->i:Lorg/bouncycastle/cms/jcajce/Q;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/D$b;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/D$b;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/D;->j:Lorg/bouncycastle/cms/jcajce/Q;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/U;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/U;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/D;->k:Lorg/bouncycastle/cms/jcajce/Q;

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->e:Lorg/bouncycastle/cms/jcajce/c;

    new-instance v0, LQk/l;

    invoke-direct {v0}, LQk/l;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->f:LQk/I;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->g:Lhi/b;

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/D;->c:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public f()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->g:Lhi/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->c:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v0

    invoke-virtual {v0}, LXh/v;->y()Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->g:Lhi/b;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->g:Lhi/b;

    return-object v0
.end method

.method public final g(Lhi/b;Lhi/b;Ljava/security/PublicKey;Loh/y;Ljava/security/PrivateKey;Lorg/bouncycastle/cms/jcajce/Q;)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p5}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p5

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/a;->m(Loh/x;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Loh/y;->H()[B

    move-result-object p4

    invoke-static {p4}, Lvh/b;->w(Ljava/lang/Object;)Lvh/b;

    move-result-object p4

    new-instance v0, Lhi/h0;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/D;->f()Lhi/b;

    move-result-object v3

    invoke-virtual {p4}, Lvh/b;->v()Luh/J;

    move-result-object v4

    invoke-virtual {v4}, Luh/J;->y()Loh/c;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/cms/jcajce/c;->k(Loh/x;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/c;->j(Loh/x;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    invoke-virtual {p4}, Lvh/b;->u()Loh/y;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Lvh/b;->u()Loh/y;

    move-result-object p4

    invoke-virtual {p4}, Loh/y;->H()[B

    move-result-object v2

    :cond_0
    sget-object p4, Lorg/bouncycastle/cms/jcajce/D;->i:Lorg/bouncycastle/cms/jcajce/Q;

    if-ne p6, p4, :cond_1

    iget-object p6, p0, Lorg/bouncycastle/cms/jcajce/D;->f:LQk/I;

    invoke-interface {p6, p2}, LQk/I;->a(Lhi/b;)I

    move-result p6

    invoke-interface {p4, p2, p6, v2}, Lorg/bouncycastle/cms/jcajce/Q;->a(Lhi/b;I[B)[B

    move-result-object v2

    :cond_1
    new-instance p4, Lck/s;

    invoke-direct {p4, p5, v0, v2}, Lck/s;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    invoke-virtual {p1, p5, p4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p3, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/cms/jcajce/c;->j(Loh/x;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/cms/jcajce/a;->k(Loh/x;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/D;->f:LQk/I;

    invoke-interface {p1, p2}, LQk/I;->a(Lhi/b;)I

    move-result p1

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Loh/y;->H()[B

    move-result-object p4

    invoke-interface {p6, p2, p1, p4}, Lorg/bouncycastle/cms/jcajce/Q;->a(Lhi/b;I[B)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-interface {p6, p2, p1, v2}, Lorg/bouncycastle/cms/jcajce/Q;->a(Lhi/b;I[B)[B

    move-result-object p1

    :goto_0
    new-instance v2, Lck/D;

    invoke-direct {v2, p1}, Lck/D;-><init>([B)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p6

    invoke-static {p6}, Lorg/bouncycastle/cms/jcajce/a;->n(Loh/x;)Z

    move-result p6

    if-eqz p6, :cond_5

    if-eqz p4, :cond_6

    new-instance v2, Lck/D;

    invoke-virtual {p4}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lck/D;-><init>([B)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p6

    invoke-static {p6}, Lorg/bouncycastle/cms/jcajce/a;->l(Loh/x;)Z

    move-result p6

    if-eqz p6, :cond_7

    if-eqz p4, :cond_6

    new-instance v2, Lck/D;

    invoke-virtual {p4}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lck/D;-><init>([B)V

    :cond_6
    :goto_1
    invoke-virtual {v0, p5, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p3, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown key agreement algorithm: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public h(Lhi/b;Lhi/b;Lhi/h0;Loh/y;[B)Ljava/security/Key;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p3}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3}, Lhi/h0;->u()Lhi/b;

    move-result-object p3

    invoke-virtual {p3}, Lhi/b;->u()Loh/x;

    move-result-object p3

    invoke-virtual {v2, p3}, Lorg/bouncycastle/cms/jcajce/c;->k(Loh/x;)Ljava/security/KeyFactory;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/D;->c:Ljava/security/PrivateKey;

    sget-object v7, Lorg/bouncycastle/cms/jcajce/D;->k:Lorg/bouncycastle/cms/jcajce/Q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/cms/jcajce/D;->g(Lhi/b;Lhi/b;Ljava/security/PublicKey;Loh/y;Ljava/security/PrivateKey;Lorg/bouncycastle/cms/jcajce/Q;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v2

    sget-object v3, Lyh/a;->d:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v2

    sget-object v3, Lyh/a;->e:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3, p5}, Lorg/bouncycastle/cms/jcajce/D;->n(Loh/x;Ljavax/crypto/SecretKey;Loh/x;[B)Ljava/security/Key;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :catch_3
    move-exception p1

    goto/16 :goto_6

    :catch_4
    move-exception v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p5}, Lyh/h;->v(Ljava/lang/Object;)Lyh/h;

    move-result-object v2

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, Lyh/i;->v(Ljava/lang/Object;)Lyh/i;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/cms/jcajce/c;->f(Loh/x;)Ljavax/crypto/Cipher;

    move-result-object v4

    new-instance v5, Lck/k;

    invoke-virtual {v3}, Lyh/i;->u()Loh/x;

    move-result-object v3

    invoke-virtual {p4}, Loh/y;->H()[B

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lck/k;-><init>(Loh/x;[B)V

    const/4 v3, 0x4

    invoke-virtual {v4, v3, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2}, Lyh/h;->u()[B

    move-result-object v1

    invoke-virtual {v2}, Lyh/h;->x()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cms/jcajce/c;->v(Loh/x;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v4, v1, v2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_1
    :try_start_2
    sget-object v1, Lorg/bouncycastle/cms/jcajce/D;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/D;->c:Ljava/security/PrivateKey;

    sget-object v7, Lorg/bouncycastle/cms/jcajce/D;->i:Lorg/bouncycastle/cms/jcajce/Q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/cms/jcajce/D;->g(Lhi/b;Lhi/b;Ljava/security/PublicKey;Loh/y;Ljava/security/PrivateKey;Lorg/bouncycastle/cms/jcajce/Q;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object p3

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2, p5}, Lorg/bouncycastle/cms/jcajce/D;->n(Loh/x;Ljavax/crypto/SecretKey;Loh/x;[B)Ljava/security/Key;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_5
    move-exception p1

    goto :goto_5

    :cond_2
    if-eqz p4, :cond_3

    :try_start_3
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/D;->c:Ljava/security/PrivateKey;

    sget-object v7, Lorg/bouncycastle/cms/jcajce/D;->j:Lorg/bouncycastle/cms/jcajce/Q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/cms/jcajce/D;->g(Lhi/b;Lhi/b;Ljava/security/PublicKey;Loh/y;Ljava/security/PrivateKey;Lorg/bouncycastle/cms/jcajce/Q;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object p3

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2, p5}, Lorg/bouncycastle/cms/jcajce/D;->n(Loh/x;Ljavax/crypto/SecretKey;Loh/x;[B)Ljava/security/Key;

    move-result-object p1
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :catch_6
    :try_start_4
    throw v8

    :cond_3
    throw v8
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "originator key invalid."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_3
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "required padding not supported."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_4
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "originator key spec invalid."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_5
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "key invalid in message."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_6
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "can\'t find algorithm."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public i(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/D;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->c(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/D;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public j(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/D;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->d(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/D;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public k(Lhi/b;)Lorg/bouncycastle/cms/jcajce/D;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/D;->g:Lhi/b;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/D;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public m(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/D;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->e:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public n(Loh/x;Ljavax/crypto/SecretKey;Loh/x;[B)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/c;->f(Loh/x;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/jcajce/D;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p2, p3}, Lorg/bouncycastle/cms/jcajce/c;->v(Loh/x;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p1, p4, p2, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    return-object p1
.end method
