.class public LVj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVj/a$g;,
        LVj/a$h;,
        LVj/a$i;,
        LVj/a$j;,
        LVj/a$k;,
        LVj/a$l;,
        LVj/a$m;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "Vj.a"

.field public static final b:[[Ljava/lang/String;

.field public static c:LVj/b;

.field public static d:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "sun.security.provider.Sun"

    const-string v1, "sun.security.provider.SecureRandom"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    const-string v2, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    const-string v3, "com.android.org.conscrypt.OpenSSLRandom"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.conscrypt.OpenSSLProvider"

    const-string v4, "org.conscrypt.OpenSSLRandom"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, LVj/a;->b:[[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, LVj/a;->c:LVj/b;

    sput-object v0, LVj/a;->d:Ljava/lang/Thread;

    new-instance v0, LVj/b;

    invoke-direct {v0}, LVj/b;-><init>()V

    sput-object v0, LVj/a;->c:LVj/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, LVj/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Z)Ljava/security/SecureRandom;
    .locals 0

    invoke-static {p0}, LVj/a;->g(Z)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()LVj/b;
    .locals 1

    sget-object v0, LVj/a;->c:LVj/b;

    return-object v0
.end method

.method public static synthetic d()[Ljava/lang/Object;
    .locals 1

    invoke-static {}, LVj/a;->k()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0, p1}, LVj/a;->n(J)V

    return-void
.end method

.method public static synthetic f()LZi/e;
    .locals 1

    invoke-static {}, LVj/a;->h()LZi/e;

    move-result-object v0

    return-object v0
.end method

.method public static g(Z)Ljava/security/SecureRandom;
    .locals 5

    const-string v0, "org.bouncycastle.drbg.entropysource"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, LVj/a;->i()LZi/e;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, LZi/e;->get(I)LZi/d;

    move-result-object v1

    invoke-interface {v1}, LZi/d;->b()[B

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-static {v2}, LVj/a;->l([B)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, LVj/a;->m([B)[B

    move-result-object v2

    :goto_0
    new-instance v3, LZi/k;

    invoke-direct {v3, v0}, LZi/k;-><init>(LZi/e;)V

    invoke-virtual {v3, v2}, LZi/k;->g([B)LZi/k;

    move-result-object v0

    new-instance v2, LIi/O;

    invoke-direct {v2}, LIi/O;-><init>()V

    invoke-interface {v1}, LZi/d;->b()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1, p0}, LZi/k;->d(LBi/y;[BZ)LZi/j;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "org.bouncycastle.drbg.entropy_thread"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x100

    if-eqz v0, :cond_4

    sget-object v0, LVj/a;->c:LVj/b;

    monitor-enter v0

    :try_start_0
    sget-object v2, LVj/a;->d:Ljava/lang/Thread;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/Thread;

    sget-object v3, LVj/a;->c:LVj/b;

    const-string v4, "BC Entropy Daemon"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v2, LVj/a;->d:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v2, LVj/a;->d:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LVj/a$i;

    sget-object v2, LVj/a;->c:LVj/b;

    invoke-direct {v0, v2, v1}, LVj/a$i;-><init>(LVj/b;I)V

    invoke-interface {v0}, LZi/d;->b()[B

    move-result-object v1

    if-eqz p0, :cond_3

    invoke-static {v1}, LVj/a;->l([B)[B

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v1}, LVj/a;->m([B)[B

    move-result-object v1

    :goto_2
    new-instance v2, LZi/k;

    new-instance v3, LVj/a$a;

    invoke-direct {v3}, LVj/a$a;-><init>()V

    invoke-direct {v2, v3}, LZi/k;-><init>(LZi/e;)V

    invoke-virtual {v2, v1}, LZi/k;->g([B)LZi/k;

    move-result-object v1

    new-instance v2, LIi/O;

    invoke-direct {v2}, LIi/O;-><init>()V

    invoke-interface {v0}, LZi/d;->b()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, LZi/k;->d(LBi/y;[BZ)LZi/j;

    move-result-object p0

    return-object p0

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    new-instance v0, LVj/a$l;

    invoke-direct {v0, v1}, LVj/a$l;-><init>(I)V

    invoke-interface {v0}, LZi/d;->b()[B

    move-result-object v1

    if-eqz p0, :cond_5

    invoke-static {v1}, LVj/a;->l([B)[B

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-static {v1}, LVj/a;->m([B)[B

    move-result-object v1

    :goto_4
    new-instance v2, LZi/k;

    new-instance v3, LVj/a$b;

    invoke-direct {v3}, LVj/a$b;-><init>()V

    invoke-direct {v2, v3}, LZi/k;-><init>(LZi/e;)V

    invoke-virtual {v2, v1}, LZi/k;->g([B)LZi/k;

    move-result-object v1

    new-instance v2, LIi/O;

    invoke-direct {v2}, LIi/O;-><init>()V

    invoke-interface {v0}, LZi/d;->b()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, LZi/k;->d(LBi/y;[BZ)LZi/j;

    move-result-object p0

    return-object p0
.end method

.method public static h()LZi/e;
    .locals 3

    new-instance v0, LVj/a$e;

    invoke-direct {v0}, LVj/a$e;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, LVj/a;->j()LZi/e;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, LVj/a$m;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, LVj/a$m;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-static {}, LVj/a;->j()LZi/e;

    move-result-object v0

    return-object v0
.end method

.method public static i()LZi/e;
    .locals 2

    const-string v0, "org.bouncycastle.drbg.entropysource"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LVj/a$f;

    invoke-direct {v1, v0}, LVj/a$f;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZi/e;

    return-object v0
.end method

.method public static j()LZi/e;
    .locals 4

    new-instance v0, LVj/a$c;

    invoke-direct {v0}, LVj/a$c;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, LVj/a$d;

    invoke-direct {v0}, LVj/a$d;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    new-instance v2, LVj/e;

    invoke-direct {v2, v0, v1}, LVj/e;-><init>(Ljava/security/SecureRandom;Z)V

    return-object v2

    :cond_0
    new-instance v0, LVj/e;

    new-instance v2, LVj/a$g;

    invoke-static {}, LVj/a;->k()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, LVj/a$g;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v2, v1}, LVj/e;-><init>(Ljava/security/SecureRandom;Z)V

    return-object v0
.end method

.method public static final k()[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, LVj/a;->b:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    :try_start_0
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static l([B)[B
    .locals 4

    const-string v0, "Default"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/p;->H(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->H(J)[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/bouncycastle/util/a;->D([B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static m([B)[B
    .locals 4

    const-string v0, "Nonce"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/p;->M(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->M(J)[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/bouncycastle/util/a;->D([B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static n(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    return-void
.end method
