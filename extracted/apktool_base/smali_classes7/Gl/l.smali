.class public LGl/l;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/Map;


# instance fields
.field public a:Ljl/k;

.field public b:Ljl/l;

.field public c:Ljava/security/SecureRandom;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LGl/l;->e:Ljava/util/Map;

    sget-object v1, LOl/t;->c:LOl/t;

    invoke-virtual {v1}, LOl/t;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/n;->k:Ljl/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/l;->e:Ljava/util/Map;

    sget-object v1, LOl/t;->d:LOl/t;

    invoke-virtual {v1}, LOl/t;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/n;->l:Ljl/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/l;->e:Ljava/util/Map;

    sget-object v1, LOl/t;->e:LOl/t;

    invoke-virtual {v1}, LOl/t;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/n;->m:Ljl/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/l;->e:Ljava/util/Map;

    sget-object v1, LOl/t;->f:LOl/t;

    invoke-virtual {v1}, LOl/t;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/n;->n:Ljl/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/l;->e:Ljava/util/Map;

    sget-object v1, LOl/t;->g:LOl/t;

    invoke-virtual {v1}, LOl/t;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/n;->o:Ljl/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/l;->e:Ljava/util/Map;

    sget-object v1, LOl/t;->h:LOl/t;

    invoke-virtual {v1}, LOl/t;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/n;->p:Ljl/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SNTRUPrime"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljl/l;

    invoke-direct {v0}, Ljl/l;-><init>()V

    iput-object v0, p0, LGl/l;->b:Ljl/l;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LGl/l;->c:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LGl/l;->d:Z

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/t;

    if-eqz v0, :cond_0

    check-cast p0, LOl/t;

    invoke-virtual {p0}, LOl/t;->b()Ljava/lang/String;

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

    iget-boolean v0, p0, LGl/l;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljl/k;

    iget-object v1, p0, LGl/l;->c:Ljava/security/SecureRandom;

    sget-object v2, Ljl/n;->n:Ljl/n;

    invoke-direct {v0, v1, v2}, Ljl/k;-><init>(Ljava/security/SecureRandom;Ljl/n;)V

    iput-object v0, p0, LGl/l;->a:Ljl/k;

    iget-object v1, p0, LGl/l;->b:Ljl/l;

    invoke-virtual {v1, v0}, Ljl/l;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LGl/l;->d:Z

    :cond_0
    iget-object v0, p0, LGl/l;->b:Ljl/l;

    invoke-virtual {v0}, Ljl/l;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Ljl/p;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Ljl/o;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LGl/d;

    invoke-direct {v3, v1}, LGl/d;-><init>(Ljl/p;)V

    new-instance v1, LGl/c;

    invoke-direct {v1, v0}, LGl/c;-><init>(Ljl/o;)V

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
    invoke-static {p1}, LGl/l;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Ljl/k;

    sget-object v1, LGl/l;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljl/n;

    invoke-direct {p1, p2, v0}, Ljl/k;-><init>(Ljava/security/SecureRandom;Ljl/n;)V

    iput-object p1, p0, LGl/l;->a:Ljl/k;

    iget-object p2, p0, LGl/l;->b:Ljl/l;

    invoke-virtual {p2, p1}, Ljl/l;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LGl/l;->d:Z

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
