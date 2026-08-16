.class public Lsd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lsd/a;"
    }
.end annotation


# instance fields
.field public final a:Lqd/j;

.field public final b:Lqd/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lqd/A;

.field public d:Z


# direct methods
.method public constructor <init>(Lqd/j;Lqd/i;Lqd/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/j;",
            "Lqd/i<",
            "TT;>;",
            "Lqd/A;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsd/e;->d:Z

    iput-object p1, p0, Lsd/e;->a:Lqd/j;

    iput-object p2, p0, Lsd/e;->b:Lqd/i;

    iput-object p3, p0, Lsd/e;->c:Lqd/A;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsd/e;->d:Z

    return-void
.end method

.method public b(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lsd/e;->a:Lqd/j;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()[Lqd/z;
    .locals 1

    iget-object v0, p0, Lsd/e;->a:Lqd/j;

    invoke-interface {v0}, Lqd/j;->R()Lqd/z;

    move-result-object v0

    filled-new-array {v0}, [Lqd/z;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lsd/e;->d:Z

    return v0
.end method

.method public e()Lqd/A;
    .locals 1

    iget-object v0, p0, Lsd/e;->c:Lqd/A;

    return-object v0
.end method

.method public f()Lqd/j;
    .locals 1

    iget-object v0, p0, Lsd/e;->a:Lqd/j;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lsd/e;->a:Lqd/j;

    invoke-interface {v0}, Lqd/j;->g()V

    return-void
.end method

.method public h()Lqd/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/i<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/e;->b:Lqd/i;

    return-object v0
.end method
