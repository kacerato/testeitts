.class public final LLe/w1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LIe/a;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/w1$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LIe/a<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final h:J = -0x5707023ca3cf971dL


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:LLe/w1$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/w1$a<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final f:Lio/reactivex/internal/util/c;

.field public volatile g:Z


# direct methods
.method public constructor <init>(Lhn/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/w1$a;->b:Lhn/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/w1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/w1$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, LLe/w1$a$a;

    invoke-direct {p1, p0}, LLe/w1$a$a;-><init>(LLe/w1$a;)V

    iput-object p1, p0, LLe/w1$a;->e:LLe/w1$a$a;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LLe/w1$a;->f:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LLe/w1$a;->e:LLe/w1$a$a;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/w1$a;->b:Lhn/c;

    iget-object v1, p0, LLe/w1$a;->f:Lio/reactivex/internal/util/c;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/k;->b(Lhn/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/w1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/w1$a;->e:LLe/w1$a$a;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LLe/w1$a;->u(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LLe/w1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 2

    iget-object v0, p0, LLe/w1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, LLe/w1$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, LUe/j;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/w1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, LLe/w1$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, LUe/j;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lhn/d;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LLe/w1$a;->e:LLe/w1$a$a;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/w1$a;->b:Lhn/c;

    iget-object v1, p0, LLe/w1$a;->f:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->d(Lhn/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public u(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LLe/w1$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/w1$a;->b:Lhn/c;

    iget-object v1, p0, LLe/w1$a;->f:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->f(Lhn/c;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
