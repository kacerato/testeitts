.class public final LOe/H0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/G;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/H0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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
            "LOe/H0$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/H0$b<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/H0$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

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

    new-instance v0, LOe/H0$a;

    invoke-direct {v0, p1}, LOe/H0$a;-><init>(LBe/I;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    :cond_0
    :goto_0
    iget-object p1, p0, LOe/H0$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOe/H0$b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LOe/H0$b;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    new-instance v1, LOe/H0$b;

    iget-object v2, p0, LOe/H0$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, LOe/H0$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v2, p0, LOe/H0$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :cond_3
    invoke-virtual {p1, v0}, LOe/H0$b;->b(LOe/H0$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, LOe/H0$a;->a(LOe/H0$b;)V

    return-void
.end method
