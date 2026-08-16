.class public Lorg/bouncycastle/cms/jcajce/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/i$b;,
        Lorg/bouncycastle/cms/jcajce/i$c;,
        Lorg/bouncycastle/cms/jcajce/i$d;
    }
.end annotation


# instance fields
.field public a:Lorg/bouncycastle/cms/jcajce/i$b;

.field public b:Z

.field public c:Lorg/bouncycastle/cms/d;

.field public d:Lorg/bouncycastle/cms/d;

.field public e:Lhi/b;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/i$b;-><init>(Lorg/bouncycastle/cms/jcajce/i$a;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/i;->a:Lorg/bouncycastle/cms/jcajce/i$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/L0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/i;->a:Lorg/bouncycastle/cms/jcajce/i$b;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/i$b;->a(Ljava/lang/String;Ljava/security/PrivateKey;)LQk/f;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/i;->d()Lorg/bouncycastle/cms/M0;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v0, p3}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/cms/M0;->a(LQk/f;Lli/h;)Lorg/bouncycastle/cms/L0;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/security/PrivateKey;Lli/h;)Lorg/bouncycastle/cms/L0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/i;->a:Lorg/bouncycastle/cms/jcajce/i$b;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/i$b;->a(Ljava/lang/String;Ljava/security/PrivateKey;)LQk/f;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/i;->d()Lorg/bouncycastle/cms/M0;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/cms/M0;->a(LQk/f;Lli/h;)Lorg/bouncycastle/cms/L0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/security/PrivateKey;[B)Lorg/bouncycastle/cms/L0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/i;->a:Lorg/bouncycastle/cms/jcajce/i$b;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/i$b;->a(Ljava/lang/String;Ljava/security/PrivateKey;)LQk/f;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/i;->d()Lorg/bouncycastle/cms/M0;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/bouncycastle/cms/M0;->b(LQk/f;[B)Lorg/bouncycastle/cms/L0;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lorg/bouncycastle/cms/M0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/M0;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/i;->a:Lorg/bouncycastle/cms/jcajce/i$b;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/jcajce/i$b;->b()LQk/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/M0;-><init>(LQk/q;)V

    iget-boolean v1, p0, Lorg/bouncycastle/cms/jcajce/i;->b:Z

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/M0;->e(Z)Lorg/bouncycastle/cms/M0;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/i;->e:Lhi/b;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/M0;->d(Lhi/b;)Lorg/bouncycastle/cms/M0;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/i;->c:Lorg/bouncycastle/cms/d;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/M0;->f(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/M0;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/i;->d:Lorg/bouncycastle/cms/d;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/M0;->g(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/M0;

    return-object v0
.end method

.method public e(Lhi/b;)Lorg/bouncycastle/cms/jcajce/i;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/i;->e:Lhi/b;

    return-object p0
.end method

.method public f(Z)Lorg/bouncycastle/cms/jcajce/i;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/i;->b:Z

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/jcajce/i$c;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/i$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/i;->a:Lorg/bouncycastle/cms/jcajce/i$b;

    return-object p0
.end method

.method public h(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/jcajce/i$d;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/i$d;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/i;->a:Lorg/bouncycastle/cms/jcajce/i$b;

    return-object p0
.end method

.method public i(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/jcajce/i;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/i;->c:Lorg/bouncycastle/cms/d;

    return-object p0
.end method

.method public j(Luh/b;)Lorg/bouncycastle/cms/jcajce/i;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/b0;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/b0;-><init>(Luh/b;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/i;->c:Lorg/bouncycastle/cms/d;

    return-object p0
.end method

.method public k(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/jcajce/i;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/i;->d:Lorg/bouncycastle/cms/d;

    return-object p0
.end method
