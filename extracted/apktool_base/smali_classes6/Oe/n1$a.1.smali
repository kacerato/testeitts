.class public final LOe/n1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/I<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final g:J = 0x3540c639803a63b9L


# instance fields
.field public final b:LOe/n1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/n1$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:I

.field public volatile e:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile f:Z


# direct methods
.method public constructor <init>(LOe/n1$b;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/n1$b<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/n1$a;->b:LOe/n1$b;

    iput-wide p2, p0, LOe/n1$a;->c:J

    iput p4, p0, LOe/n1$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-wide v0, p0, LOe/n1$a;->c:J

    iget-object v2, p0, LOe/n1$a;->b:LOe/n1$b;

    iget-wide v2, v2, LOe/n1$b;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/n1$a;->f:Z

    iget-object v0, p0, LOe/n1$a;->b:LOe/n1$b;

    invoke-virtual {v0}, LOe/n1$b;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, LIe/j;

    if-eqz v0, :cond_1

    check-cast p1, LIe/j;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, LIe/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, LOe/n1$a;->e:LIe/o;

    iput-boolean v1, p0, LOe/n1$a;->f:Z

    iget-object p1, p0, LOe/n1$a;->b:LOe/n1$b;

    invoke-virtual {p1}, LOe/n1$b;->c()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-object p1, p0, LOe/n1$a;->e:LIe/o;

    return-void

    :cond_1
    new-instance p1, LRe/c;

    iget v0, p0, LOe/n1$a;->d:I

    invoke-direct {p1, v0}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/n1$a;->e:LIe/o;

    :cond_2
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-wide v0, p0, LOe/n1$a;->c:J

    iget-object v2, p0, LOe/n1$a;->b:LOe/n1$b;

    iget-wide v2, v2, LOe/n1$b;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, LOe/n1$a;->e:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, LOe/n1$a;->b:LOe/n1$b;

    invoke-virtual {p1}, LOe/n1$b;->c()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/n1$a;->b:LOe/n1$b;

    invoke-virtual {v0, p0, p1}, LOe/n1$b;->f(LOe/n1$a;Ljava/lang/Throwable;)V

    return-void
.end method
