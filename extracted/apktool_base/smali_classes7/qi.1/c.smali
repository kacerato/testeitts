.class public Lqi/c;
.super Loi/g;
.source "SourceFile"


# instance fields
.field public h:Lqi/a;


# direct methods
.method public constructor <init>(Loi/g;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Loi/g;->m()Lwh/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lqi/c;-><init>(Lwh/e;)V

    return-void
.end method

.method public constructor <init>(Lwh/e;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Loi/g;-><init>(Lwh/e;)V

    new-instance p1, Lqi/a;

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    invoke-direct {p1, v0}, Lqi/a;-><init>(Ldk/f;)V

    iput-object p1, p0, Lqi/c;->h:Lqi/a;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-static {p1}, Lwh/e;->w(Ljava/lang/Object;)Lwh/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lqi/c;-><init>(Lwh/e;)V

    return-void
.end method


# virtual methods
.method public o()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-virtual {p0}, Loi/g;->c()Lwh/g;

    move-result-object v0

    invoke-virtual {v0}, Lwh/g;->z()Lhi/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lqi/c;->h:Lqi/a;

    invoke-virtual {v1, v0}, Lqi/a;->l(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    invoke-virtual {p0}, Loi/g;->c()Lwh/g;

    move-result-object v0

    invoke-virtual {v0}, Lwh/g;->C()Lfi/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to construct DER encoding of name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lqi/c;
    .locals 2

    new-instance v0, Lqi/a;

    new-instance v1, Ldk/i;

    invoke-direct {v1, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lqi/a;-><init>(Ldk/f;)V

    iput-object v0, p0, Lqi/c;->h:Lqi/a;

    return-object p0
.end method

.method public r(Ljava/security/Provider;)Lqi/c;
    .locals 2

    new-instance v0, Lqi/a;

    new-instance v1, Ldk/k;

    invoke-direct {v1, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lqi/a;-><init>(Ldk/f;)V

    iput-object v0, p0, Lqi/c;->h:Lqi/a;

    return-object p0
.end method
