.class public LOl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/n;

.field public static final d:LOl/n;

.field public static final e:LOl/n;

.field public static final f:LOl/n;

.field public static final g:LOl/n;

.field public static final h:LOl/n;

.field public static i:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LOl/n;

    sget-object v1, Ljl/f;->o:Ljl/f;

    invoke-direct {v0, v1}, LOl/n;-><init>(Ljl/f;)V

    sput-object v0, LOl/n;->c:LOl/n;

    new-instance v1, LOl/n;

    sget-object v2, Ljl/f;->p:Ljl/f;

    invoke-direct {v1, v2}, LOl/n;-><init>(Ljl/f;)V

    sput-object v1, LOl/n;->d:LOl/n;

    new-instance v2, LOl/n;

    sget-object v3, Ljl/f;->q:Ljl/f;

    invoke-direct {v2, v3}, LOl/n;-><init>(Ljl/f;)V

    sput-object v2, LOl/n;->e:LOl/n;

    new-instance v3, LOl/n;

    sget-object v4, Ljl/f;->r:Ljl/f;

    invoke-direct {v3, v4}, LOl/n;-><init>(Ljl/f;)V

    sput-object v3, LOl/n;->f:LOl/n;

    new-instance v4, LOl/n;

    sget-object v5, Ljl/f;->s:Ljl/f;

    invoke-direct {v4, v5}, LOl/n;-><init>(Ljl/f;)V

    sput-object v4, LOl/n;->g:LOl/n;

    new-instance v5, LOl/n;

    sget-object v6, Ljl/f;->t:Ljl/f;

    invoke-direct {v5, v6}, LOl/n;-><init>(Ljl/f;)V

    sput-object v5, LOl/n;->h:LOl/n;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, LOl/n;->i:Ljava/util/Map;

    const-string v7, "ntrulpr653"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/n;->i:Ljava/util/Map;

    const-string v6, "ntrulpr761"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/n;->i:Ljava/util/Map;

    const-string v1, "ntrulpr857"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/n;->i:Ljava/util/Map;

    const-string v1, "ntrulpr953"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/n;->i:Ljava/util/Map;

    const-string v1, "ntrulpr1013"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/n;->i:Ljava/util/Map;

    const-string v1, "ntrulpr1277"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljl/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljl/f;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/n;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/n;
    .locals 1

    sget-object v0, LOl/n;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/n;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/n;->b:Ljava/lang/String;

    return-object v0
.end method
