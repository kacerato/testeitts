.class public LPk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ldk/f;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LPk/i;->b:Ldk/f;

    iput-object p1, p0, LPk/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(LPk/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LPk/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(LPk/i;)Ldk/f;
    .locals 0

    iget-object p0, p0, LPk/i;->b:Ldk/f;

    return-object p0
.end method


# virtual methods
.method public c([C)Lorg/bouncycastle/openssl/f;
    .locals 2

    iget-object v0, p0, LPk/i;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, LPk/i;->c:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, LPk/i;->a:Ljava/lang/String;

    const-string v1, "AES-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    new-array v0, v0, [B

    iget-object v1, p0, LPk/i;->c:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, LPk/i$a;

    invoke-direct {v1, p0, v0, p1}, LPk/i$a;-><init>(LPk/i;[B[C)V

    return-object v1
.end method

.method public d(Ljava/lang/String;)LPk/i;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LPk/i;->b:Ldk/f;

    return-object p0
.end method

.method public e(Ljava/security/Provider;)LPk/i;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LPk/i;->b:Ldk/f;

    return-object p0
.end method

.method public f(Ljava/security/SecureRandom;)LPk/i;
    .locals 0

    iput-object p1, p0, LPk/i;->c:Ljava/security/SecureRandom;

    return-object p0
.end method
