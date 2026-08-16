.class public LAi/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Set;

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LAi/p;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, LAi/p;->b:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, LAi/p;->c:Ljava/util/Set;

    invoke-static {}, LAi/p;->d()Ljava/util/Map;

    move-result-object v3

    sput-object v3, LAi/p;->d:Ljava/util/Map;

    sget-object v3, Lorg/bouncycastle/cms/c;->b:Loh/x;

    const-string v4, "DESEDE"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/cms/c;->f:Loh/x;

    const-string v5, "AES"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/cms/c;->g:Loh/x;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lorg/bouncycastle/cms/c;->h:Loh/x;

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DESEDEMac"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AESMac"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/c;->c:Loh/x;

    const-string v3, "RC2Mac"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->C:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LSh/d;->L:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LSh/d;->U:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LSh/d;->D:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LSh/d;->M:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LSh/d;->V:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZLBi/k;Lhi/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/util/c;->c(ZLBi/k;Lhi/b;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static c(Loh/x;)LBi/Z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, LSh/d;->y:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, LSh/d;->H:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, LSh/d;->Q:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LXh/t;->n1:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, LLi/b0;

    new-instance v0, LLi/v;

    invoke-direct {v0}, LLi/v;-><init>()V

    invoke-direct {p0, v0}, LLi/b0;-><init>(LBi/f;)V

    return-object p0

    :cond_1
    sget-object v0, LWh/b;->e:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, LLi/b0;

    new-instance v0, LLi/u;

    invoke-direct {v0}, LLi/u;-><init>()V

    invoke-direct {p0, v0}, LLi/b0;-><init>(LBi/f;)V

    return-object p0

    :cond_2
    sget-object v0, LXh/t;->o1:Loh/x;

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, LLi/b0;

    new-instance v0, LLi/V;

    invoke-direct {v0}, LLi/V;-><init>()V

    invoke-direct {p0, v0}, LLi/b0;-><init>(LBi/f;)V

    return-object p0

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot recognise wrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    new-instance p0, LLi/b0;

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-direct {p0, v0}, LLi/b0;-><init>(LBi/f;)V

    return-object p0
.end method

.method public static d()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, LXh/t;->w1:Loh/x;

    new-instance v2, LAi/p$a;

    invoke-direct {v2}, LAi/p$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->x1:Loh/x;

    new-instance v2, LAi/p$b;

    invoke-direct {v2}, LAi/p$b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->z1:Loh/x;

    new-instance v2, LAi/p$c;

    invoke-direct {v2}, LAi/p$c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->A1:Loh/x;

    new-instance v2, LAi/p$d;

    invoke-direct {v2}, LAi/p$d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->B1:Loh/x;

    new-instance v2, LAi/p$e;

    invoke-direct {v2}, LAi/p$e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lhi/b;)LBi/D;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    sget-object v0, LAi/p;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lhi/b;->u()Loh/x;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LRk/l;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Loh/x;ILjava/security/SecureRandom;)LBi/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p3}, Lorg/bouncycastle/crypto/util/d;->b(Loh/x;Ljava/security/SecureRandom;)LBi/j;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public e(Loh/x;LXi/o0;Ljava/security/SecureRandom;)Lhi/b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, LXi/o0;->b()[B

    move-result-object p2

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/util/a;->a(Loh/x;ILjava/security/SecureRandom;)Lhi/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public g(Loh/x;)Z
    .locals 1

    sget-object v0, LAi/p;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
