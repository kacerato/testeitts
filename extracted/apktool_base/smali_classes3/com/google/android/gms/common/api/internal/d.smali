.class public Lcom/google/android/gms/common/api/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LG0/F;
.end annotation


# static fields
.field public static final r:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final s:Lcom/google/android/gms/common/api/Status;

.field public static final t:Ljava/lang/Object;

.field public static u:Lcom/google/android/gms/common/api/internal/d;
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public c:J

.field public d:Z

.field public e:LG0/H;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:LG0/J;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Landroid/content/Context;

.field public final h:LB0/h;

.field public final i:LG0/c0;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/util/Map;

.field public m:LD0/x;
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final n:Ljava/util/Set;
    .annotation build LJ2/a;
        value = "lock"
    .end annotation
.end field

.field public final o:Ljava/util/Set;

.field public final p:Landroid/os/Handler;
    .annotation runtime Lsm/c;
    .end annotation
.end field

.field public volatile q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/d;->r:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/d;->s:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/d;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LB0/h;)V
    .locals 5
    .annotation build LC0/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/d;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d;->d:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->m:LD0/x;

    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->n:Ljava/util/Set;

    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->o:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/d;->q:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->g:Landroid/content/Context;

    new-instance v1, Lg1/u;

    invoke-direct {v1, p2, p0}, Lg1/u;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/d;->h:LB0/h;

    new-instance p2, LG0/c0;

    invoke-direct {p2, p3}, LG0/c0;-><init>(LB0/i;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->i:LG0/c0;

    invoke-static {p1}, LT0/l;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d;->q:Z

    :cond_0
    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static bridge synthetic B()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic C(Lcom/google/android/gms/common/api/internal/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/google/android/gms/common/api/internal/d;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->n:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/google/android/gms/common/api/internal/d;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/d;->d:Z

    return-void
.end method

.method public static a()V
    .locals 3
    .annotation build LC0/a;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/d;->u:Lcom/google/android/gms/common/api/internal/d;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/common/api/internal/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/d;->q:Z

    return p0
.end method

.method public static g(LD0/c;LB0/c;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, LD0/c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(LB0/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic m(Lcom/google/android/gms/common/api/internal/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/d;->c:J

    return-wide v0
.end method

.method public static bridge synthetic n(Lcom/google/android/gms/common/api/internal/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/google/android/gms/common/api/internal/d;)LB0/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->h:LB0/h;

    return-object p0
.end method

.method public static bridge synthetic q()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->s:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public static bridge synthetic r(LD0/c;LB0/c;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/d;->g(LD0/c;LB0/c;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/google/android/gms/common/api/internal/d;)LD0/x;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->m:LD0/x;

    return-object p0
.end method

.method public static u()Lcom/google/android/gms/common/api/internal/d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/d;->u:Lcom/google/android/gms/common/api/internal/d;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v1, v2}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/api/internal/d;->u:Lcom/google/android/gms/common/api/internal/d;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static v(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/d;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/d;->u:Lcom/google/android/gms/common/api/internal/d;

    if-nez v1, :cond_0

    invoke-static {}, LG0/o;->f()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, LB0/h;->x()LB0/h;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/d;-><init>(Landroid/content/Context;Landroid/os/Looper;LB0/h;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/d;->u:Lcom/google/android/gms/common/api/internal/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/common/api/internal/d;->u:Lcom/google/android/gms/common/api/internal/d;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic w(Lcom/google/android/gms/common/api/internal/d;)LG0/c0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d;->i:LG0/c0;

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/internal/f$a;I)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv1/l;

    invoke-direct {v0}, Lv1/l;-><init>()V

    invoke-virtual {p0, v0, p3, p1}, Lcom/google/android/gms/common/api/internal/d;->k(Lv1/l;ILcom/google/android/gms/common/api/k;)V

    new-instance p3, Lcom/google/android/gms/common/api/internal/C;

    invoke-direct {p3, p2, v0}, Lcom/google/android/gms/common/api/internal/C;-><init>(Lcom/google/android/gms/common/api/internal/f$a;Lv1/l;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, LD0/r0;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {v1, p3, p2, p1}, LD0/r0;-><init>(LD0/N0;ILcom/google/android/gms/common/api/k;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lv1/l;->a()Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lcom/google/android/gms/common/api/k;ILcom/google/android/gms/common/api/internal/b$a;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/api/internal/A;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/common/api/internal/A;-><init>(ILcom/google/android/gms/common/api/internal/b$a;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, LD0/r0;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v0, p2, p1}, LD0/r0;-><init>(LD0/N0;ILcom/google/android/gms/common/api/k;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final G(Lcom/google/android/gms/common/api/k;ILD0/r;Lv1/l;LD0/p;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LD0/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv1/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LD0/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, LD0/r;->d()I

    move-result v0

    invoke-virtual {p0, p4, v0, p1}, Lcom/google/android/gms/common/api/internal/d;->k(Lv1/l;ILcom/google/android/gms/common/api/k;)V

    new-instance v0, LD0/M0;

    invoke-direct {v0, p2, p3, p4, p5}, LD0/M0;-><init>(ILD0/r;Lv1/l;LD0/p;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, LD0/r0;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v0, p2, p1}, LD0/r0;-><init>(LD0/N0;ILcom/google/android/gms/common/api/k;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final H(LG0/x;IJI)V
    .locals 7

    new-instance v6, LD0/o0;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, LD0/o0;-><init>(LG0/x;IJI)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final I(LB0/c;I)V
    .locals 3
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/d;->f(LB0/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final K(Lcom/google/android/gms/common/api/k;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(LD0/x;)V
    .locals 2
    .param p1    # LD0/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->m:LD0/x;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->m:LD0/x;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->n:Ljava/util/Set;

    invoke-virtual {p1}, LD0/x;->u()Landroidx/collection/ArraySet;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(LD0/x;)V
    .locals 2
    .param p1    # LD0/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->m:LD0/x;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->m:LD0/x;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->n:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()Z
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, LG0/C;->b()LG0/C;

    move-result-object v0

    invoke-virtual {v0}, LG0/C;->a()LG0/D;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LG0/D;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->i:LG0/c0;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d;->g:Landroid/content/Context;

    const v3, 0xc1fa340

    invoke-virtual {v0, v2, v3}, LG0/c0;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final f(LB0/c;I)Z
    .locals 2
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->h:LB0/h;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, LB0/h;->M(Landroid/content/Context;LB0/c;I)Z

    move-result p1

    return p1
.end method

.method public final h(Lcom/google/android/gms/common/api/k;)Lcom/google/android/gms/common/api/internal/u;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/k;->G()LD0/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/k;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->o:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->F()V

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const-wide/32 v2, 0x493e0

    const-string v4, "GoogleApiManager"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x11

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :pswitch_0
    iput-boolean v8, p0, Lcom/google/android/gms/common/api/internal/d;->d:Z

    goto/16 :goto_7

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LD0/o0;

    iget-wide v0, p1, LD0/o0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, LG0/H;

    iget v1, p1, LD0/o0;->b:I

    iget-object p1, p1, LD0/o0;->a:LG0/x;

    filled-new-array {p1}, [LG0/x;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, LG0/H;-><init>(ILjava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d;->i()LG0/J;

    move-result-object p1

    invoke-interface {p1, v0}, LG0/J;->t(LG0/H;)Lv1/k;

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->e:LG0/H;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LG0/H;->n()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, LG0/H;->c()I

    move-result v0

    iget v2, p1, LD0/o0;->b:I

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, LD0/o0;->d:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->e:LG0/H;

    iget-object v1, p1, LD0/o0;->a:LG0/x;

    invoke-virtual {v0, v1}, LG0/H;->p(LG0/x;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d;->j()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->e:LG0/H;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, LD0/o0;->a:LG0/x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LG0/H;

    iget v2, p1, LD0/o0;->b:I

    invoke-direct {v1, v2, v0}, LG0/H;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->e:LG0/H;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p1, LD0/o0;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d;->j()V

    goto/16 :goto_7

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LD0/e0;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-static {p1}, LD0/e0;->b(LD0/e0;)LD0/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-static {p1}, LD0/e0;->b(LD0/e0;)LD0/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/u;->D(Lcom/google/android/gms/common/api/internal/u;LD0/e0;)V

    goto/16 :goto_7

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LD0/e0;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-static {p1}, LD0/e0;->b(LD0/e0;)LD0/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-static {p1}, LD0/e0;->b(LD0/e0;)LD0/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/u;->C(Lcom/google/android/gms/common/api/internal/u;LD0/e0;)V

    goto/16 :goto_7

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LD0/y;

    invoke-virtual {p1}, LD0/y;->a()LD0/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, LD0/y;->b()Lv1/l;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lv1/l;->c(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    invoke-static {v0, v8}, Lcom/google/android/gms/common/api/internal/u;->P(Lcom/google/android/gms/common/api/internal/u;Z)Z

    move-result v0

    invoke-virtual {p1}, LD0/y;->b()Lv1/l;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lv1/l;->c(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->b()Z

    goto/16 :goto_7

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->N()V

    goto/16 :goto_7

    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->o:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->M()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->o:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_7

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->L()V

    goto/16 :goto_7

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/k;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d;->h(Lcom/google/android/gms/common/api/k;)Lcom/google/android/gms/common/api/internal/u;

    goto/16 :goto_7

    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->c(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->b()Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/t;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/t;-><init>(Lcom/google/android/gms/common/api/internal/d;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/a;->a(Lcom/google/android/gms/common/api/internal/a$a;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->b()Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/google/android/gms/common/api/internal/a;->e(Z)Z

    move-result p1

    if-nez p1, :cond_11

    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/d;->c:J

    goto/16 :goto_7

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LB0/c;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/u;->r()I

    move-result v8

    if-ne v8, v0, :cond_7

    move-object v5, v3

    :cond_8
    if-eqz v5, :cond_a

    invoke-virtual {p1}, LB0/c;->n()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->h:LB0/h;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, LB0/c;->n()I

    move-result v2

    invoke-virtual {v0, v2}, LB0/h;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LB0/c;->t()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v7, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v5, v1}, Lcom/google/android/gms/common/api/internal/u;->z(Lcom/google/android/gms/common/api/internal/u;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_7

    :cond_9
    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/u;->x(Lcom/google/android/gms/common/api/internal/u;)LD0/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/d;->g(LD0/c;LB0/c;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/google/android/gms/common/api/internal/u;->z(Lcom/google/android/gms/common/api/internal/u;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_7

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find API instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LD0/r0;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    iget-object v1, p1, LD0/r0;->c:Lcom/google/android/gms/common/api/k;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/k;->G()LD0/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    if-nez v0, :cond_b

    iget-object v0, p1, LD0/r0;->c:Lcom/google/android/gms/common/api/k;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/d;->h(Lcom/google/android/gms/common/api/k;)Lcom/google/android/gms/common/api/internal/u;

    move-result-object v0

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, LD0/r0;->b:I

    if-eq v1, v2, :cond_c

    iget-object p1, p1, LD0/r0;->a:LD0/N0;

    sget-object v1, Lcom/google/android/gms/common/api/internal/d;->r:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, LD0/N0;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->M()V

    goto/16 :goto_7

    :cond_c
    iget-object p1, p1, LD0/r0;->a:LD0/N0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/u;->G(LD0/N0;)V

    goto/16 :goto_7

    :pswitch_e
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->E()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/u;->F()V

    goto :goto_3

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LD0/Q0;

    invoke-virtual {p1}, LD0/Q0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LD0/c;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/u;

    if-nez v3, :cond_d

    new-instance v0, LB0/c;

    invoke-direct {v0, v1}, LB0/c;-><init>(I)V

    invoke-virtual {p1, v2, v0, v5}, LD0/Q0;->c(LD0/c;LB0/c;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/u;->Q()Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, LB0/c;->E:LB0/c;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/u;->w()Lcom/google/android/gms/common/api/a$f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v4, v3}, LD0/Q0;->c(LD0/c;LB0/c;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/u;->u()LB0/c;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p1, v2, v4, v5}, LD0/Q0;->c(LD0/c;LB0/c;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v3, p1}, Lcom/google/android/gms/common/api/internal/u;->K(LD0/Q0;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/u;->F()V

    goto :goto_4

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v6, p1, :cond_10

    goto :goto_5

    :cond_10
    const-wide/16 v2, 0x2710

    :goto_5
    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/d;->c:J

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD0/c;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/gms/common/api/internal/d;->c:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :cond_11
    :goto_7
    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()LG0/J;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->f:LG0/J;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->g:Landroid/content/Context;

    invoke-static {v0}, LG0/I;->a(Landroid/content/Context;)LG0/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->f:LG0/J;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->f:LG0/J;

    return-object v0
.end method

.method public final j()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->e:LG0/H;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LG0/H;->c()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d;->i()LG0/J;

    move-result-object v1

    invoke-interface {v1, v0}, LG0/J;->t(LG0/H;)Lv1/k;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->e:LG0/H;

    :cond_2
    return-void
.end method

.method public final k(Lv1/l;ILcom/google/android/gms/common/api/k;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/k;->G()LD0/c;

    move-result-object p3

    invoke-static {p0, p2, p3}, LD0/n0;->b(Lcom/google/android/gms/common/api/internal/d;ILD0/c;)LD0/n0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lv1/l;->a()Lv1/k;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LD0/Y;

    invoke-direct {v0, p3}, LD0/Y;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0, p2}, Lv1/k;->e(Ljava/util/concurrent/Executor;Lv1/e;)Lv1/k;

    :cond_0
    return-void
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final t(LD0/c;)Lcom/google/android/gms/common/api/internal/u;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/u;

    return-object p1
.end method

.method public final x(Ljava/lang/Iterable;)Lv1/k;
    .locals 2
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LD0/Q0;

    invoke-direct {v0, p1}, LD0/Q0;-><init>(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, LD0/Q0;->a()Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lcom/google/android/gms/common/api/k;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    new-instance v0, LD0/y;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/k;->G()LD0/c;

    move-result-object p1

    invoke-direct {v0, p1}, LD0/y;-><init>(LD0/c;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, LD0/y;->b()Lv1/l;

    move-result-object p1

    invoke-virtual {p1}, Lv1/l;->a()Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/k;Ljava/lang/Runnable;)Lv1/k;
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/internal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv1/l;

    invoke-direct {v0}, Lv1/l;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/h;->e()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/common/api/internal/d;->k(Lv1/l;ILcom/google/android/gms/common/api/k;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/B;

    new-instance v2, LD0/s0;

    invoke-direct {v2, p2, p3, p4}, LD0/s0;-><init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/k;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/internal/B;-><init>(LD0/s0;Lv1/l;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, LD0/r0;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v1, p2, p1}, LD0/r0;-><init>(LD0/N0;ILcom/google/android/gms/common/api/k;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d;->p:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lv1/l;->a()Lv1/k;

    move-result-object p1

    return-object p1
.end method
