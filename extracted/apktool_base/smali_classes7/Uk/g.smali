.class public LUk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSk/g;


# instance fields
.field public a:Ldk/f;

.field public b:Loh/x;

.field public c:Ljava/security/SecureRandom;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LWh/b;->i:Loh/x;

    invoke-direct {p0, v0}, LUk/g;-><init>(Loh/x;)V

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LUk/g;->a:Ldk/f;

    const/16 v0, 0x400

    iput v0, p0, LUk/g;->e:I

    iput-object p1, p0, LUk/g;->b:Loh/x;

    return-void
.end method

.method public static synthetic c(LUk/g;)Loh/x;
    .locals 0

    iget-object p0, p0, LUk/g;->b:Loh/x;

    return-object p0
.end method

.method public static synthetic d(LUk/g;)I
    .locals 0

    iget p0, p0, LUk/g;->e:I

    return p0
.end method


# virtual methods
.method public a([C)LQk/A;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LUk/g;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, LUk/g;->c:Ljava/security/SecureRandom;

    :cond_0
    :try_start_0
    iget-object v0, p0, LUk/g;->a:Ldk/f;

    iget-object v1, p0, LUk/g;->b:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->w(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    iput v1, p0, LUk/g;->d:I

    new-array v1, v1, [B

    iget-object v2, p0, LUk/g;->c:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    iget v3, p0, LUk/g;->e:I

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance v3, LHj/l;

    invoke-direct {v3, p1}, LHj/l;-><init>([C)V

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p1, LUk/g$a;

    invoke-direct {p1, p0, v1, v0, v3}, LUk/g$a;-><init>(LUk/g;[BLjavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create MAC calculator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Lhi/b;
    .locals 3

    new-instance v0, Lhi/b;

    iget-object v1, p0, LUk/g;->b:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method

.method public e(I)LUk/g;
    .locals 0

    iput p1, p0, LUk/g;->e:I

    return-object p0
.end method

.method public f(Ljava/lang/String;)LUk/g;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LUk/g;->a:Ldk/f;

    return-object p0
.end method

.method public g(Ljava/security/Provider;)LUk/g;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LUk/g;->a:Ldk/f;

    return-object p0
.end method
