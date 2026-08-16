.class public LOl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/a;

.field public static final d:LOl/a;

.field public static final e:LOl/a;

.field public static f:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LOl/a;

    sget-object v1, LZk/g;->k:LZk/g;

    invoke-direct {v0, v1}, LOl/a;-><init>(LZk/g;)V

    sput-object v0, LOl/a;->c:LOl/a;

    new-instance v1, LOl/a;

    sget-object v2, LZk/g;->l:LZk/g;

    invoke-direct {v1, v2}, LOl/a;-><init>(LZk/g;)V

    sput-object v1, LOl/a;->d:LOl/a;

    new-instance v2, LOl/a;

    sget-object v3, LZk/g;->m:LZk/g;

    invoke-direct {v2, v3}, LOl/a;-><init>(LZk/g;)V

    sput-object v2, LOl/a;->e:LOl/a;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, LOl/a;->f:Ljava/util/Map;

    const-string v4, "bike128"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/a;->f:Ljava/util/Map;

    const-string v3, "bike192"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/a;->f:Ljava/util/Map;

    const-string v1, "bike256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZk/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LZk/g;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/a;
    .locals 1

    sget-object v0, LOl/a;->f:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/a;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/a;->b:Ljava/lang/String;

    return-object v0
.end method
