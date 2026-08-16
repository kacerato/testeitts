.class public final LOe/M1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/M1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LOe/M1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/M1$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public e:Ljava/lang/Throwable;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOe/M1$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/M1$a<",
            "TT;TR;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LOe/M1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, LOe/M1$b;->b:LOe/M1$a;

    new-instance p1, LRe/c;

    invoke-direct {p1, p2}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/M1$b;->c:LRe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/M1$b;->d:Z

    iget-object v0, p0, LOe/M1$b;->b:LOe/M1$a;

    invoke-virtual {v0}, LOe/M1$a;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LOe/M1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/M1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/M1$b;->c:LRe/c;

    invoke-virtual {v0, p1}, LRe/c;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, LOe/M1$b;->b:LOe/M1$a;

    invoke-virtual {p1}, LOe/M1$a;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LOe/M1$b;->e:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/M1$b;->d:Z

    iget-object p1, p0, LOe/M1$b;->b:LOe/M1$a;

    invoke-virtual {p1}, LOe/M1$a;->f()V

    return-void
.end method
