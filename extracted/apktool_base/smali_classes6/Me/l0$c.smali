.class public final LMe/l0$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lhn/d;",
        ">;",
        "LBe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = 0x783c01649d3b2729L


# instance fields
.field public final b:LMe/l0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/l0$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMe/l0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMe/l0$b<",
            "TT;TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LMe/l0$c;->b:LMe/l0$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LMe/l0$c;->b:LMe/l0$b;

    invoke-virtual {v0}, LMe/l0$b;->c()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    iget-object p1, p0, LMe/l0$c;->b:LMe/l0$b;

    invoke-virtual {p1}, LMe/l0$b;->c()V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LMe/l0$c;->b:LMe/l0$b;

    invoke-virtual {v0, p1}, LMe/l0$b;->f(Ljava/lang/Throwable;)V

    return-void
.end method
