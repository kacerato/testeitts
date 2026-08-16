.class public Lorg/bouncycastle/cms/jcajce/o;
.super LQk/c;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;

.field public final c:I

.field public d:Lorg/bouncycastle/cms/jcajce/d;

.field public e:Ljava/util/Map;

.field public f:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Lhi/b;Ljava/security/PrivateKey;)V
    .locals 1

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v0

    invoke-virtual {v0}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-direct {p0, v0}, LQk/c;-><init>(Lhi/b;)V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/o;->d:Lorg/bouncycastle/cms/jcajce/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/o;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/C;->v(Ljava/lang/Object;)Luh/C;

    move-result-object v0

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/o;->f:Ljava/security/PrivateKey;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/o;->b:Lhi/b;

    invoke-virtual {v0}, Luh/C;->C()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/a;->h(Loh/x;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/cms/jcajce/o;->c:I

    return-void
.end method


# virtual methods
.method public b(Lhi/b;[B)LQk/r;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    iget-object p2, p0, Lorg/bouncycastle/cms/jcajce/o;->b:Lhi/b;

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, Luh/C;->v(Ljava/lang/Object;)Luh/C;

    move-result-object p2

    invoke-virtual {p2}, Luh/C;->C()Lhi/b;

    move-result-object v0

    :try_start_0
    new-instance v1, Luh/k;

    iget v2, p0, Lorg/bouncycastle/cms/jcajce/o;->c:I

    invoke-virtual {p2}, Luh/C;->B()[B

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Luh/k;-><init>(Lhi/b;I[B)V

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/o;->f:Ljava/security/PrivateKey;

    instance-of v2, v2, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/o;->d:Lorg/bouncycastle/cms/jcajce/d;

    invoke-virtual {p2}, Luh/C;->y()Lhi/b;

    move-result-object v5

    invoke-virtual {v5}, Lhi/b;->u()Loh/x;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/cms/jcajce/a;->b(Ldk/f;Loh/x;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/a;->j(Loh/x;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lck/r$a;

    iget v6, p0, Lorg/bouncycastle/cms/jcajce/o;->c:I

    mul-int/lit8 v6, v6, 0x8

    invoke-direct {v5, v0, v6, v1}, Lck/r$a;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {p2}, Luh/C;->x()Lhi/b;

    move-result-object v1

    invoke-virtual {v5, v1}, Lck/r$a;->b(Lhi/b;)Lck/r$a;

    move-result-object v1

    invoke-virtual {v1}, Lck/r$a;->a()Lck/r;

    move-result-object v1

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/o;->f:Ljava/security/PrivateKey;

    invoke-virtual {v2, v4, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2}, Luh/C;->z()Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-virtual {p2}, Luh/C;->u()Loh/y;

    move-result-object p2

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    invoke-static {v1, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p2

    invoke-virtual {v2, p2, v0, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/g;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/g;-><init>(Lhi/b;Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to wrap contents key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/o;->d:Lorg/bouncycastle/cms/jcajce/d;

    invoke-virtual {p2}, Luh/C;->y()Lhi/b;

    move-result-object v5

    invoke-virtual {v5}, Lhi/b;->u()Loh/x;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/cms/jcajce/a;->b(Ldk/f;Loh/x;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/a;->j(Loh/x;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lck/r$a;

    iget v6, p0, Lorg/bouncycastle/cms/jcajce/o;->c:I

    mul-int/lit8 v6, v6, 0x8

    invoke-direct {v5, v0, v6, v1}, Lck/r$a;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {p2}, Luh/C;->x()Lhi/b;

    move-result-object v1

    invoke-virtual {v5, v1}, Lck/r$a;->b(Lhi/b;)Lck/r$a;

    move-result-object v1

    invoke-virtual {v1}, Lck/r$a;->a()Lck/r;

    move-result-object v1

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/o;->f:Ljava/security/PrivateKey;

    invoke-virtual {v2, v4, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2}, Luh/C;->z()Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-virtual {p2}, Luh/C;->u()Loh/y;

    move-result-object p2

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    invoke-static {v1, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p2

    invoke-virtual {v2, p2, v0, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/g;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/g;-><init>(Lhi/b;Ljava/security/Key;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :goto_0
    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception encrypting key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/cms/jcajce/o;->c:I

    return v0
.end method

.method public d(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/o;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/o;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/o;->d:Lorg/bouncycastle/cms/jcajce/d;

    return-object p0
.end method

.method public f(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/o;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/o;->d:Lorg/bouncycastle/cms/jcajce/d;

    return-object p0
.end method
