.class public final LLe/r$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/r;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final h:J = 0x5df4ba2ba2d80afaL


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LLe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public e:LLe/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/r$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>(Lhn/c;LLe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LLe/r<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/r$a;->b:Lhn/c;

    iput-object p2, p0, LLe/r$a;->c:LLe/r;

    iget-object p1, p2, LLe/r;->h:LLe/r$b;

    iput-object p1, p0, LLe/r$a;->e:LLe/r$b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/r$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    iget-object v0, p0, LLe/r$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/r$a;->c:LLe/r;

    invoke-virtual {v0, p0}, LLe/r;->S8(LLe/r$a;)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/r$a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, LLe/r$a;->c:LLe/r;

    invoke-virtual {p1, p0}, LLe/r;->T8(LLe/r$a;)V

    :cond_0
    return-void
.end method
