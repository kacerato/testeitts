.class public final LT2/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La3/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LT2/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public d:LT2/m;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LT2/s$b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LT2/s$b;->c:Ljava/util/List;

    sget-object v0, LT2/m;->a:LT2/m;

    iput-object v0, p0, LT2/s$b;->d:LT2/m;

    iput-object p1, p0, LT2/s$b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    invoke-static {p0}, LT2/s$b;->f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public b(LT2/g;)LT2/s$b;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT2/g<",
            "*>;)",
            "LT2/s$b;"
        }
    .end annotation

    iget-object v0, p0, LT2/s$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Lcom/google/firebase/components/ComponentRegistrar;)LT2/s$b;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    iget-object v0, p0, LT2/s$b;->b:Ljava/util/List;

    new-instance v1, LT2/t;

    invoke-direct {v1, p1}, LT2/t;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Ljava/util/Collection;)LT2/s$b;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "La3/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;)",
            "LT2/s$b;"
        }
    .end annotation

    iget-object v0, p0, LT2/s$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public e()LT2/s;
    .locals 7

    new-instance v6, LT2/s;

    iget-object v1, p0, LT2/s$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, LT2/s$b;->b:Ljava/util/List;

    iget-object v3, p0, LT2/s$b;->c:Ljava/util/List;

    iget-object v4, p0, LT2/s$b;->d:LT2/m;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LT2/s;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;LT2/m;LT2/s$a;)V

    return-object v6
.end method

.method public g(LT2/m;)LT2/s$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    iput-object p1, p0, LT2/s$b;->d:LT2/m;

    return-object p0
.end method
