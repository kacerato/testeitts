.class public final LOe/S0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/G;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/G<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/S0$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:LOe/S0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/S0$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;LOe/S0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/S0$j<",
            "TT;>;>;",
            "LOe/S0$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/S0$k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, LOe/S0$k;->c:LOe/S0$b;

    return-void
.end method


# virtual methods
.method public c(LBe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, LOe/S0$k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOe/S0$j;

    if-nez v0, :cond_1

    iget-object v0, p0, LOe/S0$k;->c:LOe/S0$b;

    invoke-interface {v0}, LOe/S0$b;->call()LOe/S0$h;

    move-result-object v0

    new-instance v1, LOe/S0$j;

    invoke-direct {v1, v0}, LOe/S0$j;-><init>(LOe/S0$h;)V

    iget-object v0, p0, LOe/S0$k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    new-instance v1, LOe/S0$d;

    invoke-direct {v1, v0, p1}, LOe/S0$d;-><init>(LOe/S0$j;LBe/I;)V

    invoke-interface {p1, v1}, LBe/I;->e(LDe/c;)V

    invoke-virtual {v0, v1}, LOe/S0$j;->b(LOe/S0$d;)Z

    invoke-virtual {v1}, LOe/S0$d;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, LOe/S0$j;->c(LOe/S0$d;)V

    return-void

    :cond_2
    iget-object p1, v0, LOe/S0$j;->b:LOe/S0$h;

    invoke-interface {p1, v1}, LOe/S0$h;->a(LOe/S0$d;)V

    return-void
.end method
