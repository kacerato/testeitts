.class public Lorg/bouncycastle/cms/jcajce/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/j$b;,
        Lorg/bouncycastle/cms/jcajce/j$c;,
        Lorg/bouncycastle/cms/jcajce/j$d;
    }
.end annotation


# instance fields
.field public a:Lorg/bouncycastle/cms/jcajce/j$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/j$b;-><init>(Lorg/bouncycastle/cms/jcajce/j$a;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

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

    new-instance v1, Lorg/bouncycastle/cms/Z;

    invoke-direct {v1}, Lorg/bouncycastle/cms/Z;-><init>()V

    new-instance v2, LQk/m;

    invoke-direct {v2}, LQk/m;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/j$b;->a(Ljava/security/PublicKey;)LQk/h;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/jcajce/j$b;->d()LQk/q;

    move-result-object v3

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

    new-instance v1, Lorg/bouncycastle/cms/Z;

    invoke-direct {v1}, Lorg/bouncycastle/cms/Z;-><init>()V

    new-instance v2, LQk/m;

    invoke-direct {v2}, LQk/m;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/j$b;->b(Ljava/security/cert/X509Certificate;)LQk/h;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/jcajce/j$b;->d()LQk/q;

    move-result-object v3

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

    new-instance v1, Lorg/bouncycastle/cms/Z;

    invoke-direct {v1}, Lorg/bouncycastle/cms/Z;-><init>()V

    new-instance v2, LQk/m;

    invoke-direct {v2}, LQk/m;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/j$b;->c(Lli/h;)LQk/h;

    move-result-object p1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/jcajce/j$b;->d()LQk/q;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/cms/P0;-><init>(Lorg/bouncycastle/cms/M;LQk/J;LQk/h;LQk/q;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/j;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/j$c;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/j$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

    return-object p0
.end method

.method public e(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/j;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/j$d;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/j$d;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/j;->a:Lorg/bouncycastle/cms/jcajce/j$b;

    return-object p0
.end method
