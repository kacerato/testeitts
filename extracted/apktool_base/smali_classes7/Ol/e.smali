.class public LOl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/e;

.field public static final d:LOl/e;

.field public static final e:LOl/e;

.field public static final f:LOl/e;

.field public static final g:LOl/e;

.field public static final h:LOl/e;

.field public static i:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LOl/e;

    sget-object v1, Lel/h;->k:Lel/h;

    invoke-direct {v0, v1}, LOl/e;-><init>(Lel/h;)V

    sput-object v0, LOl/e;->c:LOl/e;

    new-instance v1, LOl/e;

    sget-object v2, Lel/h;->l:Lel/h;

    invoke-direct {v1, v2}, LOl/e;-><init>(Lel/h;)V

    sput-object v1, LOl/e;->d:LOl/e;

    new-instance v2, LOl/e;

    sget-object v3, Lel/h;->m:Lel/h;

    invoke-direct {v2, v3}, LOl/e;-><init>(Lel/h;)V

    sput-object v2, LOl/e;->e:LOl/e;

    new-instance v3, LOl/e;

    sget-object v4, Lel/h;->n:Lel/h;

    invoke-direct {v3, v4}, LOl/e;-><init>(Lel/h;)V

    sput-object v3, LOl/e;->f:LOl/e;

    new-instance v4, LOl/e;

    sget-object v5, Lel/h;->o:Lel/h;

    invoke-direct {v4, v5}, LOl/e;-><init>(Lel/h;)V

    sput-object v4, LOl/e;->g:LOl/e;

    new-instance v5, LOl/e;

    sget-object v6, Lel/h;->p:Lel/h;

    invoke-direct {v5, v6}, LOl/e;-><init>(Lel/h;)V

    sput-object v5, LOl/e;->h:LOl/e;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, LOl/e;->i:Ljava/util/Map;

    const-string v7, "frodokem19888r3"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, LOl/e;->i:Ljava/util/Map;

    const-string v7, "frodokem19888shaker3"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, LOl/e;->i:Ljava/util/Map;

    const-string v7, "frodokem31296r3"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, LOl/e;->i:Ljava/util/Map;

    const-string v7, "frodokem31296shaker3"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, LOl/e;->i:Ljava/util/Map;

    const-string v7, "frodokem43088r3"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, LOl/e;->i:Ljava/util/Map;

    const-string v7, "frodokem43088shaker3"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, LOl/e;->i:Ljava/util/Map;

    const-string v7, "frodokem640aes"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/e;->i:Ljava/util/Map;

    const-string v6, "frodokem640shake"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/e;->i:Ljava/util/Map;

    const-string v1, "frodokem976aes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/e;->i:Ljava/util/Map;

    const-string v1, "frodokem976shake"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/e;->i:Ljava/util/Map;

    const-string v1, "frodokem1344aes"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/e;->i:Ljava/util/Map;

    const-string v1, "frodokem1344shake"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lel/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lel/h;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/e;
    .locals 1

    sget-object v0, LOl/e;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/e;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/e;->b:Ljava/lang/String;

    return-object v0
.end method
