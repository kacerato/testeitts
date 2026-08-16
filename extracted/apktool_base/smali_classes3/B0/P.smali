.class public final LB0/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LB0/N;

.field public static final b:LB0/N;

.field public static final c:LB0/N;

.field public static final d:LB0/N;

.field public static volatile e:LG0/y0;

.field public static final f:Ljava/lang/Object;

.field public static g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/H;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    invoke-static {v1}, LB0/L;->t(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LB0/H;-><init>([B)V

    sput-object v0, LB0/P;->a:LB0/N;

    new-instance v0, LB0/I;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    invoke-static {v1}, LB0/L;->t(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LB0/I;-><init>([B)V

    sput-object v0, LB0/P;->b:LB0/N;

    new-instance v0, LB0/J;

    const-string v1, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-static {v1}, LB0/L;->t(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LB0/J;-><init>([B)V

    sput-object v0, LB0/P;->c:LB0/N;

    new-instance v0, LB0/K;

    const-string v1, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-static {v1}, LB0/L;->t(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LB0/K;-><init>([B)V

    sput-object v0, LB0/P;->d:LB0/N;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LB0/P;->f:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;LB0/L;ZZ)LB0/Z;
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, LB0/P;->h(Ljava/lang/String;LB0/L;ZZ)LB0/Z;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;ZZZ)LB0/Z;
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p2, p3}, LB0/P;->i(Ljava/lang/String;ZZZZ)LB0/Z;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;ZZZ)LB0/Z;
    .locals 0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2, p2}, LB0/P;->i(Ljava/lang/String;ZZZZ)LB0/Z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ZLjava/lang/String;LB0/L;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, LB0/P;->h(Ljava/lang/String;LB0/L;ZZ)LB0/Z;

    move-result-object v0

    iget-boolean v0, v0, LB0/Z;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "debug cert rejected"

    goto :goto_0

    :cond_0
    const-string v0, "not allowed"

    :goto_0
    const-string v1, "SHA-256"

    invoke-static {v1}, LT0/a;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, LB0/L;->l0()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    invoke-static {p2}, LT0/n;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "12451000.false"

    filled-new-array {v0, p1, p2, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: pkg=%s, sha256=%s, atk=%s, ver=%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)V
    .locals 2

    const-class v0, LB0/P;

    monitor-enter v0

    :try_start_0
    sget-object v1, LB0/P;->g:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, LB0/P;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static f()Z
    .locals 4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-static {}, LB0/P;->j()V

    sget-object v1, LB0/P;->e:LG0/y0;

    invoke-interface {v1}, LG0/y0;->T1()Z

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_1
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static g()Z
    .locals 4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-static {}, LB0/P;->j()V

    sget-object v1, LB0/P;->e:LG0/y0;

    invoke-interface {v1}, LG0/y0;->b()Z

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_1
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static h(Ljava/lang/String;LB0/L;ZZ)LB0/Z;
    .locals 4

    const-string v0, "Failed to get Google certificates from remote"

    const-string v1, "GoogleCertificates"

    :try_start_0
    invoke-static {}, LB0/P;->j()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v2, LB0/P;->g:Landroid/content/Context;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LB0/V;

    invoke-direct {v2, p0, p1, p2, p3}, LB0/V;-><init>(Ljava/lang/String;LB0/L;ZZ)V

    :try_start_1
    sget-object p3, LB0/P;->e:LG0/y0;

    sget-object v3, LB0/P;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, LW0/f;->l0(Ljava/lang/Object;)LW0/d;

    move-result-object v3

    invoke-interface {p3, v2, v3}, LG0/y0;->W1(LB0/V;LW0/d;)Z

    move-result p3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_0

    invoke-static {}, LB0/Z;->b()LB0/Z;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p3, LB0/G;

    invoke-direct {p3, p2, p0, p1}, LB0/G;-><init>(ZLjava/lang/String;LB0/L;)V

    new-instance p0, LB0/X;

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, LB0/X;-><init>(Ljava/util/concurrent/Callable;LB0/Y;)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    invoke-static {p1, p0}, LB0/Z;->d(Ljava/lang/String;Ljava/lang/Throwable;)LB0/Z;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "module init: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, LB0/Z;->d(Ljava/lang/String;Ljava/lang/Throwable;)LB0/Z;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;ZZZZ)LB0/Z;
    .locals 9

    const-string p2, "Failed to get Google certificates from remote"

    const-string p3, "GoogleCertificates"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    sget-object v1, LB0/P;->g:Landroid/content/Context;

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, LB0/P;->j()V
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, LB0/Q;

    sget-object v2, LB0/P;->g:Landroid/content/Context;

    invoke-static {v2}, LW0/f;->l0(Ljava/lang/Object;)LW0/d;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, LB0/Q;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_0

    :try_start_3
    sget-object p0, LB0/P;->e:LG0/y0;

    invoke-interface {p0, v1}, LG0/y0;->U1(LB0/Q;)LB0/T;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget-object p0, LB0/P;->e:LG0/y0;

    invoke-interface {p0, v1}, LG0/y0;->V1(LB0/Q;)LB0/T;

    move-result-object p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {p0}, LB0/T;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LB0/T;->b0()I

    move-result p0

    invoke-static {p0}, LB0/Z;->f(I)LB0/Z;

    move-result-object p0

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, LB0/T;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, LB0/T;->n0()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const-string p3, "error checking package certificate"

    if-nez p1, :cond_3

    move-object p1, p3

    :cond_3
    invoke-virtual {p0}, LB0/T;->b0()I

    move-result p3

    invoke-virtual {p0}, LB0/T;->n0()I

    move-result p0

    invoke-static {p3, p0, p1, p2}, LB0/Z;->g(IILjava/lang/String;Ljava/lang/Throwable;)LB0/Z;

    move-result-object p0

    goto :goto_3

    :goto_2
    invoke-static {p3, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    invoke-static {p1, p0}, LB0/Z;->d(Ljava/lang/String;Ljava/lang/Throwable;)LB0/Z;

    move-result-object p0

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-static {p3, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "module init: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, LB0/Z;->d(Ljava/lang/String;Ljava/lang/Throwable;)LB0/Z;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :goto_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    sget-object v0, LB0/P;->e:LG0/y0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, LB0/P;->g:Landroid/content/Context;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LB0/P;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LB0/P;->e:LG0/y0;

    if-nez v1, :cond_1

    sget-object v1, LB0/P;->g:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->j:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->e(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$a;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, LG0/x0;->k(Landroid/os/IBinder;)LG0/y0;

    move-result-object v1

    sput-object v1, LB0/P;->e:LG0/y0;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
