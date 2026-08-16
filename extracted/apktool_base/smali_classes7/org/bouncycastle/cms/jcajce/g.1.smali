.class public Lorg/bouncycastle/cms/jcajce/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/bouncycastle/cms/M0;


# direct methods
.method public constructor <init>(LQk/q;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/a0;

    invoke-direct {v0}, Lorg/bouncycastle/cms/a0;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/g;-><init>(LQk/q;Lorg/bouncycastle/cms/N;)V

    return-void
.end method

.method public constructor <init>(LQk/q;Lorg/bouncycastle/cms/N;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/M0;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/cms/M0;-><init>(LQk/q;Lorg/bouncycastle/cms/N;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/g;->a:Lorg/bouncycastle/cms/M0;

    return-void
.end method


# virtual methods
.method public a(LQk/f;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/L0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v0, p2}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/g;->b(LQk/f;Lli/h;)Lorg/bouncycastle/cms/L0;

    move-result-object p1

    return-object p1
.end method

.method public b(LQk/f;Lli/h;)Lorg/bouncycastle/cms/L0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/g;->a:Lorg/bouncycastle/cms/M0;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/M0;->a(LQk/f;Lli/h;)Lorg/bouncycastle/cms/L0;

    move-result-object p1

    return-object p1
.end method

.method public c(LQk/f;[B)Lorg/bouncycastle/cms/L0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/g;->a:Lorg/bouncycastle/cms/M0;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/M0;->b(LQk/f;[B)Lorg/bouncycastle/cms/L0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lhi/b;)Lorg/bouncycastle/cms/jcajce/g;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/g;->a:Lorg/bouncycastle/cms/M0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/M0;->d(Lhi/b;)Lorg/bouncycastle/cms/M0;

    return-object p0
.end method

.method public e(Z)Lorg/bouncycastle/cms/jcajce/g;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/g;->a:Lorg/bouncycastle/cms/M0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/M0;->e(Z)Lorg/bouncycastle/cms/M0;

    return-object p0
.end method

.method public f(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/jcajce/g;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/g;->a:Lorg/bouncycastle/cms/M0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/M0;->f(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/M0;

    return-object p0
.end method

.method public g(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/jcajce/g;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/g;->a:Lorg/bouncycastle/cms/M0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/M0;->g(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/M0;

    return-object p0
.end method
