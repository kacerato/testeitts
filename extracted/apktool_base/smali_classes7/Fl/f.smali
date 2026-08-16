.class public LFl/f;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/Map;


# instance fields
.field public a:Lil/c;

.field public b:Lil/d;

.field public c:Ljava/security/SecureRandom;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LFl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/o;->c:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lil/g;->d:Lil/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LFl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/o;->d:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lil/g;->e:Lil/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LFl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/o;->e:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lil/g;->f:Lil/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LFl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/o;->f:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lil/g;->g:Lil/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LFl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/o;->g:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lil/g;->h:Lil/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LFl/f;->e:Ljava/util/Map;

    sget-object v1, LOl/o;->h:LOl/o;

    invoke-virtual {v1}, LOl/o;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lil/g;->i:Lil/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "NTRU"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lil/d;

    invoke-direct {v0}, Lil/d;-><init>()V

    iput-object v0, p0, LFl/f;->b:Lil/d;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LFl/f;->c:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LFl/f;->d:Z

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/o;

    if-eqz v0, :cond_0

    check-cast p0, LOl/o;

    invoke-virtual {p0}, LOl/o;->b()Ljava/lang/String;

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

    iget-boolean v0, p0, LFl/f;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lil/c;

    iget-object v1, p0, LFl/f;->c:Ljava/security/SecureRandom;

    sget-object v2, Lil/g;->d:Lil/g;

    invoke-direct {v0, v1, v2}, Lil/c;-><init>(Ljava/security/SecureRandom;Lil/g;)V

    iput-object v0, p0, LFl/f;->a:Lil/c;

    iget-object v1, p0, LFl/f;->b:Lil/d;

    invoke-virtual {v1, v0}, Lil/d;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LFl/f;->d:Z

    :cond_0
    iget-object v0, p0, LFl/f;->b:Lil/d;

    invoke-virtual {v0}, Lil/d;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lil/i;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lil/h;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LFl/b;

    invoke-direct {v3, v1}, LFl/b;-><init>(Lil/i;)V

    new-instance v1, LFl/a;

    invoke-direct {v1, v0}, LFl/a;-><init>(Lil/h;)V

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
    invoke-static {p1}, LFl/f;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lil/c;

    sget-object v1, LFl/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lil/g;

    invoke-direct {p1, p2, v0}, Lil/c;-><init>(Ljava/security/SecureRandom;Lil/g;)V

    iput-object p1, p0, LFl/f;->a:Lil/c;

    iget-object p2, p0, LFl/f;->b:Lil/d;

    invoke-virtual {p2, p1}, Lil/d;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LFl/f;->d:Z

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
