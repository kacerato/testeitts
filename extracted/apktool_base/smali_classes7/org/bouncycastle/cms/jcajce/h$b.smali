.class public Lorg/bouncycastle/cms/jcajce/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/cms/jcajce/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/cms/jcajce/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/security/PublicKey;)LQk/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/c;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/c;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/c;->f(Ljava/security/PublicKey;)LQk/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/security/cert/X509Certificate;)LQk/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/c;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/c;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/c;->g(Ljava/security/cert/X509Certificate;)LQk/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Lli/h;)LQk/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/c;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/c;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/c;->h(Lli/h;)LQk/h;

    move-result-object p1

    return-object p1
.end method

.method public d()LQk/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/d;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/d;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/d;->b()LQk/q;

    move-result-object v0

    return-object v0
.end method
