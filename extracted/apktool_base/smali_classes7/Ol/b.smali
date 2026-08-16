.class public LOl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:LOl/b;

.field public static final d:LOl/b;

.field public static final e:LOl/b;

.field public static final f:LOl/b;

.field public static final g:LOl/b;

.field public static final h:LOl/b;

.field public static final i:LOl/b;

.field public static final j:LOl/b;

.field public static final k:LOl/b;

.field public static final l:LOl/b;

.field public static m:Ljava/util/Map;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, LOl/b;

    sget-object v1, Lal/j;->n:Lal/j;

    invoke-direct {v0, v1}, LOl/b;-><init>(Lal/j;)V

    sput-object v0, LOl/b;->c:LOl/b;

    new-instance v1, LOl/b;

    sget-object v2, Lal/j;->o:Lal/j;

    invoke-direct {v1, v2}, LOl/b;-><init>(Lal/j;)V

    sput-object v1, LOl/b;->d:LOl/b;

    new-instance v2, LOl/b;

    sget-object v3, Lal/j;->p:Lal/j;

    invoke-direct {v2, v3}, LOl/b;-><init>(Lal/j;)V

    sput-object v2, LOl/b;->e:LOl/b;

    new-instance v3, LOl/b;

    sget-object v4, Lal/j;->q:Lal/j;

    invoke-direct {v3, v4}, LOl/b;-><init>(Lal/j;)V

    sput-object v3, LOl/b;->f:LOl/b;

    new-instance v4, LOl/b;

    sget-object v5, Lal/j;->r:Lal/j;

    invoke-direct {v4, v5}, LOl/b;-><init>(Lal/j;)V

    sput-object v4, LOl/b;->g:LOl/b;

    new-instance v5, LOl/b;

    sget-object v6, Lal/j;->s:Lal/j;

    invoke-direct {v5, v6}, LOl/b;-><init>(Lal/j;)V

    sput-object v5, LOl/b;->h:LOl/b;

    new-instance v6, LOl/b;

    sget-object v7, Lal/j;->t:Lal/j;

    invoke-direct {v6, v7}, LOl/b;-><init>(Lal/j;)V

    sput-object v6, LOl/b;->i:LOl/b;

    new-instance v7, LOl/b;

    sget-object v8, Lal/j;->u:Lal/j;

    invoke-direct {v7, v8}, LOl/b;-><init>(Lal/j;)V

    sput-object v7, LOl/b;->j:LOl/b;

    new-instance v8, LOl/b;

    sget-object v9, Lal/j;->v:Lal/j;

    invoke-direct {v8, v9}, LOl/b;-><init>(Lal/j;)V

    sput-object v8, LOl/b;->k:LOl/b;

    new-instance v9, LOl/b;

    sget-object v10, Lal/j;->w:Lal/j;

    invoke-direct {v9, v10}, LOl/b;-><init>(Lal/j;)V

    sput-object v9, LOl/b;->l:LOl/b;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, LOl/b;->m:Ljava/util/Map;

    const-string v11, "mceliece348864"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v10, "mceliece348864f"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v1, "mceliece460896"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v1, "mceliece460896f"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v1, "mceliece6688128"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v1, "mceliece6688128f"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v1, "mceliece6960119"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v1, "mceliece6960119f"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v1, "mceliece8192128"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    const-string v1, "mceliece8192128f"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lal/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lal/j;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LOl/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/b;
    .locals 1

    sget-object v0, LOl/b;->m:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/b;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/b;->b:Ljava/lang/String;

    return-object v0
.end method
