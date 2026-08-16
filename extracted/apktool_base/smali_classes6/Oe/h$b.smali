.class public final LOe/h$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/h;
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
        "LDe/c;",
        ">;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:J = -0x10756d62aa142dccL


# instance fields
.field public final b:LOe/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/h$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(LOe/h$a;ILBe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/h$a<",
            "TT;>;I",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/h$b;->b:LOe/h$a;

    iput p2, p0, LOe/h$b;->c:I

    iput-object p3, p0, LOe/h$b;->d:LBe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LOe/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/h$b;->d:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/h$b;->b:LOe/h$a;

    iget v1, p0, LOe/h$b;->c:I

    invoke-virtual {v0, v1}, LOe/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/h$b;->e:Z

    iget-object v0, p0, LOe/h$b;->d:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/h$b;->d:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/h$b;->b:LOe/h$a;

    iget v1, p0, LOe/h$b;->c:I

    invoke-virtual {v0, v1}, LOe/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/h$b;->e:Z

    iget-object v0, p0, LOe/h$b;->d:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, LOe/h$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/h$b;->d:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/h$b;->b:LOe/h$a;

    iget v1, p0, LOe/h$b;->c:I

    invoke-virtual {v0, v1}, LOe/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/h$b;->e:Z

    iget-object v0, p0, LOe/h$b;->d:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
