.class public LT2/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;
.implements La3/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La3/b<",
        "TT;>;",
        "La3/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:La3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:La3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:La3/a$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:La3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT2/A;

    invoke-direct {v0}, LT2/A;-><init>()V

    sput-object v0, LT2/D;->c:La3/a$a;

    new-instance v0, LT2/B;

    invoke-direct {v0}, LT2/B;-><init>()V

    sput-object v0, LT2/D;->d:La3/b;

    return-void
.end method

.method public constructor <init>(La3/a$a;La3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/a$a<",
            "TT;>;",
            "La3/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/D;->a:La3/a$a;

    iput-object p2, p0, LT2/D;->b:La3/b;

    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, LT2/D;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(La3/a$a;La3/a$a;La3/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, LT2/D;->h(La3/a$a;La3/a$a;La3/b;)V

    return-void
.end method

.method public static synthetic d(La3/b;)V
    .locals 0

    invoke-static {p0}, LT2/D;->f(La3/b;)V

    return-void
.end method

.method public static e()LT2/D;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LT2/D<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LT2/D;

    sget-object v1, LT2/D;->c:La3/a$a;

    sget-object v2, LT2/D;->d:La3/b;

    invoke-direct {v0, v1, v2}, LT2/D;-><init>(La3/a$a;La3/b;)V

    return-object v0
.end method

.method public static synthetic f(La3/b;)V
    .locals 0

    return-void
.end method

.method public static synthetic g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic h(La3/a$a;La3/a$a;La3/b;)V
    .locals 0

    invoke-interface {p0, p2}, La3/a$a;->a(La3/b;)V

    invoke-interface {p1, p2}, La3/a$a;->a(La3/b;)V

    return-void
.end method

.method public static i(La3/b;)LT2/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La3/b<",
            "TT;>;)",
            "LT2/D<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LT2/D;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LT2/D;-><init>(La3/a$a;La3/b;)V

    return-object v0
.end method


# virtual methods
.method public a(La3/a$a;)V
    .locals 3
    .param p1    # La3/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/a$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LT2/D;->b:La3/b;

    sget-object v1, LT2/D;->d:La3/b;

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, La3/a$a;->a(La3/b;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LT2/D;->b:La3/b;

    if-eq v0, v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, LT2/D;->a:La3/a$a;

    new-instance v2, LT2/C;

    invoke-direct {v2, v1, p1}, LT2/C;-><init>(La3/a$a;La3/a$a;)V

    iput-object v2, p0, LT2/D;->a:La3/a$a;

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, La3/a$a;->a(La3/b;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LT2/D;->b:La3/b;

    invoke-interface {v0}, La3/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j(La3/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LT2/D;->b:La3/b;

    sget-object v1, LT2/D;->d:La3/b;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LT2/D;->a:La3/a$a;

    const/4 v1, 0x0

    iput-object v1, p0, LT2/D;->a:La3/a$a;

    iput-object p1, p0, LT2/D;->b:La3/b;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, La3/a$a;->a(La3/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
