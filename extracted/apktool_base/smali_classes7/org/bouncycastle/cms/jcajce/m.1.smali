.class public Lorg/bouncycastle/cms/jcajce/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/bouncycastle/cms/jcajce/c;

.field public b:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/m;->a:Lorg/bouncycastle/cms/jcajce/c;

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)Ljava/security/AlgorithmParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/m;->a:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;->c(Loh/x;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/cms/jcajce/a;->o(Ljava/security/AlgorithmParameters;Loh/g;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "can\'t find provider for algorithm"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "can\'t find parameters for algorithm"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/m;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/m;->a:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public c(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/m;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/m;->a:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method
