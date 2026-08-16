.class public final LLe/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/e;
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
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LLe/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/e$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Throwable;

.field public h:Z


# direct methods
.method public constructor <init>(Lhn/b;LLe/e$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;",
            "LLe/e$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/e$a;->e:Z

    iput-boolean v0, p0, LLe/e$a;->f:Z

    iput-object p1, p0, LLe/e$a;->c:Lhn/b;

    iput-object p2, p0, LLe/e$a;->b:LLe/e$b;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    :try_start_0
    iget-boolean v0, p0, LLe/e$a;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, LLe/e$a;->h:Z

    iget-object v0, p0, LLe/e$a;->b:LLe/e$b;

    invoke-virtual {v0}, LLe/e$b;->k()V

    iget-object v0, p0, LLe/e$a;->c:Lhn/b;

    invoke-static {v0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object v0

    invoke-virtual {v0}, LBe/l;->N3()LBe/l;

    move-result-object v0

    iget-object v2, p0, LLe/e$a;->b:LLe/e$b;

    invoke-virtual {v0, v2}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LLe/e$a;->b:LLe/e$b;

    invoke-virtual {v0}, LLe/e$b;->m()LBe/A;

    move-result-object v0

    invoke-virtual {v0}, LBe/A;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iput-boolean v3, p0, LLe/e$a;->f:Z

    invoke-virtual {v0}, LBe/A;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LLe/e$a;->d:Ljava/lang/Object;

    return v1

    :cond_1
    iput-boolean v3, p0, LLe/e$a;->e:Z

    invoke-virtual {v0}, LBe/A;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, LBe/A;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LBe/A;->d()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, LLe/e$a;->g:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, LLe/e$a;->b:LLe/e$b;

    invoke-virtual {v1}, Lcf/b;->dispose()V

    iput-object v0, p0, LLe/e$a;->g:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, LLe/e$a;->g:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-boolean v0, p0, LLe/e$a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, LLe/e$a;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LLe/e$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LLe/e$a;->g:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LLe/e$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/e$a;->f:Z

    iget-object v0, p0, LLe/e$a;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
