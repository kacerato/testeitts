.class public Lorg/bouncycastle/operator/jcajce/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/h;->b([B)LQk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljavax/crypto/Cipher;

.field public b:Lhi/b;

.field public final synthetic c:[B

.field public final synthetic d:Lorg/bouncycastle/operator/jcajce/h;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/jcajce/h;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/h$a;->d:Lorg/bouncycastle/operator/jcajce/h;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/h$a;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lorg/bouncycastle/operator/jcajce/h$a;)Lhi/b;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/h$a;->b:Lhi/b;

    return-object p0
.end method

.method public static synthetic c(Lorg/bouncycastle/operator/jcajce/h$a;)Ljavax/crypto/Cipher;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/operator/jcajce/h$a;->a:Ljavax/crypto/Cipher;

    return-object p0
.end method


# virtual methods
.method public a(Lhi/b;)LQk/t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/h$a;->b:Lhi/b;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/h$a;->d:Lorg/bouncycastle/operator/jcajce/h;

    invoke-static {v1}, Lorg/bouncycastle/operator/jcajce/h;->a(Lorg/bouncycastle/operator/jcajce/h;)Ldk/f;

    move-result-object v1

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/operator/jcajce/h$a;->a:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/h$a;->c:[B

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    instance-of v0, p1, Loh/y;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/h$a;->a:Ljavax/crypto/Cipher;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lyh/d;->w(Ljava/lang/Object;)Lyh/d;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/h$a;->a:Ljavax/crypto/Cipher;

    new-instance v3, Lck/j;

    invoke-virtual {p1}, Lyh/d;->u()Loh/x;

    move-result-object v4

    invoke-virtual {p1}, Lyh/d;->v()[B

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lck/j;-><init>(Loh/x;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/bouncycastle/operator/jcajce/h$a$a;

    invoke-direct {p1, p0}, Lorg/bouncycastle/operator/jcajce/h$a$a;-><init>(Lorg/bouncycastle/operator/jcajce/h$a;)V

    return-object p1

    :goto_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create InputDecryptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
