.class public Lwi/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi/c;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lwi/e;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lwi/e;->a:Z

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/n;
    .locals 2

    new-instance v0, Lwi/e;

    iget-boolean v1, p0, Lwi/e;->a:Z

    invoke-direct {v0, v1}, Lwi/e;-><init>(Z)V

    return-object v0
.end method

.method public g(Lvi/d;Lli/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    sget-object v0, Lhi/B;->g:Loh/x;

    invoke-virtual {p1, v0}, Lvi/d;->a(Loh/x;)V

    invoke-virtual {p1}, Lvi/d;->c()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lli/h;->d()Lhi/C;

    move-result-object p1

    invoke-static {p1}, Lhi/N;->u(Lhi/C;)Lhi/N;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lhi/N;->x(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Issuer certificate KeyUsage extension does not permit key signing"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean p1, p0, Lwi/e;->a:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "KeyUsage extension not present in CA certificate"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 0

    check-cast p1, Lwi/e;

    iget-boolean p1, p1, Lwi/e;->a:Z

    iput-boolean p1, p0, Lwi/e;->a:Z

    return-void
.end method
