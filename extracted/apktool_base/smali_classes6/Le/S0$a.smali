.class public final LLe/S0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhn/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/S0;
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
        "Lhn/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LLe/S0$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LLe/S0$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLe/S0$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput p2, p0, LLe/S0$a;->c:I

    return-void
.end method


# virtual methods
.method public l(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LLe/S0$b;

    invoke-direct {v0, p1}, LLe/S0$b;-><init>(Lhn/c;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    :goto_0
    iget-object p1, p0, LLe/S0$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LLe/S0$c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LLe/S0$c;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    new-instance v1, LLe/S0$c;

    iget-object v2, p0, LLe/S0$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, LLe/S0$a;->c:I

    invoke-direct {v1, v2, v3}, LLe/S0$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    iget-object v2, p0, LLe/S0$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :cond_3
    invoke-virtual {p1, v0}, LLe/S0$c;->b(LLe/S0$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, LLe/S0$c;->f(LLe/S0$b;)V

    goto :goto_1

    :cond_4
    iput-object p1, v0, LLe/S0$b;->c:LLe/S0$c;

    :goto_1
    invoke-virtual {p1}, LLe/S0$c;->e()V

    return-void
.end method
