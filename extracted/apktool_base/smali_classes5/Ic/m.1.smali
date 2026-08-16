.class public LIc/m;
.super LK8/f;
.source "SourceFile"


# static fields
.field private static final ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation runtime LH6/g;
    .end annotation
.end field


# instance fields
.field private final hash:I
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private final id:J
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, LIc/m;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LK8/f;-><init>()V

    invoke-static {}, LIc/m;->d()J

    move-result-wide v0

    iput-wide v0, p0, LIc/m;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    iput v0, p0, LIc/m;->hash:I

    return-void
.end method

.method public static d()J
    .locals 5
    .annotation runtime LH6/g;
    .end annotation

    :cond_0
    sget-object v0, LIc/m;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v1
.end method


# virtual methods
.method public getLongId()J
    .locals 2
    .annotation runtime LH6/g;
    .end annotation

    iget-wide v0, p0, LIc/m;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    iget v0, p0, LIc/m;->hash:I

    return v0
.end method

.method public internalHashCode()I
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    iget v0, p0, LIc/m;->hash:I

    return v0
.end method
