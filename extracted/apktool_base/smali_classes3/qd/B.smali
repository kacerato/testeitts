.class public final Lqd/B;
.super Lqd/z;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lqd/B;",
            "[",
            "Lqd/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile e:[Lqd/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, [Lqd/z;

    const-string v1, "e"

    const-class v2, Lqd/B;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lqd/B;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lqd/z;-><init>(J)V

    const/4 v0, 0x0

    new-array v0, v0, [Lqd/z;

    iput-object v0, p0, Lqd/B;->e:[Lqd/z;

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-object v0, p0, Lqd/B;->e:[Lqd/z;

    invoke-static {v0}, Ltd/d;->c([Lqd/z;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)V
    .locals 4

    iget-object v0, p0, Lqd/B;->e:[Lqd/z;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lqd/z;->e(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lqd/z;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lqd/B;->e:[Lqd/z;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lqd/z;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    sget-object v1, Lqd/B;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public h(Lqd/f;Lqd/z;)V
    .locals 1

    sget-object v0, Lqd/B;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    filled-new-array {p2}, [Lqd/z;

    move-result-object p2

    invoke-static {p0, v0, p1, p2}, Lqd/C;->a(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lqd/f;[Lqd/z;)V

    return-void
.end method

.method public i(Lqd/z;)Z
    .locals 1

    sget-object v0, Lqd/B;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p0, v0, p1}, Lqd/C;->c(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lqd/z;)Z

    move-result p1

    return p1
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lqd/B;->e:[Lqd/z;

    array-length v0, v0

    return v0
.end method
