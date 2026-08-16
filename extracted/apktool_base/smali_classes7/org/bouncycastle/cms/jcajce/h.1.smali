.class public Lorg/bouncycastle/cms/jcajce/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/h$b;,
        Lorg/bouncycastle/cms/jcajce/h$c;,
        Lorg/bouncycastle/cms/jcajce/h$d;
    }
.end annotation


# instance fields
.field public a:Lorg/bouncycastle/cms/jcajce/h$b;

.field public b:LQk/q;

.field public c:Lorg/bouncycastle/cms/M;

.field public d:LQk/J;


# direct methods
.method public constructor <init>(LQk/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/h$b;-><init>(Lorg/bouncycastle/cms/jcajce/h$a;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/h;->a:Lorg/bouncycastle/cms/jcajce/h$b;

    new-instance v0, Lorg/bouncycastle/cms/Z;

    invoke-direct {v0}, Lorg/bouncycastle/cms/Z;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/h;->c:Lorg/bouncycastle/cms/M;

    new-instance v0, LQk/m;

    invoke-direct {v0}, LQk/m;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/h;->d:LQk/J;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/h;->b:LQk/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/PublicKey;)Lorg/bouncycastle/cms/P0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/P0;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/h;->c:Lorg/bouncycastle/cms/M;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/h;->d:LQk/J;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/h;->a:Lorg/bouncycastle/cms/jcajce/h$b;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/h$b;->a(Ljava/security/PublicKey;)LQk/h;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/h;->b:LQk/q;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/P0;-><init>(Lorg/bouncycastle/cms/M;LQk/J;LQk/h;LQk/q;)V

    return-object v0
.end method

.method public b(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/P0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/P0;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/h;->c:Lorg/bouncycastle/cms/M;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/h;->d:LQk/J;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/h;->a:Lorg/bouncycastle/cms/jcajce/h$b;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/h$b;->b(Ljava/security/cert/X509Certificate;)LQk/h;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/h;->b:LQk/q;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/P0;-><init>(Lorg/bouncycastle/cms/M;LQk/J;LQk/h;LQk/q;)V

    return-object v0
.end method

.method public c(Lli/h;)Lorg/bouncycastle/cms/P0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cms/P0;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/h;->c:Lorg/bouncycastle/cms/M;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/h;->d:LQk/J;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/h;->a:Lorg/bouncycastle/cms/jcajce/h$b;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/h$b;->c(Lli/h;)LQk/h;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/h;->b:LQk/q;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/P0;-><init>(Lorg/bouncycastle/cms/M;LQk/J;LQk/h;LQk/q;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/h;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/h$c;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/h$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/h;->a:Lorg/bouncycastle/cms/jcajce/h$b;

    return-object p0
.end method

.method public e(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/h;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/h$d;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/h$d;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/h;->a:Lorg/bouncycastle/cms/jcajce/h$b;

    return-object p0
.end method

.method public f(LQk/J;)Lorg/bouncycastle/cms/jcajce/h;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/h;->d:LQk/J;

    return-object p0
.end method

.method public g(Lorg/bouncycastle/cms/M;)Lorg/bouncycastle/cms/jcajce/h;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/h;->c:Lorg/bouncycastle/cms/M;

    return-object p0
.end method
