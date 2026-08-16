.class public LOl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/g;

.field public static final d:LOl/g;

.field public static final e:LOl/g;

.field public static f:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LOl/g;

    sget-object v1, Lcl/i;->f:Lcl/i;

    invoke-direct {v0, v1}, LOl/g;-><init>(Lcl/i;)V

    sput-object v0, LOl/g;->c:LOl/g;

    new-instance v1, LOl/g;

    sget-object v2, Lcl/i;->g:Lcl/i;

    invoke-direct {v1, v2}, LOl/g;-><init>(Lcl/i;)V

    sput-object v1, LOl/g;->d:LOl/g;

    new-instance v2, LOl/g;

    sget-object v3, Lcl/i;->h:Lcl/i;

    invoke-direct {v2, v3}, LOl/g;-><init>(Lcl/i;)V

    sput-object v2, LOl/g;->e:LOl/g;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, LOl/g;->f:Ljava/util/Map;

    const-string v4, "kyber512"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/g;->f:Ljava/util/Map;

    const-string v3, "kyber768"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/g;->f:Ljava/util/Map;

    const-string v1, "kyber1024"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcl/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcl/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/g;
    .locals 1

    sget-object v0, LOl/g;->f:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/g;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/g;->b:Ljava/lang/String;

    return-object v0
.end method
