.class public LZi/j;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# instance fields
.field public final b:LZi/b;

.field public final c:Z

.field public final d:Ljava/security/SecureRandom;

.field public final e:LZi/d;

.field public f:Laj/f;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LZi/d;LZi/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, LZi/j;->d:Ljava/security/SecureRandom;

    iput-object p2, p0, LZi/j;->e:LZi/d;

    iput-object p3, p0, LZi/j;->b:LZi/b;

    iput-boolean p4, p0, LZi/j;->c:Z

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZi/j;->f:Laj/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LZi/j;->b:LZi/b;

    iget-object v1, p0, LZi/j;->e:LZi/d;

    invoke-interface {v0, v1}, LZi/b;->a(LZi/d;)Laj/f;

    move-result-object v0

    iput-object v0, p0, LZi/j;->f:Laj/f;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LZi/j;->f:Laj/f;

    invoke-interface {v0, p1}, Laj/f;->b([B)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public generateSeed(I)[B
    .locals 1

    iget-object v0, p0, LZi/j;->e:LZi/d;

    invoke-static {v0, p1}, LZi/f;->a(LZi/d;I)[B

    move-result-object p1

    return-object p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LZi/j;->b:LZi/b;

    invoke-interface {v0}, LZi/b;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBytes([B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZi/j;->f:Laj/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LZi/j;->b:LZi/b;

    iget-object v1, p0, LZi/j;->e:LZi/d;

    invoke-interface {v0, v1}, LZi/b;->a(LZi/d;)Laj/f;

    move-result-object v0

    iput-object v0, p0, LZi/j;->f:Laj/f;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LZi/j;->f:Laj/f;

    iget-boolean v1, p0, LZi/j;->c:Z

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Laj/f;->a([B[BZ)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, LZi/j;->f:Laj/f;

    invoke-interface {v0, v2}, Laj/f;->b([B)V

    iget-object v0, p0, LZi/j;->f:Laj/f;

    iget-boolean v1, p0, LZi/j;->c:Z

    invoke-interface {v0, p1, v2, v1}, Laj/f;->a([B[BZ)I

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSeed(J)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZi/j;->d:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSeed([B)V
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZi/j;->d:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
