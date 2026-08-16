.class public Lorg/bouncycastle/cms/jcajce/h$c;
.super Lorg/bouncycastle/cms/jcajce/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/h$b;-><init>(Lorg/bouncycastle/cms/jcajce/h$a;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/h$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/PublicKey;)LQk/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/c;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/c;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/h$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/c;->l(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/c;->f(Ljava/security/PublicKey;)LQk/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/security/cert/X509Certificate;)LQk/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/c;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/c;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/h$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/c;->l(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/c;->g(Ljava/security/cert/X509Certificate;)LQk/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Lli/h;)LQk/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/c;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/c;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/h$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/c;->l(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/c;->h(Lli/h;)LQk/h;

    move-result-object p1

    return-object p1
.end method

.method public d()LQk/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/d;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/d;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/h$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/d;->d(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/d;->b()LQk/q;

    move-result-object v0

    return-object v0
.end method
