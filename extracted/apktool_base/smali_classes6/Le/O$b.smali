.class public final LLe/O$b;
.super LTe/b;
.source "SourceFile"

# interfaces
.implements LIe/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "LTe/b<",
        "TT;TT;>;",
        "LIe/a<",
        "TT;>;"
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
.method public constructor <init>(Lhn/c;LFe/o;LFe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LFe/o<",
            "-TT;TK;>;",
            "LFe/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTe/b;-><init>(Lhn/c;)V

    iput-object p2, p0, LLe/O$b;->g:LFe/o;

    iput-object p3, p0, LLe/O$b;->h:LFe/d;

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LLe/O$b;->u(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LTe/b;->c:Lhn/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public m(I)I
    .locals 0

    invoke-virtual {p0, p1}, LTe/b;->e(I)I

    move-result p1

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
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

    :cond_0
    :goto_0
    iget-object v0, p0, LTe/b;->d:LIe/l;

    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, LLe/O$b;->g:LFe/o;

    invoke-interface {v1, v0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, LLe/O$b;->j:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iput-boolean v3, p0, LLe/O$b;->j:Z

    iput-object v1, p0, LLe/O$b;->i:Ljava/lang/Object;

    return-object v0

    :cond_2
    iget-object v2, p0, LLe/O$b;->h:LFe/d;

    iget-object v4, p0, LLe/O$b;->i:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, LFe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, p0, LLe/O$b;->i:Ljava/lang/Object;

    return-object v0

    :cond_3
    iput-object v1, p0, LLe/O$b;->i:Ljava/lang/Object;

    iget v0, p0, LTe/b;->f:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, LTe/b;->c:Lhn/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lhn/d;->i(J)V

    goto :goto_0
.end method

.method public u(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LTe/b;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, LTe/b;->f:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, LTe/b;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return v2

    :cond_1
    :try_start_0
    iget-object v0, p0, LLe/O$b;->g:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v3, p0, LLe/O$b;->j:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, LLe/O$b;->h:LFe/d;

    iget-object v4, p0, LLe/O$b;->i:Ljava/lang/Object;

    invoke-interface {v3, v4, v0}, LFe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iput-object v0, p0, LLe/O$b;->i:Ljava/lang/Object;

    if-eqz v3, :cond_3

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, LLe/O$b;->j:Z

    iput-object v0, p0, LLe/O$b;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, LTe/b;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return v2

    :goto_0
    invoke-virtual {p0, p1}, LTe/b;->d(Ljava/lang/Throwable;)V

    return v2
.end method
