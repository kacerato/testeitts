.class public final LJg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJg/b$a;
    }
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:LTg/f;

.field public static final n:LTg/f;

.field public static final o:J = 0x20L


# instance fields
.field public a:Ljava/io/RandomAccessFile;

.field public b:Ljava/lang/Thread;

.field public c:LTg/y;

.field public final d:LTg/c;

.field public e:J

.field public f:Z

.field public final g:LTg/f;

.field public final h:LTg/c;

.field public final i:J

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    sput-object v0, LJg/b;->m:LTg/f;

    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    sput-object v0, LJg/b;->n:LTg/f;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;LTg/y;JLTg/f;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    iput-object v0, p0, LJg/b;->d:LTg/c;

    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    iput-object v0, p0, LJg/b;->h:LTg/c;

    iput-object p1, p0, LJg/b;->a:Ljava/io/RandomAccessFile;

    iput-object p2, p0, LJg/b;->c:LTg/y;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LJg/b;->f:Z

    iput-wide p3, p0, LJg/b;->e:J

    iput-object p5, p0, LJg/b;->g:LTg/f;

    iput-wide p6, p0, LJg/b;->i:J

    return-void
.end method

.method public static b(Ljava/io/File;LTg/y;LTg/f;J)LJg/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v8, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, LJg/b;

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, LJg/b;-><init>(Ljava/io/RandomAccessFile;LTg/y;JLTg/f;J)V

    const-wide/16 p1, 0x0

    invoke-virtual {v8, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    sget-object v2, LJg/b;->n:LTg/f;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LJg/b;->g(LTg/f;JJ)V

    return-object p0
.end method

.method public static f(Ljava/io/File;)LJg/b;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, LJg/a;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, LJg/a;-><init>(Ljava/nio/channels/FileChannel;)V

    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x20

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, LJg/a;->a(JLTg/c;J)V

    sget-object v2, LJg/b;->m:LTg/f;

    invoke-virtual {v2}, LTg/f;->S()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, LTg/c;->x1(J)LTg/f;

    move-result-object v3

    invoke-virtual {v3, v2}, LTg/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, LTg/c;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, LTg/c;->readLong()J

    move-result-wide v6

    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    const-wide/16 v2, 0x20

    add-long v3, v8, v2

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, LJg/a;->a(JLTg/c;J)V

    invoke-virtual {v0}, LTg/c;->C1()LTg/f;

    move-result-object v5

    new-instance p0, LJg/b;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, LJg/b;-><init>(Ljava/io/RandomAccessFile;LTg/y;JLTg/f;J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LJg/b;->h(J)V

    iget-object v0, p0, LJg/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    sget-object v3, LJg/b;->m:LTg/f;

    iget-object v0, p0, LJg/b;->g:LTg/f;

    invoke-virtual {v0}, LTg/f;->S()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, LJg/b;->g(LTg/f;JJ)V

    iget-object p1, p0, LJg/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, LJg/b;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LJg/b;->c:LTg/y;

    invoke-static {p1}, LGg/c;->g(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    iput-object p1, p0, LJg/b;->c:LTg/y;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LJg/b;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()LTg/f;
    .locals 1

    iget-object v0, p0, LJg/b;->g:LTg/f;

    return-object v0
.end method

.method public e()LTg/y;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LJg/b;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget v0, p0, LJg/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LJg/b;->j:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LJg/b$a;

    invoke-direct {v0, p0}, LJg/b$a;-><init>(LJg/b;)V

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g(LTg/f;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, LTg/c;

    invoke-direct {v3}, LTg/c;-><init>()V

    invoke-virtual {v3, p1}, LTg/c;->Y(LTg/f;)LTg/c;

    invoke-virtual {v3, p2, p3}, LTg/c;->j0(J)LTg/c;

    invoke-virtual {v3, p4, p5}, LTg/c;->j0(J)LTg/c;

    invoke-virtual {v3}, LTg/c;->Q()J

    move-result-wide p1

    const-wide/16 p3, 0x20

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    new-instance v0, LJg/a;

    iget-object p1, p0, LJg/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, LJg/a;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual/range {v0 .. v5}, LJg/a;->b(JLTg/c;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final h(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, LTg/c;

    invoke-direct {v3}, LTg/c;-><init>()V

    iget-object v0, p0, LJg/b;->g:LTg/f;

    invoke-virtual {v3, v0}, LTg/c;->Y(LTg/f;)LTg/c;

    new-instance v0, LJg/a;

    iget-object v1, p0, LJg/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, LJg/a;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    iget-object p1, p0, LJg/b;->g:LTg/f;

    invoke-virtual {p1}, LTg/f;->S()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, LJg/a;->b(JLTg/c;J)V

    return-void
.end method
