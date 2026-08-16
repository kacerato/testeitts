.class public Lorg/bouncycastle/operator/jcajce/j;
.super LQk/d;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:[B

.field public final e:[B

.field public f:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field public g:Ljava/security/PublicKey;

.field public h:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;I[B[B)V
    .locals 10

    .line 1
    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->P2:Loh/x;

    new-instance v2, Luh/y;

    new-instance v3, Lhi/b;

    sget-object v4, LNh/a;->h:Loh/x;

    new-instance v5, Luh/T;

    new-instance v6, Lhi/b;

    sget-object v7, Lki/r;->P6:Loh/x;

    new-instance v8, Lhi/b;

    sget-object v9, LSh/d;->c:Loh/x;

    invoke-direct {v8, v9}, Lhi/b;-><init>(Loh/x;)V

    invoke-direct {v6, v7, v8}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    add-int/lit8 v7, p3, 0x7

    div-int/lit8 v7, v7, 0x8

    invoke-direct {v5, v6, v7}, Luh/T;-><init>(Lhi/b;I)V

    invoke-direct {v3, v4, v5}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-static {p2, p3}, Lorg/bouncycastle/operator/jcajce/l;->c(Ljava/lang/String;I)Lhi/b;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Luh/y;-><init>(Lhi/b;Lhi/b;)V

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p0, v0}, LQk/d;-><init>(Lhi/b;)V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/d;

    invoke-direct {v1}, Ldk/d;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/j;->f:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/j;->g:Ljava/security/PublicKey;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/j;->b:Ljava/lang/String;

    iput p3, p0, Lorg/bouncycastle/operator/jcajce/j;->c:I

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/j;->d:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/j;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;I[B[B)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/operator/jcajce/j;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I[B[B)V

    return-void
.end method


# virtual methods
.method public b(LQk/r;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/j;->f:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->d(Loh/x;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/crypto/util/f$b;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/j;->b:Ljava/lang/String;

    iget v3, p0, Lorg/bouncycastle/operator/jcajce/j;->c:I

    invoke-static {v2, v3}, Lorg/bouncycastle/operator/jcajce/l;->c(Ljava/lang/String;I)Lhi/b;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/j;->d:[B

    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/j;->e:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/util/f$b;-><init>(Lhi/b;[B[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/f$b;->a()Lorg/bouncycastle/crypto/util/f;

    move-result-object v1

    new-instance v2, Lck/r$a;

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/j;->b:Ljava/lang/String;

    iget v4, p0, Lorg/bouncycastle/operator/jcajce/j;->c:I

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/f;->a()[B

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lck/r$a;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v2}, Lck/r$a;->a()Lck/r;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/j;->g:Ljava/security/PublicKey;

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/j;->h:Ljava/security/SecureRandom;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/m;->a(LQk/r;)Ljava/security/Key;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to wrap contents key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/j;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/i;

    invoke-direct {v1, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/j;->f:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/j;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/k;

    invoke-direct {v1, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/j;->f:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public e(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/j;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/j;->h:Ljava/security/SecureRandom;

    return-object p0
.end method
