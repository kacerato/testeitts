.class public LOl/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/o;

.field public static final d:LOl/o;

.field public static final e:LOl/o;

.field public static final f:LOl/o;

.field public static final g:LOl/o;

.field public static final h:LOl/o;

.field public static i:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LOl/o;

    sget-object v1, Lil/g;->d:Lil/g;

    invoke-direct {v0, v1}, LOl/o;-><init>(Lil/g;)V

    sput-object v0, LOl/o;->c:LOl/o;

    new-instance v1, LOl/o;

    sget-object v2, Lil/g;->e:Lil/g;

    invoke-direct {v1, v2}, LOl/o;-><init>(Lil/g;)V

    sput-object v1, LOl/o;->d:LOl/o;

    new-instance v2, LOl/o;

    sget-object v3, Lil/g;->f:Lil/g;

    invoke-direct {v2, v3}, LOl/o;-><init>(Lil/g;)V

    sput-object v2, LOl/o;->e:LOl/o;

    new-instance v3, LOl/o;

    sget-object v4, Lil/g;->g:Lil/g;

    invoke-direct {v3, v4}, LOl/o;-><init>(Lil/g;)V

    sput-object v3, LOl/o;->f:LOl/o;

    new-instance v4, LOl/o;

    sget-object v5, Lil/g;->h:Lil/g;

    invoke-direct {v4, v5}, LOl/o;-><init>(Lil/g;)V

    sput-object v4, LOl/o;->g:LOl/o;

    new-instance v5, LOl/o;

    sget-object v6, Lil/g;->i:Lil/g;

    invoke-direct {v5, v6}, LOl/o;-><init>(Lil/g;)V

    sput-object v5, LOl/o;->h:LOl/o;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, LOl/o;->i:Ljava/util/Map;

    const-string v7, "ntruhps2048509"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/o;->i:Ljava/util/Map;

    const-string v6, "ntruhps2048677"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/o;->i:Ljava/util/Map;

    const-string v1, "ntruhps4096821"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/o;->i:Ljava/util/Map;

    const-string v1, "ntruhps40961229"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/o;->i:Ljava/util/Map;

    const-string v1, "ntruhrss701"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/o;->i:Ljava/util/Map;

    const-string v1, "ntruhrss1373"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lil/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lil/g;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/o;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/o;
    .locals 1

    sget-object v0, LOl/o;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/o;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/o;->b:Ljava/lang/String;

    return-object v0
.end method
