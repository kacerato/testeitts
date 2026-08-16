.class public LHj/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Ljava/io/InputStream;

.field public final c:Ljava/security/KeyStore$ProtectionParameter;

.field public final d:Ljava/security/Key;

.field public e:Lorg/bouncycastle/crypto/util/m;

.field public f:LHj/a$d;

.field public g:LHj/a$e;

.field public h:LHj/a$f;

.field public i:[Ljava/security/cert/X509Certificate;

.field public j:LHj/a$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, LHj/a$b;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LHj/a$c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/l$b;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/l$b;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->e(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->g(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/l;->g:Lhi/b;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->f(Lhi/b;)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l$b;->d()Lorg/bouncycastle/crypto/util/l;

    move-result-object v0

    iput-object v0, p0, LHj/a$b;->e:Lorg/bouncycastle/crypto/util/m;

    sget-object v0, LHj/a$d;->AES256_CCM:LHj/a$d;

    iput-object v0, p0, LHj/a$b;->f:LHj/a$d;

    sget-object v0, LHj/a$e;->HmacSHA512:LHj/a$e;

    iput-object v0, p0, LHj/a$b;->g:LHj/a$e;

    sget-object v0, LHj/a$f;->SHA512withECDSA:LHj/a$f;

    iput-object v0, p0, LHj/a$b;->h:LHj/a$f;

    const/4 v0, 0x0

    iput-object v0, p0, LHj/a$b;->i:[Ljava/security/cert/X509Certificate;

    iput-object p1, p0, LHj/a$b;->b:Ljava/io/InputStream;

    iput-object v0, p0, LHj/a$b;->a:Ljava/io/OutputStream;

    iput-object v0, p0, LHj/a$b;->c:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p2, p0, LHj/a$b;->j:LHj/a$c;

    iput-object v0, p0, LHj/a$b;->d:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/l$b;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/l$b;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->e(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->g(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/l;->g:Lhi/b;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->f(Lhi/b;)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l$b;->d()Lorg/bouncycastle/crypto/util/l;

    move-result-object v0

    iput-object v0, p0, LHj/a$b;->e:Lorg/bouncycastle/crypto/util/m;

    sget-object v0, LHj/a$d;->AES256_CCM:LHj/a$d;

    iput-object v0, p0, LHj/a$b;->f:LHj/a$d;

    sget-object v0, LHj/a$e;->HmacSHA512:LHj/a$e;

    iput-object v0, p0, LHj/a$b;->g:LHj/a$e;

    sget-object v0, LHj/a$f;->SHA512withECDSA:LHj/a$f;

    iput-object v0, p0, LHj/a$b;->h:LHj/a$f;

    const/4 v0, 0x0

    iput-object v0, p0, LHj/a$b;->i:[Ljava/security/cert/X509Certificate;

    iput-object p1, p0, LHj/a$b;->b:Ljava/io/InputStream;

    iput-object v0, p0, LHj/a$b;->a:Ljava/io/OutputStream;

    iput-object p2, p0, LHj/a$b;->c:Ljava/security/KeyStore$ProtectionParameter;

    iput-object v0, p0, LHj/a$b;->d:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/PublicKey;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/l$b;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/l$b;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->e(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->g(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/l;->g:Lhi/b;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->f(Lhi/b;)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l$b;->d()Lorg/bouncycastle/crypto/util/l;

    move-result-object v0

    iput-object v0, p0, LHj/a$b;->e:Lorg/bouncycastle/crypto/util/m;

    sget-object v0, LHj/a$d;->AES256_CCM:LHj/a$d;

    iput-object v0, p0, LHj/a$b;->f:LHj/a$d;

    sget-object v0, LHj/a$e;->HmacSHA512:LHj/a$e;

    iput-object v0, p0, LHj/a$b;->g:LHj/a$e;

    sget-object v0, LHj/a$f;->SHA512withECDSA:LHj/a$f;

    iput-object v0, p0, LHj/a$b;->h:LHj/a$f;

    const/4 v0, 0x0

    iput-object v0, p0, LHj/a$b;->i:[Ljava/security/cert/X509Certificate;

    iput-object p1, p0, LHj/a$b;->b:Ljava/io/InputStream;

    iput-object v0, p0, LHj/a$b;->a:Ljava/io/OutputStream;

    iput-object v0, p0, LHj/a$b;->c:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p2, p0, LHj/a$b;->d:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 1

    .line 5
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, LHj/a$b;-><init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/l$b;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/l$b;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->e(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->g(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/l;->g:Lhi/b;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->f(Lhi/b;)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l$b;->d()Lorg/bouncycastle/crypto/util/l;

    move-result-object v0

    iput-object v0, p0, LHj/a$b;->e:Lorg/bouncycastle/crypto/util/m;

    sget-object v0, LHj/a$d;->AES256_CCM:LHj/a$d;

    iput-object v0, p0, LHj/a$b;->f:LHj/a$d;

    sget-object v0, LHj/a$e;->HmacSHA512:LHj/a$e;

    iput-object v0, p0, LHj/a$b;->g:LHj/a$e;

    sget-object v0, LHj/a$f;->SHA512withECDSA:LHj/a$f;

    iput-object v0, p0, LHj/a$b;->h:LHj/a$f;

    const/4 v0, 0x0

    iput-object v0, p0, LHj/a$b;->i:[Ljava/security/cert/X509Certificate;

    iput-object v0, p0, LHj/a$b;->b:Ljava/io/InputStream;

    iput-object p1, p0, LHj/a$b;->a:Ljava/io/OutputStream;

    iput-object p2, p0, LHj/a$b;->c:Ljava/security/KeyStore$ProtectionParameter;

    iput-object v0, p0, LHj/a$b;->d:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/PrivateKey;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/util/l$b;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/l$b;-><init>()V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->e(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->g(I)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/l;->g:Lhi/b;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/l$b;->f(Lhi/b;)Lorg/bouncycastle/crypto/util/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/l$b;->d()Lorg/bouncycastle/crypto/util/l;

    move-result-object v0

    iput-object v0, p0, LHj/a$b;->e:Lorg/bouncycastle/crypto/util/m;

    sget-object v0, LHj/a$d;->AES256_CCM:LHj/a$d;

    iput-object v0, p0, LHj/a$b;->f:LHj/a$d;

    sget-object v0, LHj/a$e;->HmacSHA512:LHj/a$e;

    iput-object v0, p0, LHj/a$b;->g:LHj/a$e;

    sget-object v0, LHj/a$f;->SHA512withECDSA:LHj/a$f;

    iput-object v0, p0, LHj/a$b;->h:LHj/a$f;

    const/4 v0, 0x0

    iput-object v0, p0, LHj/a$b;->i:[Ljava/security/cert/X509Certificate;

    iput-object v0, p0, LHj/a$b;->b:Ljava/io/InputStream;

    iput-object p1, p0, LHj/a$b;->a:Ljava/io/OutputStream;

    iput-object v0, p0, LHj/a$b;->c:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p2, p0, LHj/a$b;->d:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1

    .line 8
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, LHj/a$b;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public static synthetic a(LHj/a$b;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, LHj/a$b;->b:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic b(LHj/a$b;)LHj/a$c;
    .locals 0

    iget-object p0, p0, LHj/a$b;->j:LHj/a$c;

    return-object p0
.end method

.method public static synthetic c(LHj/a$b;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, LHj/a$b;->a:Ljava/io/OutputStream;

    return-object p0
.end method

.method public static synthetic d(LHj/a$b;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    iget-object p0, p0, LHj/a$b;->c:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method public static synthetic e(LHj/a$b;)Lorg/bouncycastle/crypto/util/m;
    .locals 0

    iget-object p0, p0, LHj/a$b;->e:Lorg/bouncycastle/crypto/util/m;

    return-object p0
.end method

.method public static synthetic f(LHj/a$b;)LHj/a$d;
    .locals 0

    iget-object p0, p0, LHj/a$b;->f:LHj/a$d;

    return-object p0
.end method

.method public static synthetic g(LHj/a$b;)LHj/a$e;
    .locals 0

    iget-object p0, p0, LHj/a$b;->g:LHj/a$e;

    return-object p0
.end method

.method public static synthetic h(LHj/a$b;)LHj/a$f;
    .locals 0

    iget-object p0, p0, LHj/a$b;->h:LHj/a$f;

    return-object p0
.end method

.method public static synthetic i(LHj/a$b;)Ljava/security/Key;
    .locals 0

    iget-object p0, p0, LHj/a$b;->d:Ljava/security/Key;

    return-object p0
.end method

.method public static synthetic j(LHj/a$b;)[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, LHj/a$b;->i:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method


# virtual methods
.method public k()LHj/a;
    .locals 2

    new-instance v0, LHj/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LHj/a;-><init>(LHj/a$b;LHj/a$a;)V

    return-object v0
.end method

.method public l([Ljava/security/cert/X509Certificate;)LHj/a$b;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, LHj/a$b;->i:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public m(LHj/a$d;)LHj/a$b;
    .locals 0

    iput-object p1, p0, LHj/a$b;->f:LHj/a$d;

    return-object p0
.end method

.method public n(LHj/a$e;)LHj/a$b;
    .locals 0

    iput-object p1, p0, LHj/a$b;->g:LHj/a$e;

    return-object p0
.end method

.method public o(Lorg/bouncycastle/crypto/util/m;)LHj/a$b;
    .locals 0

    iput-object p1, p0, LHj/a$b;->e:Lorg/bouncycastle/crypto/util/m;

    return-object p0
.end method

.method public p(LHj/a$f;)LHj/a$b;
    .locals 0

    iput-object p1, p0, LHj/a$b;->h:LHj/a$f;

    return-object p0
.end method
