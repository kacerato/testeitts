.class public final LLe/k;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LEe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LEe/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(LEe/a;ILFe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEe/a<",
            "+TT;>;I",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/k;->c:LEe/a;

    iput p2, p0, LLe/k;->d:I

    iput-object p3, p0, LLe/k;->e:LFe/g;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/k;->c:LEe/a;

    invoke-virtual {v0, p1}, LBe/l;->l(Lhn/c;)V

    iget-object p1, p0, LLe/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, LLe/k;->d:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LLe/k;->c:LEe/a;

    iget-object v0, p0, LLe/k;->e:LFe/g;

    invoke-virtual {p1, v0}, LEe/a;->S8(LFe/g;)V

    :cond_0
    return-void
.end method
