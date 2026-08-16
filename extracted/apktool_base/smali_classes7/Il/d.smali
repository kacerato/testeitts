.class public LIl/d;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIl/d$a;,
        LIl/d$b;,
        LIl/d$c;,
        LIl/d$d;,
        LIl/d$e;,
        LIl/d$f;
    }
.end annotation


# static fields
.field public static f:Ljava/util/Map;


# instance fields
.field public final a:Lll/h;

.field public b:Lll/e;

.field public c:Lll/f;

.field public d:Ljava/security/SecureRandom;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LIl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/r;->c:LOl/r;

    invoke-virtual {v1}, LOl/r;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lll/h;->k:Lll/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LIl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/r;->d:LOl/r;

    invoke-virtual {v1}, LOl/r;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lll/h;->l:Lll/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LIl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/r;->e:LOl/r;

    invoke-virtual {v1}, LOl/r;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lll/h;->m:Lll/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LIl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/r;->f:LOl/r;

    invoke-virtual {v1}, LOl/r;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lll/h;->n:Lll/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LIl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/r;->g:LOl/r;

    invoke-virtual {v1}, LOl/r;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lll/h;->o:Lll/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LIl/d;->f:Ljava/util/Map;

    sget-object v1, LOl/r;->h:LOl/r;

    invoke-virtual {v1}, LOl/r;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lll/h;->p:Lll/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "RAINBOW"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lll/f;

    invoke-direct {v0}, Lll/f;-><init>()V

    iput-object v0, p0, LIl/d;->c:Lll/f;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LIl/d;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LIl/d;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, LIl/d;->a:Lll/h;

    return-void
.end method

.method public constructor <init>(Lll/h;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lll/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lll/f;

    invoke-direct {v0}, Lll/f;-><init>()V

    iput-object v0, p0, LIl/d;->c:Lll/f;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LIl/d;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LIl/d;->e:Z

    iput-object p1, p0, LIl/d;->a:Lll/h;

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/r;

    if-eqz v0, :cond_0

    check-cast p0, LOl/r;

    invoke-virtual {p0}, LOl/r;->b()Ljava/lang/String;

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

    iget-boolean v0, p0, LIl/d;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LIl/d;->a:Lll/h;

    if-eqz v0, :cond_0

    new-instance v1, Lll/e;

    iget-object v2, p0, LIl/d;->d:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v0}, Lll/e;-><init>(Ljava/security/SecureRandom;Lll/h;)V

    iput-object v1, p0, LIl/d;->b:Lll/e;

    goto :goto_0

    :cond_0
    new-instance v0, Lll/e;

    iget-object v1, p0, LIl/d;->d:Ljava/security/SecureRandom;

    sget-object v2, Lll/h;->k:Lll/h;

    invoke-direct {v0, v1, v2}, Lll/e;-><init>(Ljava/security/SecureRandom;Lll/h;)V

    iput-object v0, p0, LIl/d;->b:Lll/e;

    :goto_0
    iget-object v0, p0, LIl/d;->c:Lll/f;

    iget-object v1, p0, LIl/d;->b:Lll/e;

    invoke-virtual {v0, v1}, Lll/f;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LIl/d;->e:Z

    :cond_1
    iget-object v0, p0, LIl/d;->c:Lll/f;

    invoke-virtual {v0}, Lll/f;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lll/j;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lll/i;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LIl/b;

    invoke-direct {v3, v1}, LIl/b;-><init>(Lll/j;)V

    new-instance v1, LIl/a;

    invoke-direct {v1, v0}, LIl/a;-><init>(Lll/i;)V

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
    invoke-static {p1}, LIl/d;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, LIl/d;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, LIl/d;->f:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lll/h;

    new-instance v0, Lll/e;

    invoke-direct {v0, p2, p1}, Lll/e;-><init>(Ljava/security/SecureRandom;Lll/h;)V

    iput-object v0, p0, LIl/d;->b:Lll/e;

    iget-object p2, p0, LIl/d;->a:Lll/h;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lll/h;->g()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LIl/d;->a:Lll/h;

    invoke-virtual {p2}, Lll/h;->g()Ljava/lang/String;

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

    iget-object v0, p0, LIl/d;->a:Lll/h;

    invoke-virtual {v0}, Lll/h;->g()Ljava/lang/String;

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
    iget-object p1, p0, LIl/d;->c:Lll/f;

    iget-object p2, p0, LIl/d;->b:Lll/e;

    invoke-virtual {p1, p2}, Lll/f;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LIl/d;->e:Z

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
