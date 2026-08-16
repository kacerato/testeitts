.class public final Lgg/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgg/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgg/d<",
        "TE;>;"
    }
.end annotation

.annotation build Leg/a1;
.end annotation

.annotation runtime Lnf/o;
    level = .enum Lnf/q;->WARNING:Lnf/q;
    message = "ConflatedBroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
.end annotation


# instance fields
.field public final b:Lgg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/e<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    new-instance v0, Lgg/e;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lgg/e;-><init>(I)V

    invoke-direct {p0, v0}, Lgg/v;-><init>(Lgg/e;)V

    return-void
.end method

.method public constructor <init>(Lgg/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/e<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgg/v;->b:Lgg/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lgg/v;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lgg/v;->p(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0}, Lgg/e;->A()Z

    move-result v0

    return v0
.end method

.method public F(LMf/l;)V
    .locals 1
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0, p1}, Lgg/j;->F(LMf/l;)V

    return-void
.end method

.method public J(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0, p1}, Lgg/e;->J(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0, p1, p2}, Lgg/e;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0, p1}, Lgg/j;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Binary compatibility only"
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0, p1}, Lgg/j;->b(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0}, Lgg/e;->L1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0}, Lgg/e;->N1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j()Lpg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpg/i<",
            "TE;",
            "Lgg/E<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0}, Lgg/j;->j()Lpg/i;

    move-result-object v0

    return-object v0
.end method

.method public m()Lgg/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0}, Lgg/e;->m()Lgg/D;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lnf/g0;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0, p1}, Lgg/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lgg/v;->b:Lgg/e;

    invoke-virtual {v0, p1}, Lgg/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
