.class public LOl/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/t;

.field public static final d:LOl/t;

.field public static final e:LOl/t;

.field public static final f:LOl/t;

.field public static final g:LOl/t;

.field public static final h:LOl/t;

.field public static i:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LOl/t;

    sget-object v1, Ljl/n;->k:Ljl/n;

    invoke-direct {v0, v1}, LOl/t;-><init>(Ljl/n;)V

    sput-object v0, LOl/t;->c:LOl/t;

    new-instance v1, LOl/t;

    sget-object v2, Ljl/n;->l:Ljl/n;

    invoke-direct {v1, v2}, LOl/t;-><init>(Ljl/n;)V

    sput-object v1, LOl/t;->d:LOl/t;

    new-instance v2, LOl/t;

    sget-object v3, Ljl/n;->m:Ljl/n;

    invoke-direct {v2, v3}, LOl/t;-><init>(Ljl/n;)V

    sput-object v2, LOl/t;->e:LOl/t;

    new-instance v3, LOl/t;

    sget-object v4, Ljl/n;->n:Ljl/n;

    invoke-direct {v3, v4}, LOl/t;-><init>(Ljl/n;)V

    sput-object v3, LOl/t;->f:LOl/t;

    new-instance v4, LOl/t;

    sget-object v5, Ljl/n;->o:Ljl/n;

    invoke-direct {v4, v5}, LOl/t;-><init>(Ljl/n;)V

    sput-object v4, LOl/t;->g:LOl/t;

    new-instance v5, LOl/t;

    sget-object v6, Ljl/n;->p:Ljl/n;

    invoke-direct {v5, v6}, LOl/t;-><init>(Ljl/n;)V

    sput-object v5, LOl/t;->h:LOl/t;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, LOl/t;->i:Ljava/util/Map;

    const-string v7, "sntrup653"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/t;->i:Ljava/util/Map;

    const-string v6, "sntrup761"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/t;->i:Ljava/util/Map;

    const-string v1, "sntrup857"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/t;->i:Ljava/util/Map;

    const-string v1, "sntrup953"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/t;->i:Ljava/util/Map;

    const-string v1, "sntrup1013"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/t;->i:Ljava/util/Map;

    const-string v1, "sntrup1277"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljl/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljl/n;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/t;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/t;
    .locals 1

    sget-object v0, LOl/t;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/t;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/t;->b:Ljava/lang/String;

    return-object v0
.end method
