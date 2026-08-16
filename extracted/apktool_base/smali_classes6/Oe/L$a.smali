.class public final LOe/L$a;
.super LJe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "LJe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final h:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>(LBe/I;LFe/o;LFe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "LFe/o<",
            "-TT;TK;>;",
            "LFe/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LJe/a;-><init>(LBe/I;)V

    iput-object p2, p0, LOe/L$a;->g:LFe/o;

    iput-object p3, p0, LOe/L$a;->h:LFe/d;

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LJe/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LJe/a;->f:I

    if-eqz v0, :cond_1

    iget-object v0, p0, LJe/a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, LOe/L$a;->g:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, LOe/L$a;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, LOe/L$a;->h:LFe/d;

    iget-object v2, p0, LOe/L$a;->i:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, LFe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, LOe/L$a;->i:Ljava/lang/Object;

    if-eqz v1, :cond_3

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, LOe/L$a;->j:Z

    iput-object v0, p0, LOe/L$a;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, LJe/a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    return-void

    :goto_0
    invoke-virtual {p0, p1}, LJe/a;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public m(I)I
    .locals 0

    invoke-virtual {p0, p1}, LJe/a;->g(I)I

    move-result p1

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, LJe/a;->d:LIe/j;

    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, LOe/L$a;->g:LFe/o;

    invoke-interface {v1, v0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, LOe/L$a;->j:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, LOe/L$a;->j:Z

    iput-object v1, p0, LOe/L$a;->i:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v2, p0, LOe/L$a;->h:LFe/d;

    iget-object v3, p0, LOe/L$a;->i:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, LFe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, LOe/L$a;->i:Ljava/lang/Object;

    return-object v0

    :cond_2
    iput-object v1, p0, LOe/L$a;->i:Ljava/lang/Object;

    goto :goto_0
.end method
