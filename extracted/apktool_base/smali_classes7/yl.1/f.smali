.class public Lyl/f;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/Map;


# instance fields
.field public a:Lel/d;

.field public b:Lel/e;

.field public c:Ljava/security/SecureRandom;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v1, Lel/h;->k:Lel/h;

    const-string v2, "frodokem19888r3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v2, Lel/h;->l:Lel/h;

    const-string v3, "frodokem19888shaker3"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v3, Lel/h;->m:Lel/h;

    const-string v4, "frodokem31296r3"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v4, Lel/h;->n:Lel/h;

    const-string v5, "frodokem31296shaker3"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v5, Lel/h;->o:Lel/h;

    const-string v6, "frodokem43088r3"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v6, Lel/h;->p:Lel/h;

    const-string v7, "frodokem43088shaker3"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v7, LOl/e;->c:LOl/e;

    invoke-virtual {v7}, LOl/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/e;->d:LOl/e;

    invoke-virtual {v1}, LOl/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/e;->e:LOl/e;

    invoke-virtual {v1}, LOl/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/e;->f:LOl/e;

    invoke-virtual {v1}, LOl/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/e;->g:LOl/e;

    invoke-virtual {v1}, LOl/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/e;->h:LOl/e;

    invoke-virtual {v1}, LOl/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Frodo"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lel/e;

    invoke-direct {v0}, Lel/e;-><init>()V

    iput-object v0, p0, Lyl/f;->b:Lel/e;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lyl/f;->c:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyl/f;->d:Z

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/e;

    if-eqz v0, :cond_0

    check-cast p0, LOl/e;

    invoke-virtual {p0}, LOl/e;->b()Ljava/lang/String;

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

    iget-boolean v0, p0, Lyl/f;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lel/d;

    iget-object v1, p0, Lyl/f;->c:Ljava/security/SecureRandom;

    sget-object v2, Lel/h;->p:Lel/h;

    invoke-direct {v0, v1, v2}, Lel/d;-><init>(Ljava/security/SecureRandom;Lel/h;)V

    iput-object v0, p0, Lyl/f;->a:Lel/d;

    iget-object v1, p0, Lyl/f;->b:Lel/e;

    invoke-virtual {v1, v0}, Lel/e;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyl/f;->d:Z

    :cond_0
    iget-object v0, p0, Lyl/f;->b:Lel/e;

    invoke-virtual {v0}, Lel/e;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lel/j;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lel/i;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lyl/b;

    invoke-direct {v3, v1}, Lyl/b;-><init>(Lel/j;)V

    new-instance v1, Lyl/a;

    invoke-direct {v1, v0}, Lyl/a;-><init>(Lel/i;)V

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
    invoke-static {p1}, Lyl/f;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lel/d;

    sget-object v1, Lyl/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lel/h;

    invoke-direct {p1, p2, v0}, Lel/d;-><init>(Ljava/security/SecureRandom;Lel/h;)V

    iput-object p1, p0, Lyl/f;->a:Lel/d;

    iget-object p2, p0, Lyl/f;->b:Lel/e;

    invoke-virtual {p2, p1}, Lel/e;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyl/f;->d:Z

    return-void

    :cond_0
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
