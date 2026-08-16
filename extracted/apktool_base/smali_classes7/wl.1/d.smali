.class public Lwl/d;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwl/d$a;,
        Lwl/d$b;,
        Lwl/d$c;
    }
.end annotation


# static fields
.field public static f:Ljava/util/Map;


# instance fields
.field public final a:Lbl/e;

.field public b:Lbl/b;

.field public c:Lbl/c;

.field public d:Ljava/security/SecureRandom;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lwl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/c;->c:LOl/c;

    invoke-virtual {v1}, LOl/c;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbl/e;->d:Lbl/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lwl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/c;->d:LOl/c;

    invoke-virtual {v1}, LOl/c;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbl/e;->e:Lbl/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lwl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/c;->e:LOl/c;

    invoke-virtual {v1}, LOl/c;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbl/e;->f:Lbl/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "DILITHIUM"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lbl/c;

    invoke-direct {v0}, Lbl/c;-><init>()V

    iput-object v0, p0, Lwl/d;->c:Lbl/c;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lwl/d;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwl/d;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lwl/d;->a:Lbl/e;

    return-void
.end method

.method public constructor <init>(Lbl/e;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lbl/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lbl/c;

    invoke-direct {v0}, Lbl/c;-><init>()V

    iput-object v0, p0, Lwl/d;->c:Lbl/c;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lwl/d;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwl/d;->e:Z

    iput-object p1, p0, Lwl/d;->a:Lbl/e;

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/c;

    if-eqz v0, :cond_0

    check-cast p0, LOl/c;

    invoke-virtual {p0}, LOl/c;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, LMl/f;->c(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, Lwl/d;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lwl/d;->a:Lbl/e;

    if-eqz v0, :cond_0

    new-instance v1, Lbl/b;

    iget-object v2, p0, Lwl/d;->d:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v0}, Lbl/b;-><init>(Ljava/security/SecureRandom;Lbl/e;)V

    iput-object v1, p0, Lwl/d;->b:Lbl/b;

    goto :goto_0

    :cond_0
    new-instance v0, Lbl/b;

    iget-object v1, p0, Lwl/d;->d:Ljava/security/SecureRandom;

    sget-object v2, Lbl/e;->e:Lbl/e;

    invoke-direct {v0, v1, v2}, Lbl/b;-><init>(Ljava/security/SecureRandom;Lbl/e;)V

    iput-object v0, p0, Lwl/d;->b:Lbl/b;

    :goto_0
    iget-object v0, p0, Lwl/d;->c:Lbl/c;

    iget-object v1, p0, Lwl/d;->b:Lbl/b;

    invoke-virtual {v0, v1}, Lbl/c;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwl/d;->e:Z

    :cond_1
    iget-object v0, p0, Lwl/d;->c:Lbl/c;

    invoke-virtual {v0}, Lbl/c;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lbl/g;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lbl/f;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lwl/b;

    invoke-direct {v3, v1}, Lwl/b;-><init>(Lbl/g;)V

    new-instance v1, Lwl/a;

    invoke-direct {v1, v0}, Lwl/a;-><init>(Lbl/f;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lwl/d;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lwl/d;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lwl/d;->f:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbl/e;

    new-instance v0, Lbl/b;

    invoke-direct {v0, p2, p1}, Lbl/b;-><init>(Ljava/security/SecureRandom;Lbl/e;)V

    iput-object v0, p0, Lwl/d;->b:Lbl/b;

    iget-object p2, p0, Lwl/d;->a:Lbl/e;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lbl/e;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lwl/d;->a:Lbl/e;

    invoke-virtual {p2}, Lbl/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key pair generator locked to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwl/d;->a:Lbl/e;

    invoke-virtual {v0}, Lbl/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lwl/d;->c:Lbl/c;

    iget-object p2, p0, Lwl/d;->b:Lbl/b;

    invoke-virtual {p1, p2}, Lbl/c;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwl/d;->e:Z

    return-void

    :cond_2
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid ParameterSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
