.class public Lorg/bouncycastle/cms/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/N;


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/a0;->a:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/cms/a0;->b:Ljava/util/Map;

    sget-object v2, LXh/t;->I0:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, LXh/t;->J0:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, LXh/t;->K0:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, LXh/t;->L0:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, LWh/b;->c:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, LWh/b;->a:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, LWh/b;->b:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, LWh/b;->k:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lbi/b;->g:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lbi/b;->f:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lbi/b;->h:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyh/a;->o:Loh/x;

    new-instance v2, Lhi/b;

    sget-object v3, Lyh/a;->m:Loh/x;

    sget-object v4, Loh/A0;->c:Loh/A0;

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LYh/a;->i:Loh/x;

    new-instance v2, Lhi/b;

    sget-object v3, LYh/a;->g:Loh/x;

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LYh/a;->j:Loh/x;

    new-instance v2, Lhi/b;

    sget-object v3, LYh/a;->h:Loh/x;

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)Lhi/b;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/a0;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lhi/b;

    sget-object v0, LXh/t;->H0:Loh/x;

    sget-object v1, Loh/A0;->c:Loh/A0;

    invoke-direct {p1, v0, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object p1

    :cond_0
    sget-object v0, Lorg/bouncycastle/cms/a0;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhi/b;

    :cond_1
    return-object p1
.end method
