.class public LOl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/c;

.field public static final d:LOl/c;

.field public static final e:LOl/c;

.field public static f:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LOl/c;

    sget-object v1, Lbl/e;->d:Lbl/e;

    invoke-direct {v0, v1}, LOl/c;-><init>(Lbl/e;)V

    sput-object v0, LOl/c;->c:LOl/c;

    new-instance v1, LOl/c;

    sget-object v2, Lbl/e;->e:Lbl/e;

    invoke-direct {v1, v2}, LOl/c;-><init>(Lbl/e;)V

    sput-object v1, LOl/c;->d:LOl/c;

    new-instance v2, LOl/c;

    sget-object v3, Lbl/e;->f:Lbl/e;

    invoke-direct {v2, v3}, LOl/c;-><init>(Lbl/e;)V

    sput-object v2, LOl/c;->e:LOl/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, LOl/c;->f:Ljava/util/Map;

    const-string v4, "dilithium2"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/c;->f:Ljava/util/Map;

    const-string v3, "dilithium3"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/c;->f:Ljava/util/Map;

    const-string v1, "dilithium5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbl/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lbl/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/c;
    .locals 1

    sget-object v0, LOl/c;->f:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/c;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/c;->b:Ljava/lang/String;

    return-object v0
.end method
