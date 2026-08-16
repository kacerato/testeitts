.class public final LLe/h$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final g:J = -0x10756d62aa142dccL


# instance fields
.field public final b:LLe/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/h$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(LLe/h$a;ILhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/h$a<",
            "TT;>;I",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LLe/h$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, LLe/h$b;->b:LLe/h$a;

    iput p2, p0, LLe/h$b;->c:I

    iput-object p3, p0, LLe/h$b;->d:Lhn/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LLe/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/h$b;->d:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/h$b;->b:LLe/h$a;

    iget v1, p0, LLe/h$b;->c:I

    invoke-virtual {v0, v1}, LLe/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/h$b;->e:Z

    iget-object v0, p0, LLe/h$b;->d:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-static {p0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/h$b;->d:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/h$b;->b:LLe/h$a;

    iget v1, p0, LLe/h$b;->c:I

    invoke-virtual {v0, v1}, LLe/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/h$b;->e:Z

    iget-object v0, p0, LLe/h$b;->d:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/h$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1, p2}, LUe/j;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/h$b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1}, LUe/j;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lhn/d;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, LLe/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/h$b;->d:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/h$b;->b:LLe/h$a;

    iget v1, p0, LLe/h$b;->c:I

    invoke-virtual {v0, v1}, LLe/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/h$b;->e:Z

    iget-object v0, p0, LLe/h$b;->d:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
