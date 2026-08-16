.class public Lxk/a;
.super Lwk/a;
.source "SourceFile"


# instance fields
.field public c:Ldk/f;


# direct methods
.method public constructor <init>(LRh/b;Ldk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwk/a;-><init>(LRh/b;)V

    new-instance p1, Ldk/d;

    invoke-direct {p1}, Ldk/d;-><init>()V

    iput-object p2, p0, Lxk/a;->c:Ldk/f;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lwk/a;-><init>([B)V

    new-instance p1, Ldk/d;

    invoke-direct {p1}, Ldk/d;-><init>()V

    iput-object p1, p0, Lxk/a;->c:Ldk/f;

    return-void
.end method


# virtual methods
.method public j()Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lwk/a;->b:LRh/b;

    invoke-virtual {v0}, LRh/b;->v()LRh/a;

    move-result-object v0

    invoke-virtual {v0}, LRh/a;->x()Lhi/h0;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    iget-object v2, p0, Lxk/a;->c:Ldk/f;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ldk/f;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "error encoding public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Ljava/lang/String;)Lxk/a;
    .locals 3

    new-instance v0, Lxk/a;

    iget-object v1, p0, Lwk/a;->b:LRh/b;

    new-instance v2, Ldk/i;

    invoke-direct {v2, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lxk/a;-><init>(LRh/b;Ldk/f;)V

    return-object v0
.end method

.method public l(Ljava/security/Provider;)Lxk/a;
    .locals 3

    new-instance v0, Lxk/a;

    iget-object v1, p0, Lwk/a;->b:LRh/b;

    new-instance v2, Ldk/k;

    invoke-direct {v2, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1, v2}, Lxk/a;-><init>(LRh/b;Ldk/f;)V

    return-object v0
.end method
