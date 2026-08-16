.class public Lorg/bouncycastle/cms/jcajce/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/c;->g(Ljava/security/Key;Lhi/b;)Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:Ljava/security/Key;

.field public final synthetic c:Lorg/bouncycastle/cms/jcajce/c;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/c;Lhi/b;Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/c$a;->c:Lorg/bouncycastle/cms/jcajce/c;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/c$a;->a:Lhi/b;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/c$a;->b:Ljava/security/Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/c$a;->a:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, Luh/l;->I8:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/c$a;->a:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/c$a;->a:Lhi/b;

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/c$a;->c:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/jcajce/c;->f(Loh/x;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v2

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    instance-of v5, v2, Loh/t;

    if-nez v5, :cond_3

    :try_start_0
    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/c$a;->c:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/cms/jcajce/c;->c(Loh/x;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/cms/jcajce/a;->o(Ljava/security/AlgorithmParameters;Loh/g;)V

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/c$a;->b:Ljava/security/Key;

    invoke-virtual {v1, v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    sget-object v5, Lorg/bouncycastle/cms/c;->a:Loh/x;

    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lorg/bouncycastle/cms/C;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lorg/bouncycastle/cms/C;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lorg/bouncycastle/cms/C;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lorg/bouncycastle/cms/C;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lorg/bouncycastle/cms/C;->j:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/c$a;->b:Ljava/security/Key;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_3

    :cond_3
    sget-object v0, Lorg/bouncycastle/cms/c;->a:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/cms/C;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/cms/C;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/cms/C;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/c$a;->b:Ljava/security/Key;

    invoke-virtual {v1, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/c$a;->b:Ljava/security/Key;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v3, 0x8

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v4, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_3
    return-object v1
.end method
