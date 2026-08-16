.class public LOl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/f;

.field public static final d:LOl/f;

.field public static final e:LOl/f;

.field public static f:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LOl/f;

    sget-object v1, Lgl/j;->p:Lgl/j;

    invoke-direct {v0, v1}, LOl/f;-><init>(Lgl/j;)V

    sput-object v0, LOl/f;->c:LOl/f;

    new-instance v1, LOl/f;

    sget-object v2, Lgl/j;->q:Lgl/j;

    invoke-direct {v1, v2}, LOl/f;-><init>(Lgl/j;)V

    sput-object v1, LOl/f;->d:LOl/f;

    new-instance v2, LOl/f;

    sget-object v3, Lgl/j;->r:Lgl/j;

    invoke-direct {v2, v3}, LOl/f;-><init>(Lgl/j;)V

    sput-object v2, LOl/f;->e:LOl/f;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, LOl/f;->f:Ljava/util/Map;

    const-string v4, "hqc128"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/f;->f:Ljava/util/Map;

    const-string v3, "hqc192"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/f;->f:Ljava/util/Map;

    const-string v1, "hqc256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgl/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lgl/j;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/f;
    .locals 1

    sget-object v0, LOl/f;->f:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/f;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/f;->b:Ljava/lang/String;

    return-object v0
.end method
