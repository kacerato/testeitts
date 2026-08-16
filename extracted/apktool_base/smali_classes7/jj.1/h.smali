.class public Ljj/h;
.super Lij/o;
.source "SourceFile"


# instance fields
.field public d:Ljj/k;

.field public e:Ljj/i;

.field public f:I

.field public g:Ljj/a;

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Long;

.field public j:Ljj/l;

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lij/o;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljj/g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljj/g;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljj/h;->e:Ljj/i;

    const/4 p1, 0x0

    iput p1, p0, Ljj/h;->f:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljj/h;->h:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljj/h;->k:Z

    new-instance p1, Ljj/l;

    invoke-static {}, Ljj/f;->c()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-direct {p1, v0}, Ljj/l;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Ljj/h;->j:Ljj/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lij/o;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljj/g;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljj/g;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljj/h;->e:Ljj/i;

    const/4 p1, 0x0

    iput p1, p0, Ljj/h;->f:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljj/h;->h:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljj/h;->k:Z

    new-instance p1, Ljj/l;

    invoke-direct {p1, p3}, Ljj/l;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Ljj/h;->j:Ljj/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjj/k;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lij/o;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljj/g;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljj/g;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljj/h;->e:Ljj/i;

    const/4 p1, 0x0

    iput p1, p0, Ljj/h;->f:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljj/h;->h:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljj/h;->k:Z

    if-eqz p3, :cond_0

    iput-object p3, p0, Ljj/h;->d:Ljj/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No socket factory creator."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljj/h;-><init>(Ljava/lang/String;[Ljavax/net/ssl/X509TrustManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lij/o;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljj/g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljj/g;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljj/h;->e:Ljj/i;

    const/4 p1, 0x0

    iput p1, p0, Ljj/h;->f:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljj/h;->h:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljj/h;->k:Z

    new-instance p1, Ljj/l;

    invoke-direct {p1, p2}, Ljj/l;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Ljj/h;->j:Ljj/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljj/k;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lij/o;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljj/g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljj/g;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljj/h;->e:Ljj/i;

    const/4 p1, 0x0

    iput p1, p0, Ljj/h;->f:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljj/h;->h:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljj/h;->k:Z

    if-eqz p2, :cond_0

    iput-object p2, p0, Ljj/h;->d:Ljj/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "No socket factory creator."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lij/o;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljj/g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljj/g;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Ljj/h;->e:Ljj/i;

    const/4 p1, 0x0

    iput p1, p0, Ljj/h;->f:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljj/h;->h:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljj/h;->k:Z

    new-instance p1, Ljj/l;

    invoke-direct {p1, p2}, Ljj/l;-><init>([Ljavax/net/ssl/X509TrustManager;)V

    iput-object p1, p0, Ljj/h;->j:Ljj/l;

    return-void
.end method


# virtual methods
.method public a()Lij/n;
    .locals 9

    iget-object v0, p0, Ljj/h;->g:Ljj/a;

    if-nez v0, :cond_0

    new-instance v0, Ljj/h$a;

    invoke-direct {v0, p0}, Ljj/h$a;-><init>(Ljj/h;)V

    iput-object v0, p0, Ljj/h;->g:Ljj/a;

    :cond_0
    iget-object v0, p0, Ljj/h;->d:Ljj/k;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljj/h;->j:Ljj/l;

    invoke-virtual {v0}, Ljj/l;->a()Ljj/k;

    move-result-object v0

    iput-object v0, p0, Ljj/h;->d:Ljj/k;

    :cond_1
    iget-object v0, p0, Lij/o;->b:Lij/h;

    if-nez v0, :cond_2

    new-instance v0, Ljj/d;

    iget-object v2, p0, Ljj/h;->e:Ljj/i;

    iget-object v3, p0, Ljj/h;->d:Ljj/k;

    iget v4, p0, Ljj/h;->f:I

    iget-object v5, p0, Ljj/h;->g:Ljj/a;

    iget-object v6, p0, Ljj/h;->h:Ljava/util/Set;

    iget-object v7, p0, Ljj/h;->i:Ljava/lang/Long;

    iget-boolean v8, p0, Ljj/h;->k:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljj/d;-><init>(Ljj/i;Ljj/k;ILjj/a;Ljava/util/Set;Ljava/lang/Long;Z)V

    iput-object v0, p0, Lij/o;->b:Lij/h;

    :cond_2
    invoke-super {p0}, Lij/o;->a()Lij/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lij/h;)Lij/o;
    .locals 0

    invoke-virtual {p0, p1}, Ljj/h;->g(Lij/h;)Ljj/h;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljj/h;
    .locals 1

    iget-object v0, p0, Ljj/h;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e([Ljava/lang/String;)Ljj/h;
    .locals 1

    iget-object v0, p0, Ljj/h;->h:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public f(Ljj/a;)Ljj/h;
    .locals 0

    iput-object p1, p0, Ljj/h;->g:Ljj/a;

    return-object p0
.end method

.method public g(Lij/h;)Ljj/h;
    .locals 0

    iput-object p1, p0, Lij/o;->b:Lij/h;

    return-object p0
.end method

.method public h(Z)Ljj/h;
    .locals 0

    iput-boolean p1, p0, Ljj/h;->k:Z

    return-object p0
.end method

.method public i(Ljj/i;)Ljj/h;
    .locals 0

    iput-object p1, p0, Ljj/h;->e:Ljj/i;

    return-object p0
.end method

.method public j(Ljavax/net/ssl/KeyManager;)Ljj/h;
    .locals 1

    iget-object v0, p0, Ljj/h;->d:Ljj/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljj/h;->j:Ljj/l;

    invoke-virtual {v0, p1}, Ljj/l;->b(Ljavax/net/ssl/KeyManager;)Ljj/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Socket Factory Creator was defined in the constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k([Ljavax/net/ssl/KeyManager;)Ljj/h;
    .locals 1

    iget-object v0, p0, Ljj/h;->d:Ljj/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljj/h;->j:Ljj/l;

    invoke-virtual {v0, p1}, Ljj/l;->c([Ljavax/net/ssl/KeyManager;)Ljj/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Socket Factory Creator was defined in the constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Ljava/lang/String;)Ljj/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v0, p0, Ljj/h;->d:Ljj/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljj/h;->j:Ljj/l;

    invoke-virtual {v0, p1}, Ljj/l;->d(Ljava/lang/String;)Ljj/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Socket Factory Creator was defined in the constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ljava/security/Provider;)Ljj/h;
    .locals 1

    iget-object v0, p0, Ljj/h;->d:Ljj/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljj/h;->j:Ljj/l;

    invoke-virtual {v0, p1}, Ljj/l;->e(Ljava/security/Provider;)Ljj/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Socket Factory Creator was defined in the constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(J)Ljj/h;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Ljj/h;->i:Ljava/lang/Long;

    return-object p0
.end method

.method public o(Ljava/security/SecureRandom;)Ljj/h;
    .locals 1

    iget-object v0, p0, Ljj/h;->d:Ljj/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljj/h;->j:Ljj/l;

    invoke-virtual {v0, p1}, Ljj/l;->f(Ljava/security/SecureRandom;)Ljj/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Socket Factory Creator was defined in the constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Ljava/lang/String;)Ljj/h;
    .locals 1

    iget-object v0, p0, Ljj/h;->d:Ljj/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljj/h;->j:Ljj/l;

    invoke-virtual {v0, p1}, Ljj/l;->g(Ljava/lang/String;)Ljj/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Socket Factory Creator was defined in the constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(I)Ljj/h;
    .locals 0

    iput p1, p0, Ljj/h;->f:I

    return-object p0
.end method
