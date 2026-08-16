.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LT2/h;)Lb3/j;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(LT2/h;)Lb3/j;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(LT2/h;)Lb3/j;
    .locals 6

    new-instance v0, Lcom/google/firebase/installations/a;

    const-class v1, LK2/g;

    invoke-interface {p0, v1}, LT2/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK2/g;

    const-class v2, LZ2/j;

    invoke-interface {p0, v2}, LT2/h;->f(Ljava/lang/Class;)La3/b;

    move-result-object v2

    const-class v3, LS2/a;

    const-class v4, Ljava/util/concurrent/ExecutorService;

    invoke-static {v3, v4}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v3

    invoke-interface {p0, v3}, LT2/h;->j(LT2/F;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    const-class v4, LS2/b;

    const-class v5, Ljava/util/concurrent/Executor;

    invoke-static {v4, v5}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v4

    invoke-interface {p0, v4}, LT2/h;->j(LT2/F;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, LU2/y;->h(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/installations/a;-><init>(LK2/g;La3/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LT2/g<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lb3/j;

    invoke-static {v0}, LT2/g;->h(Ljava/lang/Class;)LT2/g$b;

    move-result-object v0

    const-string v1, "fire-installations"

    invoke-virtual {v0, v1}, LT2/g$b;->h(Ljava/lang/String;)LT2/g$b;

    move-result-object v0

    const-class v2, LK2/g;

    invoke-static {v2}, LT2/v;->m(Ljava/lang/Class;)LT2/v;

    move-result-object v2

    invoke-virtual {v0, v2}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    const-class v2, LZ2/j;

    invoke-static {v2}, LT2/v;->k(Ljava/lang/Class;)LT2/v;

    move-result-object v2

    invoke-virtual {v0, v2}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    const-class v2, LS2/a;

    const-class v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {v2, v3}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v2

    invoke-static {v2}, LT2/v;->l(LT2/F;)LT2/v;

    move-result-object v2

    invoke-virtual {v0, v2}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    const-class v2, LS2/b;

    const-class v3, Ljava/util/concurrent/Executor;

    invoke-static {v2, v3}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v2

    invoke-static {v2}, LT2/v;->l(LT2/F;)LT2/v;

    move-result-object v2

    invoke-virtual {v0, v2}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    new-instance v2, Lb3/k;

    invoke-direct {v2}, Lb3/k;-><init>()V

    invoke-virtual {v0, v2}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object v0

    invoke-virtual {v0}, LT2/g$b;->d()LT2/g;

    move-result-object v0

    invoke-static {}, LZ2/i;->a()LT2/g;

    move-result-object v2

    const-string v3, "18.0.0"

    invoke-static {v1, v3}, Ln3/h;->b(Ljava/lang/String;Ljava/lang/String;)LT2/g;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [LT2/g;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
