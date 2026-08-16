.class public Lwi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi/c;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Integer;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lwi/a;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwi/a;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lwi/a;->b:Ljava/lang/Integer;

    iput-boolean p1, p0, Lwi/a;->c:Z

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/n;
    .locals 2

    new-instance v0, Lwi/a;

    invoke-direct {v0}, Lwi/a;-><init>()V

    iget-boolean v1, p0, Lwi/a;->c:Z

    iput-boolean v1, v0, Lwi/a;->c:Z

    iget-boolean v1, p0, Lwi/a;->a:Z

    iput-boolean v1, v0, Lwi/a;->a:Z

    iget-object v1, p0, Lwi/a;->b:Ljava/lang/Integer;

    iput-object v1, v0, Lwi/a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public g(Lvi/d;Lli/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    sget-object v0, Lhi/B;->k:Loh/x;

    invoke-virtual {p1, v0}, Lvi/d;->a(Loh/x;)V

    iget-boolean p1, p0, Lwi/a;->a:Z

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lli/h;->d()Lhi/C;

    move-result-object p1

    invoke-static {p1}, Lhi/l;->u(Lhi/C;)Lhi/l;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhi/l;->z()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lwi/a;->c:Z

    if-nez v1, :cond_2

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lwi/a;->a:Z

    iget-object v1, p0, Lwi/a;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lli/h;->l()Lfi/d;

    move-result-object v1

    invoke-virtual {p2}, Lli/h;->e()Lfi/d;

    move-result-object p2

    invoke-virtual {v1, p2}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lwi/a;->b:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_3

    iget-object p2, p0, Lwi/a;->b:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-static {p2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lwi/a;->b:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Basic constraints violated: path length exceeded"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lhi/l;->z()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lhi/l;->y()Loh/s;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Loh/s;->M()I

    move-result p1

    iget-object p2, p0, Lwi/a;->b:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_6

    :cond_5
    invoke-static {p1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lwi/a;->b:Ljava/lang/Integer;

    :cond_6
    return-void

    :cond_7
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Basic constraints violated: issuer is not a CA"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 1

    check-cast p1, Lwi/a;

    iget-boolean v0, p1, Lwi/a;->c:Z

    iput-boolean v0, p0, Lwi/a;->c:Z

    iget-boolean v0, p1, Lwi/a;->a:Z

    iput-boolean v0, p0, Lwi/a;->a:Z

    iget-object p1, p1, Lwi/a;->b:Ljava/lang/Integer;

    iput-object p1, p0, Lwi/a;->b:Ljava/lang/Integer;

    return-void
.end method
