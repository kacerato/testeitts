.class public LZi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/h;


# static fields
.field public static f:J = 0xaL


# instance fields
.field public a:J

.field public b:J

.field public c:LBi/y;

.field public d:[B

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LBi/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZi/c;->c:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, LZi/c;->e:[B

    const-wide/16 v0, 0x1

    iput-wide v0, p0, LZi/c;->b:J

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LZi/c;->d:[B

    iput-wide v0, p0, LZi/c;->a:J

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LZi/c;->h()V

    add-int/2addr p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eq p2, p3, :cond_1

    iget-object v2, p0, LZi/c;->d:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, LZi/c;->h()V

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v2, p0, LZi/c;->d:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    move v1, v3

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, LZi/c;->e(J)V

    iget-object p1, p0, LZi/c;->e:[B

    invoke-virtual {p0, p1}, LZi/c;->g([B)V

    iget-object p1, p0, LZi/c;->e:[B

    invoke-virtual {p0, p1}, LZi/c;->f([B)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/util/a;->G0([B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LZi/c;->g([B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, LZi/c;->e:[B

    invoke-virtual {p0, p1}, LZi/c;->g([B)V

    iget-object p1, p0, LZi/c;->e:[B

    invoke-virtual {p0, p1}, LZi/c;->f([B)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, LZi/c;->e:[B

    invoke-virtual {p0, v0}, LZi/c;->g([B)V

    iget-wide v0, p0, LZi/c;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, LZi/c;->b:J

    invoke-virtual {p0, v0, v1}, LZi/c;->e(J)V

    iget-object v0, p0, LZi/c;->e:[B

    invoke-virtual {p0, v0}, LZi/c;->f([B)V

    return-void
.end method

.method public final e(J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v2, p0, LZi/c;->c:LBi/y;

    long-to-int v3, p1

    int-to-byte v3, v3

    invoke-interface {v2, v3}, LBi/y;->update(B)V

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f([B)V
    .locals 2

    iget-object v0, p0, LZi/c;->c:LBi/y;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, LBi/y;->c([BI)I

    return-void
.end method

.method public final g([B)V
    .locals 3

    iget-object v0, p0, LZi/c;->c:LBi/y;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, LBi/y;->update([BII)V

    return-void
.end method

.method public final h()V
    .locals 4

    iget-wide v0, p0, LZi/c;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, LZi/c;->a:J

    invoke-virtual {p0, v0, v1}, LZi/c;->e(J)V

    iget-object v0, p0, LZi/c;->d:[B

    invoke-virtual {p0, v0}, LZi/c;->g([B)V

    iget-object v0, p0, LZi/c;->e:[B

    invoke-virtual {p0, v0}, LZi/c;->g([B)V

    iget-object v0, p0, LZi/c;->d:[B

    invoke-virtual {p0, v0}, LZi/c;->f([B)V

    iget-wide v0, p0, LZi/c;->a:J

    sget-wide v2, LZi/c;->f:J

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, LZi/c;->d()V

    :cond_0
    return-void
.end method

.method public nextBytes([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LZi/c;->a([BII)V

    return-void
.end method
