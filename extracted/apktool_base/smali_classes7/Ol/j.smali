.class public LOl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/pqc/crypto/lms/A;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/pqc/crypto/lms/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lorg/bouncycastle/pqc/crypto/lms/A;

.field public final c:Lorg/bouncycastle/pqc/crypto/lms/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LOl/j;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, LOl/j;->e:Ljava/util/Map;

    const-string v2, "lms-sha256-n32-h5"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->e:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n32-h10"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->f:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n32-h15"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->g:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n32-h20"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->h:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n32-h25"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->i:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n24-h5"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->j:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n24-h10"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->k:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n24-h15"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->l:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n24-h20"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->m:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-sha256-n24-h25"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->n:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n32-h5"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->o:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n32-h10"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->p:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n32-h15"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->q:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n32-h20"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->r:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n32-h25"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->s:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n24-h5"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->t:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n24-h10"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->u:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n24-h15"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->v:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n24-h20"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->w:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lms-shake256-n24-h25"

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/A;->x:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha256-n32-w1"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/j;->i:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha256-n32-w2"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/j;->j:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha256-n32-w4"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/j;->k:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha256-n32-w8"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/j;->l:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOl/j;->b:Lorg/bouncycastle/pqc/crypto/lms/A;

    iput-object p2, p0, LOl/j;->c:Lorg/bouncycastle/pqc/crypto/lms/j;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)LOl/j;
    .locals 4

    sget-object v0, LOl/j;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " not recognized"

    if-eqz v1, :cond_1

    sget-object v1, LOl/j;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, LOl/j;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-direct {v2, p0, p1}, LOl/j;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LM OTS parameter name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LM signature parameter name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Lorg/bouncycastle/pqc/crypto/lms/j;
    .locals 1

    iget-object v0, p0, LOl/j;->c:Lorg/bouncycastle/pqc/crypto/lms/j;

    return-object v0
.end method

.method public c()Lorg/bouncycastle/pqc/crypto/lms/A;
    .locals 1

    iget-object v0, p0, LOl/j;->b:Lorg/bouncycastle/pqc/crypto/lms/A;

    return-object v0
.end method
