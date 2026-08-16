.class public Lorg/bouncycastle/operator/jcajce/i;
.super LQk/c;
.source "SourceFile"


# instance fields
.field public b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field public c:Ljava/util/Map;

.field public d:Ljava/security/PrivateKey;

.field public e:[B

.field public f:[B


# direct methods
.method public constructor <init>(Lhi/b;Ljava/security/PrivateKey;[B[B)V
    .locals 1

    invoke-direct {p0, p1}, LQk/c;-><init>(Lhi/b;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/i;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/i;->c:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/i;->d:Ljava/security/PrivateKey;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/i;->e:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/i;->f:[B

    return-void
.end method


# virtual methods
.method public b(Lhi/b;[B)LQk/r;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    invoke-virtual {p0}, LQk/c;->a()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/y;->v(Ljava/lang/Object;)Luh/y;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/i;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, LQk/c;->a()Lhi/b;

    move-result-object v2

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/i;->c:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->d(Loh/x;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/i;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {v0}, Luh/y;->u()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->p(Loh/x;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Luh/y;->x()Lhi/b;

    move-result-object v3

    invoke-virtual {v3}, Lhi/b;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, Luh/T;->u(Ljava/lang/Object;)Luh/T;

    move-result-object v3

    invoke-virtual {v3}, Luh/T;->x()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    :try_start_0
    new-instance v5, Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {v0}, Luh/y;->u()Lhi/b;

    move-result-object v0

    iget-object v6, p0, Lorg/bouncycastle/operator/jcajce/i;->e:[B

    iget-object v7, p0, Lorg/bouncycastle/operator/jcajce/i;->f:[B

    invoke-direct {v5, v0, v6, v7}, Lorg/bouncycastle/crypto/util/f$b;-><init>(Lhi/b;[B[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/util/f$b;->a()Lorg/bouncycastle/crypto/util/f;

    move-result-object v0

    new-instance v5, Lck/r$a;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/f;->a()[B

    move-result-object v0

    invoke-direct {v5, v2, v4, v0}, Lck/r$a;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v3}, Luh/T;->v()Lhi/b;

    move-result-object v0

    invoke-virtual {v5, v0}, Lck/r$a;->b(Lhi/b;)Lck/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lck/r$a;->a()Lck/r;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/i;->d:Ljava/security/PrivateKey;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/i;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->m(Loh/x;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, p2, v0, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/bouncycastle/operator/jcajce/g;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/g;-><init>(Lhi/b;Ljava/security/Key;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap contents key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public c(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/i;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/i;

    invoke-direct {v1, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/i;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/i;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Ldk/k;

    invoke-direct {v1, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/i;->b:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
