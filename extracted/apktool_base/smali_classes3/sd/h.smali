.class public Lsd/h;
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
.field public final a:Lqd/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/M<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lqd/A;

.field public c:Z


# direct methods
.method public constructor <init>(Lqd/M;Lqd/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/M<",
            "TT;>;",
            "Lqd/A;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsd/h;->c:Z

    iput-object p1, p0, Lsd/h;->a:Lqd/M;

    iput-object p2, p0, Lsd/h;->b:Lqd/A;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsd/h;->c:Z

    return-void
.end method

.method public b(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lsd/h;->a:Lqd/M;

    invoke-virtual {v0, p1}, Lqd/M;->d(Ljava/util/concurrent/Executor;)Lqd/y;

    return-void
.end method

.method public c()[Lqd/z;
    .locals 1

    iget-object v0, p0, Lsd/h;->a:Lqd/M;

    invoke-virtual {v0}, Lqd/M;->b()[Lqd/z;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lsd/h;->c:Z

    return v0
.end method

.method public e()Lqd/A;
    .locals 1

    iget-object v0, p0, Lsd/h;->b:Lqd/A;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lsd/h;->a:Lqd/M;

    invoke-virtual {v0}, Lqd/M;->c()V

    return-void
.end method
