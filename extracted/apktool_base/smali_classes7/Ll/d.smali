.class public LLl/d;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLl/d$a;,
        LLl/d$b;,
        LLl/d$c;,
        LLl/d$d;,
        LLl/d$e;,
        LLl/d$f;,
        LLl/d$g;,
        LLl/d$h;,
        LLl/d$i;,
        LLl/d$j;,
        LLl/d$k;,
        LLl/d$l;
    }
.end annotation


# static fields
.field public static e:Ljava/util/Map;


# instance fields
.field public a:Lol/q;

.field public b:Lol/r;

.field public c:Ljava/security/SecureRandom;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->c:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->d:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->d:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->e:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->e:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->f:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->f:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->g:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->g:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->h:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->h:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->i:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->i:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->j:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->j:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->k:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->k:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->l:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->l:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->m:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->m:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->n:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->n:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->o:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->o:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->p:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->p:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->q:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->q:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->r:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->r:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->s:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->s:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->t:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->t:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->u:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->u:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->v:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->v:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->w:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->w:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->x:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->x:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->y:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->y:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->z:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->z:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->A:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->A:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->B:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->B:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->C:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->E:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->D:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->F:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->E:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->C:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->F:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->D:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->G:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->G:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->H:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->H:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->I:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->I:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->J:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->J:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->K:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->K:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->L:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LLl/d;->e:Ljava/util/Map;

    sget-object v1, LOl/v;->L:LOl/v;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lol/t;->M:Lol/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "SPHINCS+"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lol/r;

    invoke-direct {v0}, Lol/r;-><init>()V

    iput-object v0, p0, LLl/d;->b:Lol/r;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LLl/d;->c:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LLl/d;->d:Z

    return-void
.end method

.method public constructor <init>(LOl/v;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPHINCS+-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lol/r;

    invoke-direct {v0}, Lol/r;-><init>()V

    iput-object v0, p0, LLl/d;->b:Lol/r;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LLl/d;->c:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    iput-boolean v1, p0, LLl/d;->d:Z

    new-instance v1, Lol/q;

    sget-object v2, LLl/d;->e:Ljava/util/Map;

    invoke-virtual {p1}, LOl/v;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lol/t;

    invoke-direct {v1, v0, p1}, Lol/q;-><init>(Ljava/security/SecureRandom;Lol/t;)V

    iput-object v1, p0, LLl/d;->a:Lol/q;

    iget-object p1, p0, LLl/d;->b:Lol/r;

    invoke-virtual {p1, v1}, Lol/r;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LLl/d;->d:Z

    return-void
.end method

.method public static a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, LOl/v;

    if-eqz v0, :cond_0

    check-cast p0, LOl/v;

    invoke-virtual {p0}, LOl/v;->b()Ljava/lang/String;

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

    iget-boolean v0, p0, LLl/d;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lol/q;

    iget-object v1, p0, LLl/d;->c:Ljava/security/SecureRandom;

    sget-object v2, Lol/t;->o:Lol/t;

    invoke-direct {v0, v1, v2}, Lol/q;-><init>(Ljava/security/SecureRandom;Lol/t;)V

    iput-object v0, p0, LLl/d;->a:Lol/q;

    iget-object v1, p0, LLl/d;->b:Lol/r;

    invoke-virtual {v1, v0}, Lol/r;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LLl/d;->d:Z

    :cond_0
    iget-object v0, p0, LLl/d;->b:Lol/r;

    invoke-virtual {v0}, Lol/r;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lol/v;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lol/u;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LLl/b;

    invoke-direct {v3, v1}, LLl/b;-><init>(Lol/v;)V

    new-instance v1, LLl/a;

    invoke-direct {v1, v0}, LLl/a;-><init>(Lol/u;)V

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
    invoke-static {p1}, LLl/d;->a(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lol/q;

    sget-object v1, LLl/d;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol/t;

    invoke-direct {p1, p2, v0}, Lol/q;-><init>(Ljava/security/SecureRandom;Lol/t;)V

    iput-object p1, p0, LLl/d;->a:Lol/q;

    iget-object p2, p0, LLl/d;->b:Lol/r;

    invoke-virtual {p2, p1}, Lol/r;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LLl/d;->d:Z

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
