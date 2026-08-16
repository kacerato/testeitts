.class public final LQe/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/f$a$a;,
        LQe/f$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBe/N<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LGe/h;

.field public final c:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:LQe/f;


# direct methods
.method public constructor <init>(LQe/f;LGe/h;LBe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/h;",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LQe/f$a;->d:LQe/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LQe/f$a;->b:LGe/h;

    iput-object p3, p0, LQe/f$a;->c:LBe/N;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/f$a;->b:LGe/h;

    iget-object v1, p0, LQe/f$a;->d:LQe/f;

    iget-object v1, v1, LQe/f;->e:LBe/J;

    new-instance v2, LQe/f$a$b;

    invoke-direct {v2, p0, p1}, LQe/f$a$b;-><init>(LQe/f$a;Ljava/lang/Object;)V

    iget-object p1, p0, LQe/f$a;->d:LQe/f;

    iget-wide v3, p1, LQe/f;->c:J

    iget-object p1, p1, LQe/f;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LQe/f$a;->b:LGe/h;

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, LQe/f$a;->b:LGe/h;

    iget-object v1, p0, LQe/f$a;->d:LQe/f;

    iget-object v1, v1, LQe/f;->e:LBe/J;

    new-instance v2, LQe/f$a$a;

    invoke-direct {v2, p0, p1}, LQe/f$a$a;-><init>(LQe/f$a;Ljava/lang/Throwable;)V

    iget-object p1, p0, LQe/f$a;->d:LQe/f;

    iget-boolean v3, p1, LQe/f;->f:Z

    if-eqz v3, :cond_0

    iget-wide v3, p1, LQe/f;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p1, p1, LQe/f;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method
