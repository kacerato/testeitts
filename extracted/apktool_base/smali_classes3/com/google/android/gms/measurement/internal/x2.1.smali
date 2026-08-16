.class public final Lcom/google/android/gms/measurement/internal/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lcom/google/android/gms/measurement/internal/x2;


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/p3;

.field public final b:LG0/J;

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/x2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, LG0/K;->a()LG0/K$a;

    move-result-object v0

    const-string v1, "measurement:api"

    invoke-virtual {v0, v1}, LG0/K$a;->b(Ljava/lang/String;)LG0/K$a;

    move-result-object v0

    invoke-virtual {v0}, LG0/K$a;->a()LG0/K;

    move-result-object v0

    invoke-static {p1, v0}, LG0/I;->b(Landroid/content/Context;LG0/K;)LG0/J;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x2;->b:LG0/J;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x2;->a:Lcom/google/android/gms/measurement/internal/p3;

    return-void
.end method

.method public static a(Lcom/google/android/gms/measurement/internal/p3;)Lcom/google/android/gms/measurement/internal/x2;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/x2;->d:Lcom/google/android/gms/measurement/internal/x2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/x2;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/x2;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/p3;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/x2;->d:Lcom/google/android/gms/measurement/internal/x2;

    :cond_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/x2;->d:Lcom/google/android/gms/measurement/internal/x2;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b(IIJJI)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/x2;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->c()J

    move-result-wide v2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/x2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/x2;->b:LG0/J;

    new-instance v4, LG0/H;

    new-instance v17, LG0/x;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v6, 0x8dcd

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, v17

    move/from16 v7, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move/from16 v16, p7

    invoke-direct/range {v5 .. v16}, LG0/x;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    filled-new-array/range {v17 .. v17}, [LG0/x;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, LG0/H;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v4}, LG0/J;->t(LG0/H;)Lv1/k;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/measurement/internal/w2;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/w2;-><init>(Lcom/google/android/gms/measurement/internal/x2;J)V

    invoke-virtual {v0, v4}, Lv1/k;->i(Lv1/f;)Lv1/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final synthetic c(JLjava/lang/Exception;)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/x2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
