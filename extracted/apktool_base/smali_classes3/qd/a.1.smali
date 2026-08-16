.class public abstract Lqd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/E;


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lqd/a;",
            "[",
            "Lqd/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Lqd/J;

.field public final d:Lqd/z;

.field public volatile e:[Lqd/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, [Lqd/z;

    const-string v1, "e"

    const-class v2, Lqd/a;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lqd/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILqd/J;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqd/z;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lqd/z;-><init>(J)V

    iput-object v0, p0, Lqd/a;->d:Lqd/z;

    const/4 v0, 0x0

    new-array v0, v0, [Lqd/z;

    iput-object v0, p0, Lqd/a;->e:[Lqd/z;

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iput p1, p0, Lqd/a;->b:I

    iput-object p2, p0, Lqd/a;->c:Lqd/J;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be a power of 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must not be less than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lqd/z;)Z
    .locals 1

    sget-object v0, Lqd/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p0, v0, p1}, Lqd/C;->c(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lqd/z;)Z

    move-result p1

    return p1
.end method

.method public e()J
    .locals 3

    iget-object v0, p0, Lqd/a;->e:[Lqd/z;

    iget-object v1, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v1}, Lqd/z;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltd/d;->d([Lqd/z;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCursor()J
    .locals 2

    iget-object v0, p0, Lqd/a;->d:Lqd/z;

    invoke-virtual {v0}, Lqd/z;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs i([Lqd/z;)Lqd/A;
    .locals 3

    new-instance v0, Lqd/x;

    iget-object v1, p0, Lqd/a;->c:Lqd/J;

    iget-object v2, p0, Lqd/a;->d:Lqd/z;

    invoke-direct {v0, p0, v1, v2, p1}, Lqd/x;-><init>(Lqd/E;Lqd/J;Lqd/z;[Lqd/z;)V

    return-object v0
.end method

.method public final varargs k([Lqd/z;)V
    .locals 1

    sget-object v0, Lqd/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p0, v0, p0, p1}, Lqd/C;->a(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lqd/f;[Lqd/z;)V

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lqd/a;->b:I

    return v0
.end method
