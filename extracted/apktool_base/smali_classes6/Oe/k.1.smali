.class public final LOe/k;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LVe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LVe/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(LVe/a;ILFe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LVe/a<",
            "+TT;>;I",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/k;->b:LVe/a;

    iput p2, p0, LOe/k;->c:I

    iput-object p3, p0, LOe/k;->d:LFe/g;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/k;->b:LVe/a;

    invoke-virtual {v0, p1}, LBe/B;->c(LBe/I;)V

    iget-object p1, p0, LOe/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, LOe/k;->c:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LOe/k;->b:LVe/a;

    iget-object v0, p0, LOe/k;->d:LFe/g;

    invoke-virtual {p1, v0}, LVe/a;->n8(LFe/g;)V

    :cond_0
    return-void
.end method
