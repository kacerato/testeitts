.class public final LLe/Y1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/Y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBe/q<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LLe/Y1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/Y1$b<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LLe/Y1;


# direct methods
.method public constructor <init>(LLe/Y1;LLe/Y1$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/Y1$b<",
            "TT;TU;TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, LLe/Y1$a;->c:LLe/Y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LLe/Y1$a;->b:LLe/Y1$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/Y1$a;->b:LLe/Y1$b;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/Y1$a;->b:LLe/Y1$b;

    invoke-virtual {v0, p1}, LLe/Y1$b;->c(Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/Y1$a;->b:LLe/Y1$b;

    invoke-virtual {v0, p1}, LLe/Y1$b;->b(Ljava/lang/Throwable;)V

    return-void
.end method
