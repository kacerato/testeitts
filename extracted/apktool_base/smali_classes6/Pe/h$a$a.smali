.class public final LPe/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPe/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final synthetic d:LPe/h$a;


# direct methods
.method public constructor <init>(LPe/h$a;II)V
    .locals 0

    iput-object p1, p0, LPe/h$a$a;->d:LPe/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LPe/h$a$a;->b:I

    iput p3, p0, LPe/h$a$a;->c:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 7

    iget-object v0, p0, LPe/h$a$a;->d:LPe/h$a;

    iget-object v1, v0, LPe/h$a;->c:Ljava/util/concurrent/atomic/AtomicLongArray;

    iget v0, p0, LPe/h$a$a;->c:I

    iget v2, p0, LPe/h$a$a;->b:I

    add-int/2addr v2, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LPe/h$a$a;->d:LPe/h$a;

    iget v1, p0, LPe/h$a$a;->c:I

    add-int/2addr v1, v1

    invoke-virtual {v0, v1}, LPe/h$a;->b(I)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 7

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LPe/h$a$a;->d:LPe/h$a;

    iget-object v0, v0, LPe/h$a;->c:Ljava/util/concurrent/atomic/AtomicLongArray;

    :cond_0
    iget v1, p0, LPe/h$a$a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v3, v4, p1, p2}, Lio/reactivex/internal/util/d;->c(JJ)J

    move-result-wide v5

    iget v2, p0, LPe/h$a$a;->b:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, LPe/h$a$a;->d:LPe/h$a;

    iget-object p1, p1, LPe/h$a;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget p2, p0, LPe/h$a$a;->c:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, LPe/h$a$a;->d:LPe/h$a;

    invoke-virtual {p1}, LPe/h$a;->c()V

    :cond_2
    return-void
.end method
