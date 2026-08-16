.class public LHj/a;
.super LHj/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LHj/a$b;,
        LHj/a$c;,
        LHj/a$d;,
        LHj/a$e;,
        LHj/a$f;
    }
.end annotation


# instance fields
.field public final d:Lorg/bouncycastle/crypto/util/m;

.field public final e:LHj/a$d;

.field public final f:LHj/a$e;

.field public final g:LHj/a$f;

.field public final h:Ljava/security/Key;

.field public final i:[Ljava/security/cert/X509Certificate;

.field public final j:LHj/a$c;


# direct methods
.method public constructor <init>(LHj/a$b;)V
    .locals 3

    .line 1
    invoke-static {p1}, LHj/a$b;->a(LHj/a$b;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, LHj/a$b;->c(LHj/a$b;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p1}, LHj/a$b;->d(LHj/a$b;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, LHj/c;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-static {p1}, LHj/a$b;->e(LHj/a$b;)Lorg/bouncycastle/crypto/util/m;

    move-result-object v0

    iput-object v0, p0, LHj/a;->d:Lorg/bouncycastle/crypto/util/m;

    invoke-static {p1}, LHj/a$b;->f(LHj/a$b;)LHj/a$d;

    move-result-object v0

    iput-object v0, p0, LHj/a;->e:LHj/a$d;

    invoke-static {p1}, LHj/a$b;->g(LHj/a$b;)LHj/a$e;

    move-result-object v0

    iput-object v0, p0, LHj/a;->f:LHj/a$e;

    invoke-static {p1}, LHj/a$b;->h(LHj/a$b;)LHj/a$f;

    move-result-object v0

    iput-object v0, p0, LHj/a;->g:LHj/a$f;

    invoke-static {p1}, LHj/a$b;->i(LHj/a$b;)Ljava/security/Key;

    move-result-object v0

    iput-object v0, p0, LHj/a;->h:Ljava/security/Key;

    invoke-static {p1}, LHj/a$b;->j(LHj/a$b;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, LHj/a;->i:[Ljava/security/cert/X509Certificate;

    invoke-static {p1}, LHj/a$b;->b(LHj/a$b;)LHj/a$c;

    move-result-object p1

    iput-object p1, p0, LHj/a;->j:LHj/a$c;

    return-void
.end method

.method public synthetic constructor <init>(LHj/a$b;LHj/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LHj/a;-><init>(LHj/a$b;)V

    return-void
.end method


# virtual methods
.method public c()LHj/a$c;
    .locals 1

    iget-object v0, p0, LHj/a;->j:LHj/a$c;

    return-object v0
.end method

.method public d()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, LHj/a;->i:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public e()LHj/a$d;
    .locals 1

    iget-object v0, p0, LHj/a;->e:LHj/a$d;

    return-object v0
.end method

.method public f()LHj/a$e;
    .locals 1

    iget-object v0, p0, LHj/a;->f:LHj/a$e;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/crypto/util/m;
    .locals 1

    iget-object v0, p0, LHj/a;->d:Lorg/bouncycastle/crypto/util/m;

    return-object v0
.end method

.method public h()LHj/a$f;
    .locals 1

    iget-object v0, p0, LHj/a;->g:LHj/a$f;

    return-object v0
.end method

.method public i()Ljava/security/Key;
    .locals 1

    iget-object v0, p0, LHj/a;->h:Ljava/security/Key;

    return-object v0
.end method
