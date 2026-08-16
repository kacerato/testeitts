.class public final LLe/P$a;
.super LTe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/P;
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
        "LTe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LIe/a;LFe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIe/a<",
            "-TT;>;",
            "LFe/g<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTe/a;-><init>(LIe/a;)V

    iput-object p2, p0, LLe/P$a;->g:LFe/g;

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LTe/a;->b:LIe/a;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    iget v0, p0, LTe/a;->f:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, LLe/P$a;->g:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LTe/a;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public m(I)I
    .locals 0

    invoke-virtual {p0, p1}, LTe/a;->e(I)I

    move-result p1

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, LTe/a;->d:LIe/l;

    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LLe/P$a;->g:LFe/g;

    invoke-interface {v1, v0}, LFe/g;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public u(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, LTe/a;->b:LIe/a;

    invoke-interface {v0, p1}, LIe/a;->u(Ljava/lang/Object;)Z

    move-result v0

    :try_start_0
    iget-object v1, p0, LLe/P$a;->g:LFe/g;

    invoke-interface {v1, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, LTe/a;->d(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method
