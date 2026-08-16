.class public LHl/d;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/Map;


# instance fields
.field public a:Lkl/i;

.field public b:Lkl/j;

.field public c:Ljava/security/SecureRandom;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->c:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->d:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->d:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->e:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->e:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->f:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->f:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->g:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->g:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->h:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->h:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->i:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->i:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->j:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->j:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->k:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->k:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->l:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->l:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->m:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->m:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->n:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LHl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/p;->n:LOl/p;

    invoke-virtual {v1}, LOl/p;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkl/l;->o:Lkl/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Picnic"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lkl/j;

    invoke-direct {v0}, Lkl/j;-><init>()V

    iput-object v0, p0, LHl/d;->b:Lkl/j;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LHl/d;->c:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LHl/d;->d:Z

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/p;

    if-eqz v0, :cond_0

    check-cast p0, LOl/p;

    invoke-virtual {p0}, LOl/p;->b()Ljava/lang/String;

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

    iget-boolean v0, p0, LHl/d;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lkl/i;

    iget-object v1, p0, LHl/d;->c:Ljava/security/SecureRandom;

    sget-object v2, Lkl/l;->g:Lkl/l;

    invoke-direct {v0, v1, v2}, Lkl/i;-><init>(Ljava/security/SecureRandom;Lkl/l;)V

    iput-object v0, p0, LHl/d;->a:Lkl/i;

    iget-object v1, p0, LHl/d;->b:Lkl/j;

    invoke-virtual {v1, v0}, Lkl/j;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LHl/d;->d:Z

    :cond_0
    iget-object v0, p0, LHl/d;->b:Lkl/j;

    invoke-virtual {v0}, Lkl/j;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lkl/n;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lkl/m;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LHl/b;

    invoke-direct {v3, v1}, LHl/b;-><init>(Lkl/n;)V

    new-instance v1, LHl/a;

    invoke-direct {v1, v0}, LHl/a;-><init>(Lkl/m;)V

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
    invoke-static {p1}, LHl/d;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lkl/i;

    sget-object v1, LHl/d;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkl/l;

    invoke-direct {p1, p2, v0}, Lkl/i;-><init>(Ljava/security/SecureRandom;Lkl/l;)V

    iput-object p1, p0, LHl/d;->a:Lkl/i;

    iget-object p2, p0, LHl/d;->b:Lkl/j;

    invoke-virtual {p2, p1}, Lkl/j;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LHl/d;->d:Z

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
