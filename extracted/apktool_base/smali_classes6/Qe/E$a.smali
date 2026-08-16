.class public final LQe/E$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/q<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:Lhn/d;

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Z

.field public volatile f:Z


# direct methods
.method public constructor <init>(LBe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQe/E$a;->b:LBe/N;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, LQe/E$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LQe/E$a;->e:Z

    iget-object v0, p0, LQe/E$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LQe/E$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, LQe/E$a;->b:LBe/N;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "The source Publisher is empty"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, LQe/E$a;->b:LBe/N;

    invoke-interface {v1, v0}, LBe/N;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LQe/E$a;->f:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LQe/E$a;->f:Z

    iget-object v0, p0, LQe/E$a;->c:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LQe/E$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LQe/E$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p1, p0, LQe/E$a;->c:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LQe/E$a;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, LQe/E$a;->d:Ljava/lang/Object;

    iget-object p1, p0, LQe/E$a;->b:LBe/N;

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Too many elements in the Publisher"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LBe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, LQe/E$a;->d:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LQe/E$a;->c:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LQe/E$a;->c:Lhn/d;

    iget-object v0, p0, LQe/E$a;->b:LBe/N;

    invoke-interface {v0, p0}, LBe/N;->e(LDe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LQe/E$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LQe/E$a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, LQe/E$a;->d:Ljava/lang/Object;

    iget-object v0, p0, LQe/E$a;->b:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
