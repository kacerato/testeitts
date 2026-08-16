.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build LC0/a;
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getComponents$0(LT2/h;)LM2/a;
    .locals 3

    const-class v0, LK2/g;

    invoke-interface {p0, v0}, LT2/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK2/g;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, LT2/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, LX2/d;

    invoke-interface {p0, v2}, LT2/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX2/d;

    invoke-static {v0, v1, p0}, LM2/b;->j(LK2/g;Landroid/content/Context;LX2/d;)LM2/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zza(LT2/h;)LM2/a;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(LT2/h;)LM2/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LT2/g<",
            "*>;>;"
        }
    .end annotation

    const-class v0, LM2/a;

    invoke-static {v0}, LT2/g;->h(Ljava/lang/Class;)LT2/g$b;

    move-result-object v0

    const-class v1, LK2/g;

    invoke-static {v1}, LT2/v;->m(Ljava/lang/Class;)LT2/v;

    move-result-object v1

    invoke-virtual {v0, v1}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, LT2/v;->m(Ljava/lang/Class;)LT2/v;

    move-result-object v1

    invoke-virtual {v0, v1}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    const-class v1, LX2/d;

    invoke-static {v1}, LT2/v;->m(Ljava/lang/Class;)LT2/v;

    move-result-object v1

    invoke-virtual {v0, v1}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    sget-object v1, LN2/b;->a:LN2/b;

    invoke-virtual {v0, v1}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object v0

    invoke-virtual {v0}, LT2/g$b;->e()LT2/g$b;

    move-result-object v0

    invoke-virtual {v0}, LT2/g$b;->d()LT2/g;

    move-result-object v0

    const-string v1, "fire-analytics"

    const-string v2, "22.5.0"

    invoke-static {v1, v2}, Ln3/h;->b(Ljava/lang/String;Ljava/lang/String;)LT2/g;

    move-result-object v1

    filled-new-array {v0, v1}, [LT2/g;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
