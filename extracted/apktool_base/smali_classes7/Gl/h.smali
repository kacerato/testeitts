.class public LGl/h;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/Map;


# instance fields
.field public a:Ljl/c;

.field public b:Ljl/d;

.field public c:Ljava/security/SecureRandom;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LGl/h;->e:Ljava/util/Map;

    sget-object v1, LOl/n;->c:LOl/n;

    invoke-virtual {v1}, LOl/n;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/f;->o:Ljl/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/h;->e:Ljava/util/Map;

    sget-object v1, LOl/n;->d:LOl/n;

    invoke-virtual {v1}, LOl/n;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/f;->p:Ljl/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/h;->e:Ljava/util/Map;

    sget-object v1, LOl/n;->e:LOl/n;

    invoke-virtual {v1}, LOl/n;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/f;->q:Ljl/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/h;->e:Ljava/util/Map;

    sget-object v1, LOl/n;->f:LOl/n;

    invoke-virtual {v1}, LOl/n;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/f;->r:Ljl/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/h;->e:Ljava/util/Map;

    sget-object v1, LOl/n;->g:LOl/n;

    invoke-virtual {v1}, LOl/n;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/f;->s:Ljl/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LGl/h;->e:Ljava/util/Map;

    sget-object v1, LOl/n;->h:LOl/n;

    invoke-virtual {v1}, LOl/n;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljl/f;->t:Ljl/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "NTRULPRime"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljl/d;

    invoke-direct {v0}, Ljl/d;-><init>()V

    iput-object v0, p0, LGl/h;->b:Ljl/d;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LGl/h;->c:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LGl/h;->d:Z

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/n;

    if-eqz v0, :cond_0

    check-cast p0, LOl/n;

    invoke-virtual {p0}, LOl/n;->b()Ljava/lang/String;

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

    iget-boolean v0, p0, LGl/h;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljl/c;

    iget-object v1, p0, LGl/h;->c:Ljava/security/SecureRandom;

    sget-object v2, Ljl/f;->r:Ljl/f;

    invoke-direct {v0, v1, v2}, Ljl/c;-><init>(Ljava/security/SecureRandom;Ljl/f;)V

    iput-object v0, p0, LGl/h;->a:Ljl/c;

    iget-object v1, p0, LGl/h;->b:Ljl/d;

    invoke-virtual {v1, v0}, Ljl/d;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LGl/h;->d:Z

    :cond_0
    iget-object v0, p0, LGl/h;->b:Ljl/d;

    invoke-virtual {v0}, Ljl/d;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Ljl/h;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Ljl/g;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LGl/b;

    invoke-direct {v3, v1}, LGl/b;-><init>(Ljl/h;)V

    new-instance v1, LGl/a;

    invoke-direct {v1, v0}, LGl/a;-><init>(Ljl/g;)V

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
    invoke-static {p1}, LGl/h;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Ljl/c;

    sget-object v1, LGl/h;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljl/f;

    invoke-direct {p1, p2, v0}, Ljl/c;-><init>(Ljava/security/SecureRandom;Ljl/f;)V

    iput-object p1, p0, LGl/h;->a:Ljl/c;

    iget-object p2, p0, LGl/h;->b:Ljl/d;

    invoke-virtual {p2, p1}, Ljl/d;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LGl/h;->d:Z

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
