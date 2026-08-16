.class public LOl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/r;

.field public static final d:LOl/r;

.field public static final e:LOl/r;

.field public static final f:LOl/r;

.field public static final g:LOl/r;

.field public static final h:LOl/r;

.field public static i:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LOl/r;

    sget-object v1, Lll/h;->k:Lll/h;

    invoke-direct {v0, v1}, LOl/r;-><init>(Lll/h;)V

    sput-object v0, LOl/r;->c:LOl/r;

    new-instance v1, LOl/r;

    sget-object v2, Lll/h;->l:Lll/h;

    invoke-direct {v1, v2}, LOl/r;-><init>(Lll/h;)V

    sput-object v1, LOl/r;->d:LOl/r;

    new-instance v2, LOl/r;

    sget-object v3, Lll/h;->m:Lll/h;

    invoke-direct {v2, v3}, LOl/r;-><init>(Lll/h;)V

    sput-object v2, LOl/r;->e:LOl/r;

    new-instance v3, LOl/r;

    sget-object v4, Lll/h;->n:Lll/h;

    invoke-direct {v3, v4}, LOl/r;-><init>(Lll/h;)V

    sput-object v3, LOl/r;->f:LOl/r;

    new-instance v4, LOl/r;

    sget-object v5, Lll/h;->o:Lll/h;

    invoke-direct {v4, v5}, LOl/r;-><init>(Lll/h;)V

    sput-object v4, LOl/r;->g:LOl/r;

    new-instance v5, LOl/r;

    sget-object v6, Lll/h;->p:Lll/h;

    invoke-direct {v5, v6}, LOl/r;-><init>(Lll/h;)V

    sput-object v5, LOl/r;->h:LOl/r;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, LOl/r;->i:Ljava/util/Map;

    const-string v7, "rainbow-iii-classic"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/r;->i:Ljava/util/Map;

    const-string v6, "rainbow-iii-circumzenithal"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/r;->i:Ljava/util/Map;

    const-string v1, "rainbow-iii-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/r;->i:Ljava/util/Map;

    const-string v1, "rainbow-v-classic"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/r;->i:Ljava/util/Map;

    const-string v1, "rainbow-v-circumzenithal"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/r;->i:Ljava/util/Map;

    const-string v1, "rainbow-v-compressed"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lll/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lll/h;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/r;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/r;
    .locals 1

    sget-object v0, LOl/r;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/r;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/r;->b:Ljava/lang/String;

    return-object v0
.end method
