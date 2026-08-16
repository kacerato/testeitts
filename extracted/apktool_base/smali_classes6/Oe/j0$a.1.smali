.class public final LOe/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/k;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/k<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TS;-",
            "LBe/k<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TS;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(LBe/I;LFe/c;LFe/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "LFe/c<",
            "TS;-",
            "LBe/k<",
            "TT;>;TS;>;",
            "LFe/g<",
            "-TS;>;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/j0$a;->b:LBe/I;

    iput-object p2, p0, LOe/j0$a;->c:LFe/c;

    iput-object p3, p0, LOe/j0$a;->d:LFe/g;

    iput-object p4, p0, LOe/j0$a;->e:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LOe/j0$a;->d:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/j0$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/j0$a;->g:Z

    iget-object v0, p0, LOe/j0$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, LOe/j0$a;->e:Ljava/lang/Object;

    iget-boolean v1, p0, LOe/j0$a;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, LOe/j0$a;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, LOe/j0$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, LOe/j0$a;->c:LFe/c;

    :cond_1
    iget-boolean v3, p0, LOe/j0$a;->f:Z

    if-eqz v3, :cond_2

    iput-object v2, p0, LOe/j0$a;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, LOe/j0$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, LOe/j0$a;->h:Z

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v1, v0, p0}, LFe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v4, p0, LOe/j0$a;->g:Z

    if-eqz v4, :cond_1

    iput-boolean v3, p0, LOe/j0$a;->f:Z

    iput-object v2, p0, LOe/j0$a;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, LOe/j0$a;->b(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-object v2, p0, LOe/j0$a;->e:Ljava/lang/Object;

    iput-boolean v3, p0, LOe/j0$a;->f:Z

    invoke-virtual {p0, v1}, LOe/j0$a;->onError(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, LOe/j0$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/j0$a;->f:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/j0$a;->f:Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/j0$a;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, LOe/j0$a;->h:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext already called in this generate turn"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LOe/j0$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LOe/j0$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/j0$a;->h:Z

    iget-object v0, p0, LOe/j0$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/j0$a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/j0$a;->g:Z

    iget-object v0, p0, LOe/j0$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
