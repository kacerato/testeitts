.class public LM9/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Llb/e;

.field public static final c:LJAVARuntime/AtomicFloat;

.field public static final d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LM9/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Llb/e;

    invoke-direct {v0}, Llb/e;-><init>()V

    sput-object v0, LM9/i;->b:Llb/e;

    new-instance v0, LJAVARuntime/AtomicFloat;

    invoke-direct {v0}, LJAVARuntime/AtomicFloat;-><init>()V

    sput-object v0, LM9/i;->c:LJAVARuntime/AtomicFloat;

    new-instance v0, LM9/i$a;

    invoke-direct {v0}, LM9/i$a;-><init>()V

    sput-object v0, LM9/i;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Llb/e;
    .locals 1

    sget-object v0, LM9/i;->b:Llb/e;

    return-object v0
.end method

.method public static synthetic b()LJAVARuntime/AtomicFloat;
    .locals 1

    sget-object v0, LM9/i;->c:LJAVARuntime/AtomicFloat;

    return-object v0
.end method

.method public static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, LM9/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static d()F
    .locals 2

    sget-object v0, LM9/i;->c:LJAVARuntime/AtomicFloat;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->floatValue()F

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e()V
    .locals 3

    sget-object v0, LM9/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LM9/i;->d:Ljava/lang/Runnable;

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
