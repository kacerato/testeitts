.class public LOl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/d;

.field public static final d:LOl/d;

.field public static e:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LOl/d;

    sget-object v1, Ldl/m;->e:Ldl/m;

    invoke-direct {v0, v1}, LOl/d;-><init>(Ldl/m;)V

    sput-object v0, LOl/d;->c:LOl/d;

    new-instance v1, LOl/d;

    sget-object v2, Ldl/m;->f:Ldl/m;

    invoke-direct {v1, v2}, LOl/d;-><init>(Ldl/m;)V

    sput-object v1, LOl/d;->d:LOl/d;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, LOl/d;->e:Ljava/util/Map;

    const-string v3, "falcon-512"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/d;->e:Ljava/util/Map;

    const-string v2, "falcon-1024"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldl/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ldl/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/d;
    .locals 1

    sget-object v0, LOl/d;->e:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/d;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/d;->b:Ljava/lang/String;

    return-object v0
.end method
