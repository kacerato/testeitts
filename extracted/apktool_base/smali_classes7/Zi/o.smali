.class public LZi/o;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public final c:Ljava/security/SecureRandom;

.field public final d:LZi/n;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;LZi/n;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, LZi/o;->c:Ljava/security/SecureRandom;

    iput-object p2, p0, LZi/o;->d:LZi/n;

    iput-boolean p3, p0, LZi/o;->b:Z

    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1

    iget-object v0, p0, LZi/o;->d:LZi/n;

    invoke-virtual {v0}, LZi/n;->b()LZi/d;

    move-result-object v0

    invoke-static {v0, p1}, LZi/f;->a(LZi/d;I)[B

    move-result-object p1

    return-object p1
.end method

.method public nextBytes([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZi/o;->d:LZi/n;

    iget-boolean v1, p0, LZi/o;->b:Z

    invoke-virtual {v0, p1, v1}, LZi/n;->a([BZ)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, LZi/o;->d:LZi/n;

    invoke-virtual {v0}, LZi/n;->f()V

    iget-object v0, p0, LZi/o;->d:LZi/n;

    iget-boolean v1, p0, LZi/o;->b:Z

    invoke-virtual {v0, p1, v1}, LZi/n;->a([BZ)I

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

.method public setSeed(J)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZi/o;->c:Ljava/security/SecureRandom;

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
    iget-object v0, p0, LZi/o;->c:Ljava/security/SecureRandom;

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
