.class public Lqd/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:J = -0x1L

.field public static final c:Lsun/misc/Unsafe;

.field public static final d:J


# instance fields
.field public final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ltd/d;->f()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lqd/z;->c:Lsun/misc/Unsafe;

    const-class v1, [J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v2, v0

    int-to-long v0, v2

    sput-wide v0, Lqd/z;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lqd/z;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 3
    new-array v2, v0, [J

    iput-object v2, p0, Lqd/z;->a:[J

    .line 4
    sget-object v1, Lqd/z;->c:Lsun/misc/Unsafe;

    sget-wide v3, Lqd/z;->d:J

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lqd/z;->c()J

    move-result-wide v0

    add-long v2, v0, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lqd/z;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public b(JJ)Z
    .locals 8

    sget-object v0, Lqd/z;->c:Lsun/misc/Unsafe;

    iget-object v1, p0, Lqd/z;->a:[J

    sget-wide v2, Lqd/z;->d:J

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method public c()J
    .locals 4

    sget-object v0, Lqd/z;->c:Lsun/misc/Unsafe;

    iget-object v1, p0, Lqd/z;->a:[J

    sget-wide v2, Lqd/z;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lqd/z;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)V
    .locals 6

    sget-object v0, Lqd/z;->c:Lsun/misc/Unsafe;

    iget-object v1, p0, Lqd/z;->a:[J

    sget-wide v2, Lqd/z;->d:J

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public f(J)V
    .locals 6

    sget-object v0, Lqd/z;->c:Lsun/misc/Unsafe;

    iget-object v1, p0, Lqd/z;->a:[J

    sget-wide v2, Lqd/z;->d:J

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lqd/z;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
