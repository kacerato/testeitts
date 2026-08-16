.class public LPk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;


# instance fields
.field public a:Ldk/f;

.field public b:Ljava/security/AlgorithmParameters;

.field public c:Loh/x;

.field public d:[B

.field public e:I

.field public f:Ljavax/crypto/Cipher;

.field public g:Ljava/security/SecureRandom;

.field public h:Ljava/security/AlgorithmParameterGenerator;

.field public i:[C

.field public j:Ljavax/crypto/SecretKey;

.field public k:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LSh/d;->y:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->l:Ljava/lang/String;

    sget-object v0, LSh/d;->H:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->m:Ljava/lang/String;

    sget-object v0, LSh/d;->Q:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->n:Ljava/lang/String;

    sget-object v0, LXh/t;->n1:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->o:Ljava/lang/String;

    sget-object v0, LXh/t;->e4:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->p:Ljava/lang/String;

    sget-object v0, LXh/t;->f4:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->q:Ljava/lang/String;

    sget-object v0, LXh/t;->g4:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->r:Ljava/lang/String;

    sget-object v0, LXh/t;->h4:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->s:Ljava/lang/String;

    sget-object v0, LXh/t;->i4:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->t:Ljava/lang/String;

    sget-object v0, LXh/t;->j4:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LPk/g;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LPk/g;->a:Ldk/f;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->w1:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object v0, p0, LPk/g;->k:Lhi/b;

    iput-object p1, p0, LPk/g;->c:Loh/x;

    const/16 p1, 0x800

    iput p1, p0, LPk/g;->e:I

    return-void
.end method

.method public static synthetic a(LPk/g;)Ljavax/crypto/Cipher;
    .locals 0

    iget-object p0, p0, LPk/g;->f:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method public static synthetic b(LPk/g;)Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, LPk/g;->j:Ljavax/crypto/SecretKey;

    return-object p0
.end method


# virtual methods
.method public c()LQk/F;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LPk/g;->g:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, LPk/g;->g:Ljava/security/SecureRandom;

    :cond_0
    :try_start_0
    iget-object v0, p0, LPk/g;->a:Ldk/f;

    iget-object v1, p0, LPk/g;->c:Loh/x;

    invoke-static {v1}, LPk/j;->e(Loh/x;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, LPk/g;->f:Ljavax/crypto/Cipher;

    iget-object v0, p0, LPk/g;->c:Loh/x;

    invoke-static {v0}, LPk/j;->m(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LPk/g;->a:Ldk/f;

    iget-object v1, p0, LPk/g;->c:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->o(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v0

    iput-object v0, p0, LPk/g;->h:Ljava/security/AlgorithmParameterGenerator;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v0, p0, LPk/g;->c:Loh/x;

    invoke-static {v0}, LPk/j;->m(Loh/x;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, LPk/g;->k:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, LPk/j;->i(Loh/x;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, LPk/g;->d:[B

    iget-object v2, p0, LPk/g;->g:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, LPk/g;->h:Ljava/security/AlgorithmParameterGenerator;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, LPk/g;->b:Ljava/security/AlgorithmParameters;

    :try_start_1
    new-instance v2, LXh/k;

    iget-object v3, p0, LPk/g;->c:Loh/x;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    invoke-direct {v2, v3, v0}, LXh/k;-><init>(Loh/x;Loh/g;)V

    new-instance v0, LXh/m;

    sget-object v3, LXh/t;->h1:Loh/x;

    new-instance v4, LXh/q;

    iget-object v5, p0, LPk/g;->d:[B

    iget v6, p0, LPk/g;->e:I

    iget-object v7, p0, LPk/g;->k:Lhi/b;

    invoke-direct {v4, v5, v6, v7}, LXh/q;-><init>([BILhi/b;)V

    invoke-direct {v0, v3, v4}, LXh/m;-><init>(Loh/x;Loh/g;)V

    new-instance v3, Loh/h;

    invoke-direct {v3}, Loh/h;-><init>()V

    invoke-virtual {v3, v0}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v3, v2}, Loh/h;->a(Loh/g;)V

    new-instance v0, Lhi/b;

    sget-object v2, LXh/t;->j1:Loh/x;

    new-instance v4, Loh/G0;

    invoke-direct {v4, v3}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v4}, LXh/p;->v(Ljava/lang/Object;)LXh/p;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v2, p0, LPk/g;->k:Lhi/b;

    invoke-static {v2}, LPk/j;->j(Lhi/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LPk/g;->a:Ldk/f;

    iget-object v3, p0, LPk/g;->c:Loh/x;

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LPk/g;->i:[C

    iget-object v5, p0, LPk/g;->d:[B

    iget v6, p0, LPk/g;->e:I

    invoke-static {v2, v3, v4, v5, v6}, LPk/j;->b(Ldk/f;Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v2

    :goto_1
    iput-object v2, p0, LPk/g;->j:Ljavax/crypto/SecretKey;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v2, p0, LPk/g;->a:Ldk/f;

    iget-object v3, p0, LPk/g;->c:Loh/x;

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LPk/g;->i:[C

    iget-object v5, p0, LPk/g;->d:[B

    iget v6, p0, LPk/g;->e:I

    iget-object v7, p0, LPk/g;->k:Lhi/b;

    invoke-static/range {v2 .. v7}, LPk/j;->c(Ldk/f;Ljava/lang/String;[C[BILhi/b;)Ljavax/crypto/SecretKey;

    move-result-object v2

    goto :goto_1

    :goto_2
    iget-object v2, p0, LPk/g;->f:Ljavax/crypto/Cipher;

    iget-object v3, p0, LPk/g;->j:Ljavax/crypto/SecretKey;

    iget-object v4, p0, LPk/g;->b:Ljava/security/AlgorithmParameters;

    invoke-virtual {v2, v1, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_3
    new-instance v1, Lorg/bouncycastle/operator/OperatorCreationException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/OperatorCreationException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    iget-object v0, p0, LPk/g;->c:Loh/x;

    invoke-static {v0}, LPk/j;->k(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    iput-object v2, p0, LPk/g;->d:[B

    iget-object v3, p0, LPk/g;->g:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Loh/C0;

    iget-object v3, p0, LPk/g;->d:[B

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/s;

    iget v3, p0, LPk/g;->e:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Lhi/b;

    iget-object v3, p0, LPk/g;->c:Loh/x;

    new-instance v4, Loh/G0;

    invoke-direct {v4, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v4}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :try_start_3
    iget-object v0, p0, LPk/g;->f:Ljavax/crypto/Cipher;

    new-instance v3, LHj/m;

    iget-object v4, p0, LPk/g;->i:[C

    iget-object v5, p0, LPk/g;->d:[B

    iget v6, p0, LPk/g;->e:I

    invoke-direct {v3, v4, v5, v6}, LHj/m;-><init>([C[BI)V

    invoke-virtual {v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v2

    :goto_4
    new-instance v1, LPk/g$a;

    invoke-direct {v1, p0, v0}, LPk/g$a;-><init>(LPk/g;Lhi/b;)V

    return-object v1

    :catch_3
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/OperatorCreationException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LPk/g;->c:Loh/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_5
    new-instance v1, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LPk/g;->c:Loh/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d(I)LPk/g;
    .locals 0

    iput p1, p0, LPk/g;->e:I

    return-object p0
.end method

.method public e(Lhi/b;)LPk/g;
    .locals 0

    iput-object p1, p0, LPk/g;->k:Lhi/b;

    return-object p0
.end method

.method public f([C)LPk/g;
    .locals 0

    iput-object p1, p0, LPk/g;->i:[C

    return-object p0
.end method

.method public g([C)LPk/g;
    .locals 0

    iput-object p1, p0, LPk/g;->i:[C

    return-object p0
.end method

.method public h(Ljava/lang/String;)LPk/g;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LPk/g;->a:Ldk/f;

    return-object p0
.end method

.method public i(Ljava/security/Provider;)LPk/g;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LPk/g;->a:Ldk/f;

    return-object p0
.end method

.method public j(Ljava/security/SecureRandom;)LPk/g;
    .locals 0

    iput-object p1, p0, LPk/g;->g:Ljava/security/SecureRandom;

    return-object p0
.end method
