.class public final Lcom/google/android/gms/measurement/internal/c7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/U3;


# static fields
.field public static volatile K:Lcom/google/android/gms/measurement/internal/c7;


# instance fields
.field public A:J

.field public final B:Ljava/util/Map;

.field public final C:Ljava/util/Map;

.field public final D:Ljava/util/Map;

.field public final E:Ljava/util/Map;

.field public F:Lcom/google/android/gms/measurement/internal/m5;

.field public G:Ljava/lang/String;

.field public H:Lcom/google/android/gms/measurement/internal/z;

.field public I:J

.field public final J:Lcom/google/android/gms/measurement/internal/l7;

.field public final a:Lcom/google/android/gms/measurement/internal/c3;

.field public final b:Lcom/google/android/gms/measurement/internal/G2;

.field public c:Lcom/google/android/gms/measurement/internal/w;

.field public d:Lcom/google/android/gms/measurement/internal/J2;

.field public e:Lcom/google/android/gms/measurement/internal/F6;

.field public f:Lcom/google/android/gms/measurement/internal/e;

.field public final g:Lcom/google/android/gms/measurement/internal/h7;

.field public h:Lcom/google/android/gms/measurement/internal/h5;

.field public i:Lcom/google/android/gms/measurement/internal/h6;

.field public final j:Lcom/google/android/gms/measurement/internal/P6;

.field public k:Lcom/google/android/gms/measurement/internal/S2;

.field public final l:Lcom/google/android/gms/measurement/internal/p3;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Z

.field public o:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public p:Ljava/util/List;

.field public final q:Ljava/util/Deque;

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Ljava/nio/channels/FileLock;

.field public x:Ljava/nio/channels/FileChannel;

.field public y:Ljava/util/List;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/d7;Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->q:Ljava/util/Deque;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->E:Ljava/util/Map;

    new-instance p2, Lcom/google/android/gms/measurement/internal/X6;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/X6;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/d7;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/p3;->O(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/I0;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/p3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/c7;->A:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/P6;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/P6;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->j:Lcom/google/android/gms/measurement/internal/P6;

    new-instance p2, Lcom/google/android/gms/measurement/internal/h7;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/h7;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/N6;->k()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->g:Lcom/google/android/gms/measurement/internal/h7;

    new-instance p2, Lcom/google/android/gms/measurement/internal/G2;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/G2;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/N6;->k()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/G2;

    new-instance p2, Lcom/google/android/gms/measurement/internal/c3;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/c3;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/N6;->k()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/c3;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->B:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->C:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->D:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/Q6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/Q6;-><init>(Lcom/google/android/gms/measurement/internal/c7;Lcom/google/android/gms/measurement/internal/d7;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static F(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/c7;
    .locals 3

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/c7;->K:Lcom/google/android/gms/measurement/internal/c7;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/c7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/c7;->K:Lcom/google/android/gms/measurement/internal/c7;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/d7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/d7;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/d7;

    new-instance v1, Lcom/google/android/gms/measurement/internal/c7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/c7;-><init>(Lcom/google/android/gms/measurement/internal/d7;Lcom/google/android/gms/measurement/internal/p3;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/c7;->K:Lcom/google/android/gms/measurement/internal/c7;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/measurement/internal/c7;->K:Lcom/google/android/gms/measurement/internal/c7;

    return-object p0
.end method

.method public static final G(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a3;->t()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/a3;->C(I)Lcom/google/android/gms/internal/measurement/a3;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static P(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static V(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/l3;->a()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/m3;->a(Landroid/app/BroadcastOptions;Z)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/n3;->a(Landroid/app/BroadcastOptions;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/o3;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final W(Lcom/google/android/gms/measurement/internal/o7;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final X(Lcom/google/android/gms/internal/measurement/m3;)V
    .locals 6

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/m3;->h1(J)Lcom/google/android/gms/internal/measurement/m3;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/m3;->j1(J)Lcom/google/android/gms/internal/measurement/m3;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m3;->O0()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/m3;->P0(I)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m3;->g1()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/m3;->h1(J)Lcom/google/android/gms/internal/measurement/m3;

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m3;->i1()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/m3;->j1(J)Lcom/google/android/gms/internal/measurement/m3;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final Y(Lcom/google/android/gms/measurement/internal/N6;)Lcom/google/android/gms/measurement/internal/N6;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final Z(Lcom/google/android/gms/measurement/internal/o7;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o7;->q:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o7;->D:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/f1;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f1;->a()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static synthetic v0(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/c7;->V(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static final z0(Lcom/google/android/gms/internal/measurement/a3;ILjava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a3;->t()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/f3;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/e3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/measurement/internal/I2;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->r0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0xcc

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/c7;->B(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/c3;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "If-Modified-Since"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c3;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v3, :cond_2

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v3, v1

    :cond_2
    const-string v1, "If-None-Match"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->t:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/b7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/b7;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {v0, p1, v3, v1}, Lcom/google/android/gms/measurement/internal/G2;->o(Lcom/google/android/gms/measurement/internal/I2;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/D2;)V

    return-void
.end method

.method public final A0()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->u()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->e0()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/measurement/internal/e2;->w0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v6

    invoke-interface {v6}, LT0/g;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "trigger_uris"

    const-string v6, "abs(timestamp_millis - ?) > cast(? as integer)"

    invoke-virtual {v5, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Deleted stale trigger uris. rowsDeleted"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/h6;->h:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/h6;->h:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    return-void
.end method

.method public final B(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->t0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v4, 0x130

    if-eq p2, v2, :cond_2

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_2

    if-ne p2, v4, :cond_1

    move p2, v4

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p3, :cond_1

    const/4 v2, 0x1

    :goto_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object p4

    invoke-interface {p4}, LT0/g;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/I2;->k(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p4

    invoke-virtual {p4, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/c3;->A(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/h6;->i:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object p3

    invoke-interface {p3}, LT0/g;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/h6;->g:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object p2

    invoke-interface {p2}, LT0/g;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    goto/16 :goto_7

    :cond_7
    :goto_3
    const-string p3, "Last-Modified"

    invoke-static {p5, p3}, Lcom/google/android/gms/measurement/internal/c7;->P(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "ETag"

    invoke-static {p5, v2}, Lcom/google/android/gms/measurement/internal/c7;->P(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-eq p2, v5, :cond_9

    if-ne p2, v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v2

    invoke-virtual {v2, p1, p4, p3, p5}, Lcom/google/android/gms/measurement/internal/c3;->C(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/c3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t2;

    move-result-object p3

    if-nez p3, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4, p4, p4}, Lcom/google/android/gms/measurement/internal/c3;->C(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object p3

    invoke-interface {p3}, LT0/g;->a()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/I2;->i(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p3

    invoke-virtual {p3, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    if-ne p2, v5, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->r()V

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/w;->p(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c7;->u(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w;->v0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->t:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    return-void

    :goto_8
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_9
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->t:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    throw p1
.end method

.method public final B0()Lcom/google/android/gms/measurement/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    return-object v0
.end method

.method public final C(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->p:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->p:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final C0()Lcom/google/android/gms/measurement/internal/P6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->j:Lcom/google/android/gms/measurement/internal/P6;

    return-object v0
.end method

.method public final D()V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->n:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->n:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->E()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->x:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    const-string v2, "Bad channel to read from"

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->L()Lcom/google/android/gms/measurement/internal/p2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p2;->t()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    if-le v6, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    if-ge v6, v1, :cond_8

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/c7;->x:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :try_start_1
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v7, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final D0()Lcom/google/android/gms/measurement/internal/c3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/c3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c7;->Y(Lcom/google/android/gms/measurement/internal/N6;)Lcom/google/android/gms/measurement/internal/N6;

    return-object v0
.end method

.method public final E()Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->w:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Z;->a()Lcom/google/android/gms/internal/measurement/a0;

    sget v4, Lcom/google/android/gms/internal/measurement/f0;->b:I

    new-instance v4, Ljava/io/File;

    const-string v5, "google_app_measurement.db"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->x:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->w:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method public final E0()Lcom/google/android/gms/measurement/internal/G2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/G2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c7;->Y(Lcom/google/android/gms/measurement/internal/N6;)Lcom/google/android/gms/measurement/internal/N6;

    return-object v0
.end method

.method public final F0()Lcom/google/android/gms/measurement/internal/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/w;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c7;->Y(Lcom/google/android/gms/measurement/internal/N6;)Lcom/google/android/gms/measurement/internal/N6;

    return-object v0
.end method

.method public final G0()Lcom/google/android/gms/measurement/internal/J2;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->d:Lcom/google/android/gms/measurement/internal/J2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o;)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/c3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->R(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n2;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object p1, Lcom/google/android/gms/measurement/internal/Y3;->zzd:Lcom/google/android/gms/measurement/internal/Y3;

    sget-object v0, Lcom/google/android/gms/measurement/internal/n;->zzj:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/f1;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f1;->a()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/W3;->zzb:Lcom/google/android/gms/measurement/internal/W3;

    if-ne v1, v4, :cond_2

    sget-object v1, Lcom/google/android/gms/measurement/internal/Y3;->zzd:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/c3;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Y3;)Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    if-eq v4, v5, :cond_2

    sget-object p1, Lcom/google/android/gms/measurement/internal/n;->zzi:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    sget-object p1, Lcom/google/android/gms/measurement/internal/W3;->zzd:Lcom/google/android/gms/measurement/internal/W3;

    if-ne v4, p1, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    sget-object v1, Lcom/google/android/gms/measurement/internal/Y3;->zzd:Lcom/google/android/gms/measurement/internal/Y3;

    sget-object v4, Lcom/google/android/gms/measurement/internal/n;->zzb:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/c3;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public final H0()Lcom/google/android/gms/measurement/internal/F6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->e:Lcom/google/android/gms/measurement/internal/F6;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c7;->Y(Lcom/google/android/gms/measurement/internal/N6;)Lcom/google/android/gms/measurement/internal/N6;

    return-object v0
.end method

.method public final I(Lcom/google/android/gms/internal/measurement/b3;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    const-string v1, "gad_"

    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/h7;->t(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final I0()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->f:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c7;->Y(Lcom/google/android/gms/measurement/internal/N6;)Lcom/google/android/gms/measurement/internal/N6;

    return-object v0
.end method

.method public final J()Lcom/google/android/gms/measurement/internal/z;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->H:Lcom/google/android/gms/measurement/internal/z;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    new-instance v1, Lcom/google/android/gms/measurement/internal/T6;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/T6;-><init>(Lcom/google/android/gms/measurement/internal/c7;Lcom/google/android/gms/measurement/internal/U3;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->H:Lcom/google/android/gms/measurement/internal/z;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->H:Lcom/google/android/gms/measurement/internal/z;

    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/measurement/internal/h5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->h:Lcom/google/android/gms/measurement/internal/h5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c7;->Y(Lcom/google/android/gms/measurement/internal/N6;)Lcom/google/android/gms/measurement/internal/N6;

    return-object v0
.end method

.method public final K()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->J()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/c7;->I:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->C0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Scheduling notify next app runnable, delay in ms"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->J()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/z;->b(J)V

    :cond_0
    return-void
.end method

.method public final K0()Lcom/google/android/gms/measurement/internal/h7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->g:Lcom/google/android/gms/measurement/internal/h7;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c7;->Y(Lcom/google/android/gms/measurement/internal/N6;)Lcom/google/android/gms/measurement/internal/N6;

    return-object v0
.end method

.method public final L(Ljava/lang/String;J)Z
    .locals 42
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "_ai"

    const-string v3, "purchase"

    const-string v4, "items"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    new-instance v5, Lcom/google/android/gms/measurement/internal/Y6;

    const/4 v13, 0x0

    invoke-direct {v5, v1, v13}, Lcom/google/android/gms/measurement/internal/Y6;-><init>(Lcom/google/android/gms/measurement/internal/c7;[B)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/c7;->A:J

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/w;->r0(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/Y6;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v3, v1

    const/4 v5, 0x0

    goto/16 :goto_3f

    :cond_1
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m3;->U0()Lcom/google/android/gms/internal/measurement/m3;

    move-object v14, v13

    move-object/from16 v16, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v15, -0x1

    :goto_0
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "_et"

    move/from16 p3, v12

    const-string v12, "_fr"

    move/from16 v17, v10

    const-string v10, "_e"

    move-object/from16 v18, v4

    const-string v4, "_c"

    move-object/from16 v19, v14

    move/from16 v20, v15

    if-ge v9, v7, :cond_31

    :try_start_1
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v15

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v14

    move/from16 v24, v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v14, v9}, Lcom/google/android/gms/measurement/internal/c3;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "_err"

    if-eqz v9, :cond_4

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v8, "Dropping blocked raw event. appId"

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v4

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/c3;->H(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v4

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/c3;->I(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v25

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v27

    const-string v29, "_ev"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v28, 0xb

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v31}, Lcom/google/android/gms/measurement/internal/m7;->B(Lcom/google/android/gms/measurement/internal/l7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_1
    move-object v1, v0

    goto/16 :goto_41

    :cond_3
    :goto_2
    move/from16 v12, p3

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v30, v11

    move/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v14, v19

    move/from16 v15, v20

    move/from16 v4, v24

    move-object v11, v6

    goto/16 :goto_1b

    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v25, v8

    const-string v8, "ecommerce_purchase"

    move-object/from16 v26, v6

    const-string v6, "_iap"

    if-nez v15, :cond_5

    :try_start_3
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v9

    const-string v15, "_ct"

    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    if-nez v11, :cond_6

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v3}, Lcom/google/android/gms/measurement/internal/c7;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v1, v11, v6}, Lcom/google/android/gms/measurement/internal/c7;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1, v11, v8}, Lcom/google/android/gms/measurement/internal/c7;->U(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_6

    const-string v6, "new"

    goto :goto_3

    :cond_6
    const-string v6, "returning"

    :goto_3
    :try_start_4
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/measurement/e3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    const/4 v11, 0x1

    :cond_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/a4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/a3;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v8, "Renaming ad_impression to _ai"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->z()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x5

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->u()I

    move-result v8

    if-ge v6, v8, :cond_9

    const-string v8, "ad_platform"

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/f3;->H()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "admob"

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/f3;->H()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    const-string v9, "AdMob ad impression logged from app. Potentially duplicative."

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v6

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/c3;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const v15, 0x17333

    if-eq v9, v15, :cond_a

    goto :goto_5

    :cond_a
    const-string v9, "_ui"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_b
    move-object/from16 v27, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v30, v11

    move-object/from16 v29, v12

    const/4 v6, 0x0

    move/from16 v12, p3

    goto/16 :goto_b

    :goto_6
    :try_start_5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->u()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v28, v3

    const-string v3, "_r"

    if-ge v8, v2, :cond_f

    :try_start_6
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/e3;

    move/from16 v30, v11

    move-object/from16 v29, v12

    const-wide/16 v11, 0x1

    invoke-virtual {v2, v11, v12}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v7, v8, v2}, Lcom/google/android/gms/internal/measurement/a3;->w(ILcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    move/from16 v30, v11

    move-object/from16 v29, v12

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/e3;

    const-wide/16 v11, 0x1

    invoke-virtual {v2, v11, v12}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v7, v8, v2}, Lcom/google/android/gms/internal/measurement/a3;->w(ILcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    const/4 v15, 0x1

    :cond_e
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v28

    move-object/from16 v12, v29

    move/from16 v11, v30

    goto :goto_6

    :cond_f
    move/from16 v30, v11

    move-object/from16 v29, v12

    if-nez v9, :cond_10

    if-eqz v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v8, "Marking event as conversion"

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/a3;->z(Lcom/google/android/gms/internal/measurement/e3;)Lcom/google/android/gms/internal/measurement/a3;

    :cond_10
    if-nez v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v8, "Marking event as real-time"

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/a3;->z(Lcom/google/android/gms/internal/measurement/e3;)Lcom/google/android/gms/internal/measurement/a3;

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->h()J

    move-result-wide v32

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v34

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v31 .. v41}, Lcom/google/android/gms/measurement/internal/w;->N0(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v2

    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/s;->e:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/e2;->p:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v2, v11, v12}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v2

    int-to-long v11, v2

    cmp-long v2, v8, v11

    if-lez v2, :cond_12

    invoke-static {v7, v3}, Lcom/google/android/gms/measurement/internal/c7;->G(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;)V

    move/from16 v12, p3

    goto :goto_8

    :cond_12
    const/4 v12, 0x1

    :goto_8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/m7;->r0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->h()J

    move-result-wide v32

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v34

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-virtual/range {v31 .. v41}, Lcom/google/android/gms/measurement/internal/w;->N0(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/s;->c:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/e2;->o:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v2, v2, v8

    if-lez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->u()I

    move-result v11

    if-ge v2, v11, :cond_15

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/e3;

    move-object v9, v8

    move v8, v2

    goto :goto_a

    :cond_13
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v3, 0x1

    :cond_14
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    if-eqz v3, :cond_17

    if-eqz v9, :cond_16

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/a3;->C(I)Lcom/google/android/gms/internal/measurement/a3;

    goto :goto_b

    :cond_16
    const/4 v9, 0x0

    :cond_17
    if-eqz v9, :cond_18

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->o()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    const-wide/16 v14, 0xa

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v7, v8, v2}, Lcom/google/android/gms/internal/measurement/a3;->w(ILcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    goto :goto_b

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    :goto_b
    if-eqz v6, :cond_1e

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->t()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v11, "currency"

    const-string v14, "value"

    if-ge v3, v9, :cond_1c

    :try_start_7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    move v6, v3

    goto :goto_d

    :cond_1a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move v8, v3

    :cond_1b
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    const/4 v3, -0x1

    if-ne v6, v3, :cond_1d

    goto/16 :goto_10

    :cond_1d
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f3;->I()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f3;->M()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/a3;->C(I)Lcom/google/android/gms/internal/measurement/a3;

    invoke-static {v7, v4}, Lcom/google/android/gms/measurement/internal/c7;->G(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-static {v7, v2, v14}, Lcom/google/android/gms/measurement/internal/c7;->z0(Lcom/google/android/gms/internal/measurement/a3;ILjava/lang/String;)V

    :cond_1e
    const/4 v3, -0x1

    goto :goto_10

    :cond_1f
    const/4 v3, -0x1

    if-ne v8, v3, :cond_20

    goto :goto_f

    :cond_20
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f3;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_21

    const/4 v8, 0x0

    :goto_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_22

    invoke-virtual {v2, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_21

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_e

    :cond_21
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v8, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/a3;->C(I)Lcom/google/android/gms/internal/measurement/a3;

    invoke-static {v7, v4}, Lcom/google/android/gms/measurement/internal/c7;->G(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-static {v7, v2, v11}, Lcom/google/android/gms/measurement/internal/c7;->z0(Lcom/google/android/gms/internal/measurement/a3;ILjava/lang/String;)V

    :cond_22
    :goto_10
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/b3;

    move-object/from16 v6, v29

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v16, :cond_23

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v10

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v14

    sub-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-gtz v2, :cond_23

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/m5;->o()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/c7;->N(Lcom/google/android/gms/internal/measurement/a3;Lcom/google/android/gms/internal/measurement/a3;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v11, v26

    invoke-virtual {v11, v13, v2}, Lcom/google/android/gms/internal/measurement/m3;->R0(ILcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;

    move/from16 v15, v20

    :goto_11
    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_14

    :cond_23
    move-object/from16 v11, v26

    move-object v14, v7

    move/from16 v15, v17

    goto :goto_14

    :cond_24
    move-object/from16 v11, v26

    :cond_25
    move/from16 v8, v20

    goto :goto_13

    :cond_26
    move-object/from16 v11, v26

    const-string v2, "_vs"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/b3;

    move-object/from16 v14, v25

    invoke-static {v2, v14}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v2

    if-nez v2, :cond_25

    if-eqz v19, :cond_27

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v21

    sub-long v14, v14, v21

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    cmp-long v2, v14, v8

    if-gtz v2, :cond_27

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/m5;->o()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/c7;->N(Lcom/google/android/gms/internal/measurement/a3;Lcom/google/android/gms/internal/measurement/a3;)Z

    move-result v4

    if-eqz v4, :cond_27

    move/from16 v8, v20

    invoke-virtual {v11, v8, v2}, Lcom/google/android/gms/internal/measurement/m3;->R0(ILcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;

    move v15, v8

    goto :goto_11

    :cond_27
    move/from16 v8, v20

    move-object/from16 v16, v7

    move v15, v8

    move/from16 v13, v17

    :goto_12
    move-object/from16 v14, v19

    goto :goto_14

    :goto_13
    move v15, v8

    goto :goto_12

    :goto_14
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->u()I

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->t()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/h7;->q(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->u()I

    move-result v6

    if-ge v4, v6, :cond_2c

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/a3;->v(I)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v18

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f3;->O()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2a

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f3;->O()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/os/Bundle;

    move/from16 p3, v12

    const/4 v3, 0x0

    :goto_16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_29

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/f3;->O()Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v6

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/h7;->q(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/f3;->O()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_28

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/internal/measurement/f3;

    move-object/from16 v20, v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v18

    move/from16 v21, v13

    move-object/from16 v13, v18

    check-cast v13, Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v1, v12, v13, v6, v8}, Lcom/google/android/gms/measurement/internal/c7;->y(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/e3;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object/from16 v12, v20

    move/from16 v13, v21

    goto :goto_17

    :cond_28
    move/from16 v21, v13

    aput-object v6, v10, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v19

    move/from16 v13, v21

    goto :goto_16

    :cond_29
    move/from16 v21, v13

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_18

    :cond_2a
    move/from16 p3, v12

    move/from16 v21, v13

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/e3;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v6, v2, v8}, Lcom/google/android/gms/measurement/internal/c7;->y(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/e3;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_2b
    :goto_18
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, p3

    move-object/from16 v18, v9

    move/from16 v13, v21

    const/4 v3, -0x1

    goto/16 :goto_15

    :cond_2c
    move/from16 p3, v12

    move/from16 v21, v13

    move-object/from16 v9, v18

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a3;->B()Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2d

    invoke-virtual {v3, v10, v8}, Lcom/google/android/gms/measurement/internal/h7;->H(Lcom/google/android/gms/internal/measurement/e3;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/f3;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    goto :goto_1a

    :cond_2f
    move/from16 p3, v12

    move/from16 v21, v13

    move-object/from16 v9, v18

    :cond_30
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/Y6;->c:Ljava/util/List;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/b3;

    move/from16 v4, v24

    invoke-interface {v2, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/measurement/m3;->S0(Lcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;

    add-int/lit8 v10, v17, 0x1

    move/from16 v12, p3

    move/from16 v13, v21

    :goto_1b
    add-int/lit8 v2, v4, 0x1

    move-object v4, v9

    move-object v6, v11

    move-object/from16 v3, v28

    move/from16 v11, v30

    move v9, v2

    move-object/from16 v2, v27

    goto/16 :goto_0

    :cond_31
    move-object v11, v6

    move-object v14, v8

    move-object v6, v12

    const-wide/16 v2, 0x0

    move-wide v12, v2

    move/from16 v8, v17

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v8, :cond_35

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/measurement/m3;->P0(I)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-static {v9, v6}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v15

    if-eqz v15, :cond_33

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/measurement/m3;->V0(I)Lcom/google/android/gms/internal/measurement/m3;

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v7, v7, -0x1

    :cond_32
    :goto_1d
    const/4 v9, 0x1

    goto :goto_1f

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-static {v9, v14}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v9

    if-eqz v9, :cond_32

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/f3;->I()Z

    move-result v15

    if-eqz v15, :cond_34

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1e

    :cond_34
    const/4 v9, 0x0

    :goto_1e
    if-eqz v9, :cond_32

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v15, v15, v2

    if-lez v15, :cond_32

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    add-long/2addr v12, v15

    goto :goto_1d

    :goto_1f
    add-int/2addr v7, v9

    goto :goto_1c

    :cond_35
    const/4 v6, 0x0

    invoke-virtual {v1, v11, v12, v13, v6}, Lcom/google/android/gms/measurement/internal/c7;->M(Lcom/google/android/gms/internal/measurement/m3;JZ)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->N0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v8, "_se"

    if-eqz v7, :cond_37

    :try_start_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/b3;

    const-string v9, "_s"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/w;->B0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const-string v6, "_sid"

    invoke-static {v11, v6}, Lcom/google/android/gms/measurement/internal/h7;->X(Lcom/google/android/gms/internal/measurement/m3;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_38

    const/4 v6, 0x1

    invoke-virtual {v1, v11, v12, v13, v6}, Lcom/google/android/gms/measurement/internal/c7;->M(Lcom/google/android/gms/internal/measurement/m3;JZ)V

    goto :goto_20

    :cond_38
    invoke-static {v11, v8}, Lcom/google/android/gms/measurement/internal/h7;->X(Lcom/google/android/gms/internal/measurement/m3;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_39

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/m3;->d1(I)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39
    :goto_20
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v7

    if-nez v7, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v8, "Cannot fix consent fields without appInfo. appId"

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21

    :cond_3a
    invoke-virtual {v1, v7, v11}, Lcom/google/android/gms/measurement/internal/c7;->n(Lcom/google/android/gms/measurement/internal/I2;Lcom/google/android/gms/internal/measurement/m3;)V

    :goto_21
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v7

    if-nez v7, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v8, "Cannot populate ad_campaign_info without appInfo. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    :cond_3b
    invoke-virtual {v1, v7, v11}, Lcom/google/android/gms/measurement/internal/c7;->o(Lcom/google/android/gms/measurement/internal/I2;Lcom/google/android/gms/internal/measurement/m3;)V

    :goto_22
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/c7;->X(Lcom/google/android/gms/internal/measurement/m3;)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->x0()Lcom/google/android/gms/internal/measurement/m3;

    sget-object v6, Lcom/google/android/gms/measurement/internal/Z3;->c:Lcom/google/android/gms/measurement/internal/Z3;

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n3;->K0()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x64

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/Z3;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/Z3;->s(Lcom/google/android/gms/measurement/internal/Z3;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/w;->b0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/google/android/gms/measurement/internal/w;->a0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V

    sget-object v8, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v9

    if-nez v9, :cond_3c

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v9

    if-eqz v9, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/w;->z0(Ljava/lang/String;)V

    goto :goto_23

    :cond_3c
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v9

    if-eqz v9, :cond_3d

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/w;->A0(Ljava/lang/String;)V

    :cond_3d
    :goto_23
    sget-object v7, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v9

    if-nez v9, :cond_3e

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->K()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->N()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->A0()Lcom/google/android/gms/internal/measurement/m3;

    :cond_3e
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v9

    if-nez v9, :cond_3f

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->Q()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->I0()Lcom/google/android/gms/internal/measurement/m3;

    :cond_3f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/e2;->Q0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v9

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/m7;->L(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_47

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v7

    if-eqz v7, :cond_47

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n3;->P0()Z

    move-result v7

    if-eqz v7, :cond_47

    const/4 v7, 0x0

    :goto_24
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->O0()I

    move-result v9

    if-ge v7, v9, :cond_47

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/measurement/m3;->P0(I)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->t()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_40
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_46

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_40

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n3;->W0()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v12

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/e2;->m0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v12

    if-lt v10, v12, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v10

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/e2;->z0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v10

    if-lez v10, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->h()J

    move-result-wide v25

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v27

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v24 .. v34}, Lcom/google/android/gms/measurement/internal/w;->N0(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v12

    iget-wide v12, v12, Lcom/google/android/gms/measurement/internal/s;->g:J

    int-to-long v14, v10

    cmp-long v10, v12, v14

    if-lez v10, :cond_41

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v10

    const-string v12, "_tnr"

    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    const-wide/16 v12, 0x1

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    goto/16 :goto_27

    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v10

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/e2;->S0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/m7;->l0()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v12

    const-string v13, "_tu"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/measurement/e3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    goto :goto_25

    :cond_42
    const/4 v10, 0x0

    :goto_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v12

    const-string v13, "_tr"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    const-wide/16 v13, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v12

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11, v9, v10}, Lcom/google/android/gms/measurement/internal/h7;->I(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m3;Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/C6;

    move-result-object v10

    if-eqz v10, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v12

    const-string v13, "Generated trigger URI. appId, uri"

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/C6;->b:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v12

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Lcom/google/android/gms/measurement/internal/w;->W(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/C6;)Z

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/c7;->q:Ljava/util/Deque;

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_45

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v10

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/e2;->S0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v10

    if-eqz v10, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/m7;->l0()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v12

    const-string v13, "_tu"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/measurement/e3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    goto :goto_26

    :cond_44
    const/4 v10, 0x0

    :goto_26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v12

    const-string v13, "_tr"

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    const-wide/16 v13, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/internal/measurement/e3;->y(J)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/a3;->y(Lcom/google/android/gms/internal/measurement/f3;)Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v12

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11, v9, v10}, Lcom/google/android/gms/measurement/internal/h7;->I(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m3;Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/C6;

    move-result-object v10

    if-eqz v10, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v12

    const-string v13, "Generated trigger URI. appId, uri"

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/C6;->b:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v12

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Lcom/google/android/gms/measurement/internal/w;->W(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/C6;)Z

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/c7;->q:Ljava/util/Deque;

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_45

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_45
    :goto_27
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v11, v7, v9}, Lcom/google/android/gms/internal/measurement/m3;->Q0(ILcom/google/android/gms/internal/measurement/b3;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_24

    :cond_47
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->t0()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->I0()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v24

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->N0()Ljava/util/List;

    move-result-object v26

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->W0()Ljava/util/List;

    move-result-object v27

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->g1()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->i1()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v4

    const/4 v6, 0x1

    xor-int/lit8 v30, v4, 0x1

    invoke-virtual/range {v24 .. v30}, Lcom/google/android/gms/measurement/internal/e;->m(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/m3;->s0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v4

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/m;->l(Ljava/lang/String;)Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_61

    :try_start_9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/m7;->q0()Ljava/security/SecureRandom;

    move-result-object v7

    const/4 v8, 0x0

    :goto_28
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->O0()I

    move-result v9

    if-ge v8, v9, :cond_5e

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/m3;->P0(I)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v10

    const-string v12, "_ep"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v12, "_sr"

    if-eqz v10, :cond_4c

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/b3;

    const-string v13, "_en"

    invoke-static {v10, v13}, Lcom/google/android/gms/measurement/internal/h7;->u(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/E;

    if-nez v13, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v13

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/w;->x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v13

    if-eqz v13, :cond_48

    invoke-interface {v4, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    if-eqz v13, :cond_4b

    iget-object v10, v13, Lcom/google/android/gms/measurement/internal/E;->i:Ljava/lang/Long;

    if-nez v10, :cond_4b

    iget-object v10, v13, Lcom/google/android/gms/measurement/internal/E;->j:Ljava/lang/Long;

    if-eqz v10, :cond_49

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v17, 0x1

    cmp-long v14, v14, v17

    if-lez v14, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-static {v9, v12, v10}, Lcom/google/android/gms/measurement/internal/h7;->o(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_49
    iget-object v10, v13, Lcom/google/android/gms/measurement/internal/E;->k:Ljava/lang/Boolean;

    if-eqz v10, :cond_4a

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    const-string v10, "_efs"

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v9, v10, v14}, Lcom/google/android/gms/measurement/internal/h7;->o(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/b3;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/m3;->R0(ILcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v3, v4

    move-object/from16 v25, v5

    move-object v15, v7

    move v1, v8

    const/4 v2, 0x0

    const-wide/16 v17, 0x1

    goto/16 :goto_34

    :cond_4c
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v10

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v13

    const-string v14, "measurement.account.time_zone_offset_minutes"

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/measurement/internal/c3;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v15, :cond_4d

    :try_start_c
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_29

    :catch_0
    move-exception v0

    move-object v14, v0

    :try_start_d
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v10

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const-string v15, "Unable to parse timezone offset. appId"

    invoke-virtual {v10, v15, v13, v14}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_4d
    move-wide v13, v2

    :goto_29
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3, v13, v14}, Lcom/google/android/gms/measurement/internal/m7;->Y(JJ)J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/b3;

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v1, "_dbg"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_50

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/b3;->E()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_50

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gms/internal/measurement/f3;

    move-object/from16 p2, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_2b

    :cond_4e
    move-object/from16 p2, v15

    const/4 v1, 0x1

    goto :goto_2c

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    goto/16 :goto_1

    :cond_4f
    move-object/from16 v10, p2

    goto :goto_2a

    :cond_50
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v1

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v10

    move-object/from16 p2, v15

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v10, v15}, Lcom/google/android/gms/measurement/internal/c3;->G(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_2c
    if-gtz v1, :cond_51

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Sample rate must be positive. event, rate"

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v10, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/b3;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/m3;->R0(ILcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;

    :goto_2d
    move-object v3, v4

    move-object/from16 v25, v5

    move-object v15, v7

    move v1, v8

    const/4 v2, 0x0

    goto/16 :goto_34

    :cond_51
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/E;

    if-nez v10, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v10

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v21, v13

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v15, v13}, Lcom/google/android/gms/measurement/internal/w;->x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v10

    if-nez v10, :cond_53

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v10

    const-string v13, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lcom/google/android/gms/measurement/internal/E;

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v33

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v27, 0x1

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v40}, Lcom/google/android/gms/measurement/internal/E;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_2e

    :cond_52
    move-wide/from16 v21, v13

    :cond_53
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/b3;

    const-string v14, "_eid"

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/h7;->u(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_54

    const/4 v14, 0x1

    const/16 v23, 0x1

    goto :goto_2f

    :cond_54
    const/4 v14, 0x1

    const/16 v23, 0x0

    :goto_2f
    if-ne v1, v14, :cond_57

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/b3;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v23, :cond_56

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/E;->i:Ljava/lang/Long;

    if-nez v1, :cond_55

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/E;->j:Ljava/lang/Long;

    if-nez v1, :cond_55

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/E;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_56

    :cond_55
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v1, v1}, Lcom/google/android/gms/measurement/internal/E;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/m3;->R0(ILcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;

    goto/16 :goto_2d

    :cond_57
    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    int-to-long v14, v1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v12, v1}, Lcom/google/android/gms/measurement/internal/h7;->o(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/b3;

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v23, :cond_58

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v1, v12}, Lcom/google/android/gms/measurement/internal/E;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v10

    :cond_58
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13, v2, v3}, Lcom/google/android/gms/measurement/internal/E;->b(JJ)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    move-object/from16 v25, v5

    move-object v15, v7

    move v1, v8

    :goto_30
    const/4 v2, 0x0

    goto/16 :goto_33

    :cond_59
    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/E;->h:Ljava/lang/Long;

    if-eqz v14, :cond_5a

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v26, v4

    move-object/from16 v25, v5

    move/from16 v16, v8

    move-wide v4, v14

    move-object v15, v7

    goto :goto_31

    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v14

    move-object v15, v7

    move/from16 v16, v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->I()J

    move-result-wide v7

    move-object/from16 v26, v4

    move-object/from16 v25, v5

    move-wide/from16 v4, v21

    invoke-virtual {v14, v7, v8, v4, v5}, Lcom/google/android/gms/measurement/internal/m7;->Y(JJ)J

    move-result-wide v4

    :goto_31
    cmp-long v4, v4, v2

    if-eqz v4, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    const-string v4, "_efs"

    move-object/from16 v5, p2

    invoke-static {v9, v4, v5}, Lcom/google/android/gms/measurement/internal/h7;->o(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v12, v1}, Lcom/google/android/gms/measurement/internal/h7;->o(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/b3;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v23, :cond_5b

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-virtual {v10, v5, v1, v4}, Lcom/google/android/gms/measurement/internal/E;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v10

    :cond_5b
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/E;->b(JJ)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v2

    move-object/from16 v3, v26

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, v16

    goto :goto_30

    :cond_5c
    move-object/from16 v3, v26

    if-eqz v23, :cond_5d

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v13, v2, v2}, Lcom/google/android/gms/measurement/internal/E;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    move/from16 v1, v16

    goto :goto_33

    :cond_5d
    const/4 v2, 0x0

    goto :goto_32

    :goto_33
    invoke-virtual {v11, v1, v9}, Lcom/google/android/gms/internal/measurement/m3;->R0(ILcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;

    :goto_34
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v1, p0

    move-object v4, v3

    move-object v7, v15

    move-object/from16 v5, v25

    const-wide/16 v2, 0x0

    goto/16 :goto_28

    :cond_5e
    move-object v3, v4

    move-object/from16 v25, v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->O0()I

    move-result v2

    if-ge v1, v2, :cond_5f

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->U0()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/m3;->T0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_5f
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/E;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/w;->y0(Lcom/google/android/gms/measurement/internal/E;)V

    goto :goto_35

    :cond_60
    move-object/from16 v1, v25

    goto :goto_36

    :cond_61
    move-object v1, v5

    :goto_36
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v3

    if-nez v3, :cond_62

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Bundling raw events w/o app info. appId"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3b

    :cond_62
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->O0()I

    move-result v4

    if-lez v4, :cond_67

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->B0()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_63

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/m3;->t(J)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_37

    :cond_63
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->u()Lcom/google/android/gms/internal/measurement/m3;

    :goto_37
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->z0()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_64

    goto :goto_38

    :cond_64
    move-wide v4, v6

    :goto_38
    cmp-long v6, v4, v8

    if-eqz v6, :cond_65

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/m3;->k1(J)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_39

    :cond_65
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->l1()Lcom/google/android/gms/internal/measurement/m3;

    :goto_39
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->O0()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/I2;->m(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->G()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/m3;->f0(I)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->g()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/m3;->S(I)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->g1()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/I2;->A0(J)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->i1()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/I2;->C0(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->N()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/m3;->n0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_3a

    :cond_66
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->o0()Lcom/google/android/gms/internal/measurement/m3;

    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    :cond_67
    :goto_3b
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m3;->O0()I

    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-lez v3, :cond_6b

    move-object/from16 v3, p0

    :try_start_f
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/c3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t2;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t2;->E()Z

    move-result v5

    if-nez v5, :cond_68

    goto :goto_3c

    :cond_68
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/t2;->F()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/m3;->y0(J)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_3d

    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :cond_69
    :goto_3c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/n3;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6a

    const-wide/16 v4, -0x1

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/m3;->y0(J)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_3d

    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/Y6;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v4

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/n3;

    move/from16 v12, p3

    invoke-virtual {v4, v5, v12}, Lcom/google/android/gms/measurement/internal/w;->Q0(Lcom/google/android/gms/internal/measurement/n3;Z)Z

    goto :goto_3e

    :cond_6b
    move-object/from16 v3, p0

    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/Y6;->b:Ljava/util/List;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/w;->E(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/w;->F(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->u0()V

    const/4 v7, 0x1

    goto :goto_40

    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move v7, v5

    :goto_40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    return v7

    :goto_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw v1
.end method

.method public final L0()Lcom/google/android/gms/measurement/internal/h6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    return-object v0
.end method

.method public final M(Lcom/google/android/gms/internal/measurement/m3;JZ)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    goto :goto_0

    :cond_0
    const-string v1, "_se"

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/k7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v4

    invoke-interface {v4}, LT0/g;->a()J

    move-result-wide v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/k7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v2

    invoke-interface {v2}, LT0/g;->a()J

    move-result-wide v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/E3;->P()Lcom/google/android/gms/internal/measurement/D3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/D3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/D3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v3

    invoke-interface {v3}, LT0/g;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/D3;->t(J)Lcom/google/android/gms/internal/measurement/D3;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/D3;->x(J)Lcom/google/android/gms/internal/measurement/D3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/E3;

    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/h7;->X(Lcom/google/android/gms/internal/measurement/m3;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/m3;->Z0(ILcom/google/android/gms/internal/measurement/E3;)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/m3;->a1(Lcom/google/android/gms/internal/measurement/E3;)Lcom/google/android/gms/internal/measurement/m3;

    :goto_3
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/w;->C0(Lcom/google/android/gms/measurement/internal/k7;)Z

    if-eq v0, p4, :cond_4

    const-string p1, "lifetime"

    goto :goto_4

    :cond_4
    const-string p1, "session-scoped"

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    invoke-virtual {p2, p3, p1, v3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final M0()Lcom/google/android/gms/measurement/internal/u2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v0

    return-object v0
.end method

.method public final N(Lcom/google/android/gms/internal/measurement/a3;Lcom/google/android/gms/internal/measurement/a3;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, LG0/A;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f3;->H()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/b3;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f3;->H()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/a3;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, LG0/A;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f3;->I()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/h7;->o(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/h7;->o(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final N0()Lcom/google/android/gms/measurement/internal/m7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    return-object v0
.end method

.method public final O()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final O0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final P0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget v1, p1, Lcom/google/android/gms/measurement/internal/o7;->y:I

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/Z3;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Setting storage consent for package"

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/c7;->f(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V

    return-void
.end method

.method public final Q()V
    .locals 20
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/c7;->o:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->c()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/c7;->o:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->G0()Lcom/google/android/gms/measurement/internal/J2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/J2;->b()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->H0()Lcom/google/android/gms/measurement/internal/F6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/F6;->n()V

    return-void

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/c7;->o:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->m()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->P:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w;->D()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w;->s()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :cond_4
    :goto_0
    if-eqz v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/m;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->K:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->J:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->I:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/h6;->h:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/h6;->i:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    move/from16 v17, v10

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w;->y()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    move-wide/from16 v18, v7

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w;->A()J

    move-result-wide v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_8

    :cond_7
    move-wide v9, v3

    goto/16 :goto_3

    :cond_8
    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long v7, v1, v7

    sub-long/2addr v15, v1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long/2addr v1, v9

    add-long v9, v5, v18

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    if-eqz v17, :cond_9

    cmp-long v13, v7, v3

    if-lez v13, :cond_9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    add-long/2addr v9, v11

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v13

    invoke-virtual {v13, v7, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/h7;->S(JJ)Z

    move-result v13

    if-nez v13, :cond_a

    add-long v9, v7, v11

    :cond_a
    cmp-long v7, v1, v3

    if-eqz v7, :cond_c

    cmp-long v5, v1, v5

    if-ltz v5, :cond_c

    const/4 v5, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->R:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v11, 0x14

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_7

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->Q:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    mul-long/2addr v6, v11

    add-long/2addr v9, v6

    cmp-long v6, v9, v1

    if-lez v6, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    cmp-long v1, v9, v3

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->G0()Lcom/google/android/gms/measurement/internal/J2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/J2;->b()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->H0()Lcom/google/android/gms/measurement/internal/F6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/F6;->n()V

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/h6;->g:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->G:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/h7;->S(JJ)Z

    move-result v7

    if-nez v7, :cond_e

    add-long/2addr v1, v5

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->G0()Lcom/google/android/gms/measurement/internal/J2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/J2;->b()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v1

    sub-long/2addr v9, v1

    cmp-long v1, v9, v3

    if-gtz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v1, Lcom/google/android/gms/measurement/internal/e2;->L:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/h6;->h:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v2

    invoke-interface {v2}, LT0/g;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->H0()Lcom/google/android/gms/measurement/internal/F6;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/measurement/internal/F6;->m(J)V

    return-void

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->G0()Lcom/google/android/gms/measurement/internal/J2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/J2;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->H0()Lcom/google/android/gms/measurement/internal/F6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/F6;->n()V

    return-void

    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->G0()Lcom/google/android/gms/measurement/internal/J2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/J2;->b()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->H0()Lcom/google/android/gms/measurement/internal/F6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/F6;->n()V

    return-void
.end method

.method public final Q0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->z:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/A;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Setting DMA consent for package"

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c7;->S0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/A;->h(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/A;->c()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/c7;->C:Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/google/android/gms/measurement/internal/w;->Z(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/A;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c7;->S0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/A;->h(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/A;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/A;->c()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    sget-object v2, Lcom/google/android/gms/measurement/internal/W3;->zzc:Lcom/google/android/gms/measurement/internal/W3;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    sget-object v5, Lcom/google/android/gms/measurement/internal/W3;->zzd:Lcom/google/android/gms/measurement/internal/W3;

    if-ne p1, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    sget-object v6, Lcom/google/android/gms/measurement/internal/W3;->zzd:Lcom/google/android/gms/measurement/internal/W3;

    if-ne v1, v6, :cond_1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-nez v5, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v1, "Generated _dcu event for"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->h()J

    move-result-wide v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/w;->N0(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/s;->f:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->n0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    const-string v1, "_r"

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->h()J

    move-result-wide v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/measurement/internal/w;->N0(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/s;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "_dcu realtime event count"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    const-string v2, "_dcu"

    invoke-interface {v1, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/l7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final R()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->u:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->v:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->p:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->p:Ljava/util/List;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/c7;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/c7;->u:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/c7;->v:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final R0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/A;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/w;->Y(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final S(Lcom/google/android/gms/measurement/internal/I2;)Ljava/lang/Boolean;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LV0/d;->a(Landroid/content/Context;)LV0/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LV0/c;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LV0/d;->a(Landroid/content/Context;)LV0/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LV0/c;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final S0(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->R(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n2;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/Z3;->n()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c7;->R0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/o;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/internal/o;-><init>()V

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/c7;->T0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/A;Lcom/google/android/gms/measurement/internal/Z3;Lcom/google/android/gms/measurement/internal/o;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/A;->f()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    const-string v2, "_npa"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/o;

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/o;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/c7;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o;)I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq v1, p1, :cond_2

    const-string p1, "granted"

    goto :goto_1

    :cond_2
    const-string p1, "denied"

    :goto_1
    const-string v1, "ad_personalization"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final T(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o7;
    .locals 41
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v11

    const/4 v0, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v15, p0

    invoke-virtual {v15, v11}, Lcom/google/android/gms/measurement/internal/c7;->S(Lcom/google/android/gms/measurement/internal/I2;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "App version does not match; dropping. appId"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v40, Lcom/google/android/gms/measurement/internal/o7;

    move-object/from16 v0, v40

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v4

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->H0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->J0()J

    move-result-wide v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->L0()J

    move-result-wide v9

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->d()Z

    move-result v12

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->x0()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->P()Z

    move-result v18

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->R()Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->b()J

    move-result-wide v21

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->T()Ljava/util/List;

    move-result-object v23

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/Z3;->l()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->V()Z

    move-result v27

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->X()J

    move-result-wide v28

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/Z3;->b()I

    move-result v30

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->R0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/A;->e()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->b0()I

    move-result v32

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->j0()J

    move-result-wide v33

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->l0()Ljava/lang/String;

    move-result-object v35

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->I()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/I2;->M()I

    move-result v39

    const/16 v26, 0x0

    const-wide/16 v37, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v19, 0x0

    const-string v25, ""

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v39}, Lcom/google/android/gms/measurement/internal/o7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    return-object v40

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final T0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/A;Lcom/google/android/gms/measurement/internal/Z3;Lcom/google/android/gms/measurement/internal/o;)Lcom/google/android/gms/measurement/internal/A;
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->R(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n2;

    move-result-object v0

    const-string v1, "-"

    const/16 v2, 0x5a

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/A;->c()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/W3;->zzc:Lcom/google/android/gms/measurement/internal/W3;

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/A;->b()I

    move-result v2

    sget-object p1, Lcom/google/android/gms/measurement/internal/Y3;->zzc:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/measurement/internal/o;->b(Lcom/google/android/gms/measurement/internal/Y3;I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/Y3;->zzc:Lcom/google/android/gms/measurement/internal/Y3;

    sget-object p2, Lcom/google/android/gms/measurement/internal/n;->zzj:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    :goto_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/A;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v2, p3, v1}, Lcom/google/android/gms/measurement/internal/A;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/A;->c()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/W3;->zzd:Lcom/google/android/gms/measurement/internal/W3;

    if-eq v0, v3, :cond_8

    sget-object v4, Lcom/google/android/gms/measurement/internal/W3;->zzc:Lcom/google/android/gms/measurement/internal/W3;

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/google/android/gms/measurement/internal/W3;->zzb:Lcom/google/android/gms/measurement/internal/W3;

    if-ne v0, p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/c3;

    sget-object v0, Lcom/google/android/gms/measurement/internal/Y3;->zzc:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/c3;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Y3;)Lcom/google/android/gms/measurement/internal/W3;

    move-result-object p2

    sget-object v5, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    if-eq p2, v5, :cond_3

    sget-object p3, Lcom/google/android/gms/measurement/internal/n;->zzi:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {p4, v0, p3}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    move-object v0, p2

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/c3;

    sget-object v0, Lcom/google/android/gms/measurement/internal/Y3;->zzc:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/c3;->Q(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Y3;)Lcom/google/android/gms/measurement/internal/Y3;

    move-result-object v5

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/Z3;->p()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object p3

    const/4 v6, 0x1

    if-eq p3, v3, :cond_4

    if-ne p3, v4, :cond_5

    :cond_4
    move v7, v6

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    sget-object v8, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    if-ne v5, v8, :cond_6

    if-eqz v7, :cond_6

    sget-object p2, Lcom/google/android/gms/measurement/internal/n;->zzc:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {p4, v0, p2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    move-object v0, p3

    goto :goto_3

    :cond_6
    sget-object p3, Lcom/google/android/gms/measurement/internal/n;->zzb:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {p4, v0, p3}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/c3;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result p2

    if-eq v6, p2, :cond_7

    move-object v0, v4

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/A;->b()I

    move-result v2

    sget-object p2, Lcom/google/android/gms/measurement/internal/Y3;->zzc:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {p4, p2, v2}, Lcom/google/android/gms/measurement/internal/o;->b(Lcom/google/android/gms/measurement/internal/Y3;I)V

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/c3;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/c3;->S(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/c3;->T(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/W3;->zzc:Lcom/google/android/gms/measurement/internal/W3;

    if-eq v0, p3, :cond_b

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    new-instance p3, Lcom/google/android/gms/measurement/internal/A;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, ""

    if-eqz p2, :cond_a

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-direct {p3, p4, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/A;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p3

    :cond_b
    :goto_4
    new-instance p1, Lcom/google/android/gms/measurement/internal/A;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p3, v2, p2, v1}, Lcom/google/android/gms/measurement/internal/A;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1
.end method

.method public final U(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/w;->x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide p1, p1, Lcom/google/android/gms/measurement/internal/E;->c:J

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a()Lcom/google/android/gms/measurement/internal/B2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->y:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->z:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->y:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "apps"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "events_snapshot"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "trigger_uris"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "upload_queue"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/V6;->a()Z

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/e2;->j1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "no_data_mode_events"

    invoke-virtual {v3, v7, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-lez v5, :cond_2

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c7;->g0(Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_3
    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    return-object v0
.end method

.method public final b0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/c7;->W(Lcom/google/android/gms/measurement/internal/o7;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v4

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/google/android/gms/measurement/internal/m7;->y0(Ljava/lang/String;)I

    move-result v8

    const/4 v4, 0x1

    const/16 v5, 0x18

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v0, v12, v5, v4}, Lcom/google/android/gms/measurement/internal/m7;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/m7;->B(Lcom/google/android/gms/measurement/internal/l7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Lcom/google/android/gms/measurement/internal/m7;->y(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-virtual {v3, v12, v5, v4}, Lcom/google/android/gms/measurement/internal/m7;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_5

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    move/from16 v20, v13

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v14

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    const-string v18, "_ev"

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v20}, Lcom/google/android/gms/measurement/internal/m7;->B(Lcom/google/android/gms/measurement/internal/l7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v12, v5}, Lcom/google/android/gms/measurement/internal/m7;->z(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string v14, "_sid"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/i7;->d:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    const-string v7, "_sno"

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v16, v14

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v10, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v7, v10, v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    const-string v7, "_s"

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/w;->x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    move-object/from16 v16, v14

    iget-wide v13, v5, Lcom/google/android/gms/measurement/internal/E;->c:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "Backfill the session number. Last used session number"

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v5, v13

    goto :goto_3

    :cond_9
    move-object/from16 v16, v14

    const-wide/16 v5, 0x0

    :goto_3
    new-instance v13, Lcom/google/android/gms/measurement/internal/i7;

    const-wide/16 v17, 0x1

    add-long v5, v5, v17

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "_sno"

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v13, v2}, Lcom/google/android/gms/measurement/internal/c7;->b0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_4

    :cond_a
    move-object/from16 v16, v14

    :goto_4
    new-instance v13, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v14}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/i7;->d:J

    move-object v5, v13

    move-object v8, v12

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    iget-object v6, v13, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Setting user property"

    invoke-virtual {v0, v8, v7, v4}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, v14, v3}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    const-string v3, "_lair"

    invoke-virtual {v0, v14, v3}, Lcom/google/android/gms/measurement/internal/w;->B0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_b
    :goto_5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/w;->C0(Lcom/google/android/gms/measurement/internal/k7;)Z

    move-result v0

    move-object/from16 v3, v16

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/o7;->v:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/h7;->U(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/I2;->a0(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/I2;->A()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v3}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->u0()V

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v13, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x0

    move-object v7, v14

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/m7;->B(Lcom/google/android/gms/measurement/internal/l7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    return-void

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw v0

    :cond_e
    :goto_7
    return-void
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    return-object v0
.end method

.method public final c0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/c7;->W(Lcom/google/android/gms/measurement/internal/o7;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/c7;->Z(Lcom/google/android/gms/measurement/internal/o7;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "_npa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/i7;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v4

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    const-string v3, "_npa"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/c7;->b0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Removing user property"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_lair"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->B0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/w;->B0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w;->u0()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v0, "User property removed"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw p1
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final d0()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/c7;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/c7;->r:I

    return-void
.end method

.method public final e()LT0/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    return-object v0
.end method

.method public final e0()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/c7;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/c7;->s:I

    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->B:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/w;->X(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V

    return-void
.end method

.method public final f0()Lcom/google/android/gms/measurement/internal/p3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/measurement/internal/Z3;->c:Lcom/google/android/gms/measurement/internal/Z3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->B:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/Z3;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/w;->L(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c7;->f(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)V

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public final g0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 25
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v0, "com.android.vending"

    const-string v6, "_npa"

    const-string v7, "_uwa"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static/range {p1 .. p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v8}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->W(Lcom/google/android/gms/measurement/internal/o7;)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/I2;->r0()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/I2;->i(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v13

    invoke-virtual {v13, v9, v10, v10}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/c3;->B(Ljava/lang/String;)V

    :cond_1
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    if-nez v9, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    return-void

    :cond_2
    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/o7;->m:J

    cmp-long v9, v13, v11

    if-nez v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v9

    invoke-interface {v9}, LT0/g;->a()J

    move-result-wide v13

    :cond_3
    iget v9, v2, Lcom/google/android/gms/measurement/internal/o7;->n:I

    const/4 v15, 0x1

    if-eqz v9, :cond_4

    if-eq v9, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v11

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v11, v10, v12, v9}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v10

    invoke-virtual {v10, v8, v6}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->Z(Lcom/google/android/gms/measurement/internal/o7;)Ljava/lang/Boolean;

    move-result-object v11

    move-object v12, v3

    move-object/from16 v21, v4

    if-eqz v10, :cond_6

    const-string v3, "auto"

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/k7;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    move v4, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_6
    :goto_0
    if-eqz v11, :cond_9

    new-instance v3, Lcom/google/android/gms/measurement/internal/i7;

    const-string v16, "_npa"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v15, v4, :cond_7

    const-wide/16 v17, 0x0

    goto :goto_1

    :cond_7
    const-wide/16 v17, 0x1

    :goto_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move v4, v15

    move-object v15, v3

    move-wide/from16 v17, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_8

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/i7;->e:Ljava/lang/Long;

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_8
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/c7;->b0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_2

    :cond_9
    move v4, v15

    if-eqz v10, :cond_a

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/c7;->c0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->d1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/o7;->E:J

    invoke-virtual {v1, v2, v10, v11}, Lcom/google/android/gms/measurement/internal/c7;->m0(Lcom/google/android/gms/measurement/internal/o7;J)V

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v2, v13, v14}, Lcom/google/android/gms/measurement/internal/c7;->m0(Lcom/google/android/gms/measurement/internal/o7;J)V

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    if-nez v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    const-string v9, "_f"

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/w;->x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v6

    const/4 v15, 0x0

    goto :goto_4

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    const-string v9, "_v"

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/w;->x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v6

    move v15, v4

    :goto_4
    if-nez v6, :cond_21

    const-wide/32 v9, 0x36ee80

    div-long v16, v13, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    mul-long v16, v16, v9

    const-string v6, "_dac"

    const-string v9, "_et"

    const-string v10, "_r"

    const-string v11, "_c"

    if-nez v15, :cond_1f

    :try_start_1
    new-instance v15, Lcom/google/android/gms/measurement/internal/i7;

    const-string v18, "_fot"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v18

    move-wide/from16 v17, v13

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/c7;->b0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/c7;->k:Lcom/google/android/gms/measurement/internal/S2;

    invoke-static {v15}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/measurement/internal/S2;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e

    :cond_d
    move-wide/from16 v23, v13

    goto/16 :goto_7

    :cond_e
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/S2;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/S2;->a()Z

    move-result v16

    if-nez v16, :cond_f

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    move-wide/from16 v23, v13

    goto/16 :goto_8

    :cond_f
    new-instance v4, Lcom/google/android/gms/measurement/internal/R2;

    invoke-direct {v4, v15, v8}, Lcom/google/android/gms/measurement/internal/R2;-><init>(Lcom/google/android/gms/measurement/internal/S2;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    new-instance v8, Landroid/content/Intent;

    move-wide/from16 v23, v13

    const-string v13, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v13, v0, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-nez v13, :cond_10

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->s()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_10
    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_13

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_14

    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_12

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/S2;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, LS0/b;->b()LS0/b;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v0, v4, v14}, LS0/b;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Install Referrer Service is"

    if-eqz v0, :cond_11

    const-string v0, "available"

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_11
    const-string v0, "not available"

    :goto_5
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :goto_6
    :try_start_3
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/S2;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Exception occurred while binding to Install Referrer Service"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Play Store version 8.3.73 or higher required for Install Referrer"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Play Service for fetching Install Referrer is unavailable on device"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    iget-object v0, v15, Lcom/google/android/gms/measurement/internal/S2;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->s()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Install Referrer Reporter was called with invalid app package name"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_14
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v13, 0x1

    invoke-virtual {v3, v11, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v10, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v10, 0x0

    invoke-virtual {v3, v7, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v4, v21

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v12, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v3, v9, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/o7;->p:Z

    if-eqz v0, :cond_15

    invoke-virtual {v3, v6, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_15
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-static {v6}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const-string v8, "first_open_count"

    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/measurement/internal/w;->z(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_16
    :goto_9
    const-wide/16 v6, 0x0

    goto/16 :goto_11

    :cond_17
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LV0/d;->a(Landroid/content/Context;)LV0/c;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, LV0/c;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    const-string v9, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v9, v13, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_1c

    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v13, 0x0

    cmp-long v15, v8, v13

    if-eqz v15, :cond_1c

    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v8, v13

    if-eqz v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/e2;->J0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/16 v13, 0x0

    cmp-long v0, v10, v13

    if-nez v0, :cond_18

    const-wide/16 v13, 0x1

    invoke-virtual {v3, v7, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v10, 0x0

    :cond_18
    :goto_b
    const/4 v15, 0x0

    goto :goto_c

    :cond_19
    const-wide/16 v13, 0x1

    invoke-virtual {v3, v7, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b

    :cond_1a
    const/4 v9, 0x0

    const/4 v15, 0x1

    :goto_c
    new-instance v0, Lcom/google/android/gms/measurement/internal/i7;

    const-string v16, "_fi"

    const/4 v7, 0x1

    if-eq v7, v15, :cond_1b

    const-wide/16 v7, 0x0

    goto :goto_d

    :cond_1b
    const-wide/16 v7, 0x1

    :goto_d
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v15, v0

    move-wide/from16 v17, v23

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/c7;->b0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_e

    :cond_1c
    const/4 v9, 0x0

    :goto_e
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LV0/d;->a(Landroid/content/Context;)LV0/c;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, LV0/c;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_f

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v8, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v8, v6, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v9

    :goto_f
    if-eqz v0, :cond_16

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_1d

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_10

    :cond_1d
    const-wide/16 v6, 0x1

    :goto_10
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_16

    invoke-virtual {v3, v12, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9

    :goto_11
    cmp-long v0, v10, v6

    if-ltz v0, :cond_1e

    invoke-virtual {v3, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    new-instance v0, Lcom/google/android/gms/measurement/internal/I;

    const-string v16, "_f"

    new-instance v4, Lcom/google/android/gms/measurement/internal/G;

    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/G;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v0

    move-object/from16 v17, v4

    move-wide/from16 v19, v23

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/I;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/G;Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/c7;->j(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    goto/16 :goto_12

    :cond_1f
    move-wide/from16 v23, v13

    new-instance v0, Lcom/google/android/gms/measurement/internal/i7;

    const-string v3, "_fvt"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v15, v0

    move-object/from16 v16, v3

    move-wide/from16 v17, v23

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/c7;->b0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v11, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v10, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v9, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/o7;->p:Z

    if-eqz v5, :cond_20

    invoke-virtual {v0, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_20
    new-instance v3, Lcom/google/android/gms/measurement/internal/I;

    const-string v16, "_v"

    new-instance v4, Lcom/google/android/gms/measurement/internal/G;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/G;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v23

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/I;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/G;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/c7;->j(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_12

    :cond_21
    move-wide/from16 v23, v13

    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/o7;->j:Z

    if-eqz v0, :cond_22

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/google/android/gms/measurement/internal/I;

    const-string v16, "_cd"

    new-instance v4, Lcom/google/android/gms/measurement/internal/G;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/G;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v23

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/I;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/G;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/c7;->j(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_22
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    return-void

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw v0
.end method

.method public final h()J
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/h6;->j:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m7;->q0()Ljava/security/SecureRandom;

    move-result-object v2

    const v4, 0x5265c00

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    :cond_0
    add-long/2addr v0, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final h0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->A0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->j0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->n()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/c7;->L(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->p()J

    move-result-wide v4

    :goto_1
    int-to-long v6, v2

    cmp-long v1, v6, v4

    if-gez v1, :cond_1

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v0, v6, v7}, Lcom/google/android/gms/measurement/internal/c7;->L(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->B0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K()V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->j:Lcom/google/android/gms/measurement/internal/P6;

    iget p1, p1, Lcom/google/android/gms/measurement/internal/o7;->F:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/x3;->a(I)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/measurement/internal/P6;->j(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/x3;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v1, "[sgtm] Going background, trigger client side upload. appId"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object p1

    invoke-interface {p1}, LT0/g;->a()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->s(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method public final i(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V
    .locals 43
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/c7;->S(Lcom/google/android/gms/measurement/internal/I2;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    const-string v4, "_ui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/o7;

    move-object v2, v15

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->r0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v6

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->H0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->J0()J

    move-result-wide v9

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->L0()J

    move-result-wide v11

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->d()Z

    move-result v14

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->x0()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->P()Z

    move-result v20

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->R()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->b()J

    move-result-wide v23

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->T()Ljava/util/List;

    move-result-object v25

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/Z3;->l()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->V()Z

    move-result v29

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->X()J

    move-result-wide v30

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/Z3;->b()I

    move-result v32

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c7;->R0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/A;->e()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->b0()I

    move-result v34

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->j0()J

    move-result-wide v35

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->l0()Ljava/lang/String;

    move-result-object v37

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->I()Ljava/lang/String;

    move-result-object v38

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/I2;->M()I

    move-result v41

    const/16 v28, 0x0

    const-wide/16 v39, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v42, v15

    move/from16 v15, v17

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-string v27, ""

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v41}, Lcom/google/android/gms/measurement/internal/o7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->j(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final i0(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c7;->T(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c7;->j0(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/C2;->a(Lcom/google/android/gms/measurement/internal/I;)Lcom/google/android/gms/measurement/internal/C2;

    move-result-object p1

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/C2;->d:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/w;->I(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/m7;->w(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/m;->w(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/measurement/internal/m7;->u(Lcom/google/android/gms/measurement/internal/C2;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/C2;->b()Lcom/google/android/gms/measurement/internal/I;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->h1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    const-string v1, "_cis"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/G;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer API v2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/G;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/I;->e:J

    new-instance v0, Lcom/google/android/gms/measurement/internal/i7;

    const-string v7, "auto"

    const-string v3, "_lgclid"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/c7;->b0(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/c7;->k(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method

.method public final j0(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/c7;->W(Lcom/google/android/gms/measurement/internal/o7;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/i;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/i;->f:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->H0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/i;->f:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/i;->e:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/i;->e:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/i;->i:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/i;->i:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/i;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->g:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/i;->f:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/i7;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/i7;->d:J

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/i7;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/i;->e:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/i7;->g:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/i;->f:Z

    move p1, v2

    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/i;->f:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    new-instance v9, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/i7;->d:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/w;->C0(Lcom/google/android/gms/measurement/internal/k7;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/measurement/internal/I;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/i;->e:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/I;-><init>(Lcom/google/android/gms/measurement/internal/I;J)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/c7;->m(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/w;->G0(Lcom/google/android/gms/measurement/internal/i;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw p1
.end method

.method public final k(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 20
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "_s"

    const-string v3, "_sid"

    invoke-static/range {p2 .. p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v4}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    move-object/from16 v5, p1

    iget-wide v12, v5, Lcom/google/android/gms/measurement/internal/I;->e:J

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/C2;->a(Lcom/google/android/gms/measurement/internal/I;)Lcom/google/android/gms/measurement/internal/C2;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c7;->F:Lcom/google/android/gms/measurement/internal/m5;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c7;->G:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c7;->F:Lcom/google/android/gms/measurement/internal/m5;

    :goto_0
    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/C2;->d:Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/m7;->k0(Lcom/google/android/gms/measurement/internal/m5;Landroid/os/Bundle;Z)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/C2;->b()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/h7;->p(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)Z

    move-result v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    iget-boolean v6, v0, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    if-nez v6, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    return-void

    :cond_3
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/o7;->s:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/G;->n0()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "ga_safelisted"

    const-wide/16 v9, 0x1

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v8, Lcom/google/android/gms/measurement/internal/I;

    new-instance v9, Lcom/google/android/gms/measurement/internal/G;

    invoke-direct {v9, v6}, Lcom/google/android/gms/measurement/internal/G;-><init>(Landroid/os/Bundle;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/I;->d:Ljava/lang/String;

    iget-wide v10, v5, Lcom/google/android/gms/measurement/internal/I;->e:J

    move-object v14, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v6

    move-wide/from16 v18, v10

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/I;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/G;Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/I;->d:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v0, v5, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v14, v5

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lcom/google/android/gms/measurement/internal/w;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/G;->n(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    const-string v6, "_f"

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/w;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    const-string v6, "_v"

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/w;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v6

    invoke-interface {v6}, LT0/g;->a()J

    move-result-wide v6

    const-wide/16 v10, -0x3a98

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v14}, Lcom/google/android/gms/measurement/internal/c7;->l(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/I;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v4, v6, v3, v7}, Lcom/google/android/gms/measurement/internal/w;->K(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v1, v4, v14}, Lcom/google/android/gms/measurement/internal/c7;->l(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/I;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v4, v7, v3, v6}, Lcom/google/android/gms/measurement/internal/w;->K(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-static {v4}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    cmp-long v3, v12, v8

    if-gez v3, :cond_9

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v6, "Invalid time querying timed out conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_4

    :cond_9
    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/w;->K0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/i;

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v8, "User property timed out"

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v10

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/i;->h:Lcom/google/android/gms/measurement/internal/I;

    if-eqz v7, :cond_b

    new-instance v8, Lcom/google/android/gms/measurement/internal/I;

    invoke-direct {v8, v7, v12, v13}, Lcom/google/android/gms/measurement/internal/I;-><init>(Lcom/google/android/gms/measurement/internal/I;J)V

    invoke-virtual {v1, v8, v0}, Lcom/google/android/gms/measurement/internal/c7;->m(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v7, v4, v6}, Lcom/google/android/gms/measurement/internal/w;->I0(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-static {v4}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    if-gez v3, :cond_d

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v6, "Invalid time querying expired conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_6

    :cond_d
    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/w;->K0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/i;

    if-eqz v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    const-string v9, "User property expired"

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v11

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v11, v15}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v9, v10, v11, v15}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v8, v4, v9}, Lcom/google/android/gms/measurement/internal/w;->B0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/i;->l:Lcom/google/android/gms/measurement/internal/I;

    if-eqz v8, :cond_f

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v8, v4, v7}, Lcom/google/android/gms/measurement/internal/w;->I0(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/I;

    new-instance v7, Lcom/google/android/gms/measurement/internal/I;

    invoke-direct {v7, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/I;-><init>(Lcom/google/android/gms/measurement/internal/I;J)V

    invoke-virtual {v1, v7, v0}, Lcom/google/android/gms/measurement/internal/c7;->m(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_8

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-static {v4}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    if-gez v3, :cond_12

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v6, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_9

    :cond_12
    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/w;->K0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/i;

    if-eqz v4, :cond_13

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    new-instance v15, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v6}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v15

    move-wide v9, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/w;->C0(Lcom/google/android/gms/measurement/internal/k7;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "User property triggered"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v8

    iget-object v9, v15, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v15, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Too many active user properties, ignoring"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v8

    iget-object v9, v15, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v15, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/i;->j:Lcom/google/android/gms/measurement/internal/I;

    if-eqz v5, :cond_15

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v5, Lcom/google/android/gms/measurement/internal/i7;

    invoke-direct {v5, v15}, Lcom/google/android/gms/measurement/internal/i7;-><init>(Lcom/google/android/gms/measurement/internal/k7;)V

    iput-object v5, v4, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/measurement/internal/i;->f:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/w;->G0(Lcom/google/android/gms/measurement/internal/i;)Z

    goto/16 :goto_a

    :cond_16
    invoke-virtual {v1, v14, v0}, Lcom/google/android/gms/measurement/internal/c7;->m(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/I;

    new-instance v4, Lcom/google/android/gms/measurement/internal/I;

    invoke-direct {v4, v3, v12, v13}, Lcom/google/android/gms/measurement/internal/I;-><init>(Lcom/google/android/gms/measurement/internal/I;J)V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/c7;->m(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_c

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    return-void

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw v0
.end method

.method public final k0(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c7;->T(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o7;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/c7;->l0(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/I;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    const-string v1, "_sid"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/G;->n(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    const-string v1, "_sno"

    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method

.method public final l0(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/c7;->W(Lcom/google/android/gms/measurement/internal/o7;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/w;->H0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->I0(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/i;->f:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->B0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/i;->l:Lcom/google/android/gms/measurement/internal/I;

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/G;->n0()Landroid/os/Bundle;

    move-result-object v1

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/I;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/i;->c:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/I;->e:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/m7;->R(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/I;

    move-result-object p1

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/I;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/c7;->m(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/i7;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw p1
.end method

.method public final m(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 49
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "metadata_fingerprint"

    const-string v4, "app_id"

    const-string v5, "_fx"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    invoke-static/range {p2 .. p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v15}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/h7;->p(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    if-nez v8, :cond_1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v8

    move-object/from16 v9, p1

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-virtual {v8, v15, v13}, Lcom/google/android/gms/measurement/internal/c3;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string v14, "_err"

    const/4 v12, 0x0

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropping blocked event. appId"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/c3;->H(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/c3;->I(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    const-string v12, "_ev"

    const/4 v14, 0x0

    const/16 v11, 0xb

    move-object v10, v15

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/m7;->B(Lcom/google/android/gms/measurement/internal/l7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/I2;->j()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/I2;->h()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v5

    invoke-interface {v5}, LT0/g;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->O:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v5, v12}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->A(Lcom/google/android/gms/measurement/internal/I2;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/C2;->a(Lcom/google/android/gms/measurement/internal/I;)Lcom/google/android/gms/measurement/internal/C2;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v10

    invoke-virtual {v10, v15}, Lcom/google/android/gms/measurement/internal/m;->w(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/m7;->u(Lcom/google/android/gms/measurement/internal/C2;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/e2;->h0:Lcom/google/android/gms/measurement/internal/d2;

    const/16 v11, 0xa

    const/16 v13, 0x23

    invoke-virtual {v9, v15, v10, v11, v13}, Lcom/google/android/gms/measurement/internal/m;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;II)I

    move-result v9

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/C2;->d:Landroid/os/Bundle;

    new-instance v11, Ljava/util/TreeSet;

    invoke-virtual {v10}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v12, "items"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v12

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Lcom/google/android/gms/measurement/internal/m7;->v([Landroid/os/Parcelable;I)V

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/C2;->b()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->z()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/u2;->d(Lcom/google/android/gms/measurement/internal/I;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Logging event"

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    const-string v8, "ecommerce_purchase"

    iget-object v9, v12, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "refund"

    if-nez v8, :cond_9

    :try_start_1
    const-string v8, "purchase"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2c

    :goto_3
    const-string v11, "_iap"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v27, v3

    const-string v3, "value"

    if-nez v11, :cond_c

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v21, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object v6, v12

    move-object v3, v14

    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_c
    :goto_5
    :try_start_2
    const-string v11, "_ltv_"

    iget-object v13, v12, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    move-object/from16 v18, v14

    const-string v14, "currency"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/G;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v8, :cond_f

    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/G;->p(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide v21, 0x412e848000000000L    # 1000000.0

    mul-double v19, v19, v21

    const-wide/16 v23, 0x0

    cmpl-double v8, v19, v23

    if-nez v8, :cond_d

    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/G;->n(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v19, v4, v21

    goto :goto_6

    :cond_d
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    :goto_6
    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v4, v19, v4

    if-gtz v4, :cond_e

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v4, v19, v4

    if-ltz v4, :cond_e

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    neg-long v4, v4

    goto :goto_7

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->u0()V

    goto/16 :goto_13

    :cond_f
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/G;->n(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_10
    :goto_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "[A-Z]{3}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    invoke-virtual {v8, v15, v11}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    instance-of v9, v8, Ljava/lang/Long;

    if-nez v9, :cond_12

    :cond_11
    move-object/from16 v21, v3

    move-object/from16 v30, v6

    move-object v6, v12

    move-object/from16 v3, v18

    const/4 v14, 0x0

    goto :goto_9

    :cond_12
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v19, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v10, v12, Lcom/google/android/gms/measurement/internal/I;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v13

    invoke-interface {v13}, LT0/g;->a()J

    move-result-wide v13

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v8, v19

    move-object v9, v15

    const/4 v5, 0x0

    move-object/from16 v30, v6

    move-object v6, v12

    move-wide v12, v13

    move-object/from16 v21, v3

    move-object/from16 v3, v18

    move-object v14, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_8
    move-object/from16 v4, v19

    goto :goto_b

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/e2;->U:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v9, v15, v10}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v15}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/N6;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v12, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'!_ltv!_%\' escape \'!\'order by set_timestamp desc limit ?,10);"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v15, v15, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v9, v0

    :try_start_4
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    const-string v10, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v10, v12, v9}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    new-instance v19, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/I;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v8

    invoke-interface {v8}, LT0/g;->a()J

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v8, v19

    move-object v9, v15

    move v5, v14

    move-object v14, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_8

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/android/gms/measurement/internal/w;->C0(Lcom/google/android/gms/measurement/internal/k7;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    const-string v9, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v11

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/u2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10, v11, v4}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x9

    const/4 v12, 0x0

    move-object v10, v15

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/m7;->B(Lcom/google/android/gms/measurement/internal/l7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    :cond_13
    move-object/from16 v21, v3

    move-object/from16 v30, v6

    move-object v6, v12

    move-object/from16 v3, v18

    goto/16 :goto_4

    :cond_14
    :goto_c
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/m7;->r0(Ljava/lang/String;)Z

    move-result v22

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/G;

    if-nez v14, :cond_15

    const-wide/16 v9, 0x0

    goto :goto_e

    :cond_15
    new-instance v8, Lcom/google/android/gms/measurement/internal/F;

    invoke-direct {v8, v14}, Lcom/google/android/gms/measurement/internal/F;-><init>(Lcom/google/android/gms/measurement/internal/G;)V

    const-wide/16 v9, 0x0

    :cond_16
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/F;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Lcom/google/android/gms/measurement/internal/G;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, [Landroid/os/Parcelable;

    if-eqz v12, :cond_16

    check-cast v11, [Landroid/os/Parcelable;

    array-length v11, v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    goto :goto_d

    :cond_17
    :goto_e
    const-wide/16 v12, 0x1

    add-long v18, v9, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->h()J

    move-result-wide v9

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v11, v15

    move-object/from16 v34, v6

    const-wide/16 v5, 0x0

    move-wide/from16 v12, v18

    move-object/from16 v35, v14

    move/from16 v14, v24

    move-object/from16 v36, v15

    move/from16 v15, v22

    move/from16 v16, v32

    move/from16 v17, v3

    move/from16 v18, v33

    move/from16 v19, v20

    move/from16 v20, v23

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/gms/measurement/internal/w;->O0(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v8

    iget-wide v9, v8, Lcom/google/android/gms/measurement/internal/s;->b:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->p()J

    move-result-wide v11

    sub-long/2addr v9, v11

    cmp-long v11, v9, v5

    const-wide/16 v12, 0x3e8

    if-lez v11, :cond_19

    rem-long/2addr v9, v12

    const-wide/16 v14, 0x1

    cmp-long v2, v9, v14

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static/range {v36 .. v36}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/s;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->u0()V

    goto/16 :goto_13

    :cond_19
    const-wide/16 v14, 0x1

    if-eqz v22, :cond_1b

    iget-wide v9, v8, Lcom/google/android/gms/measurement/internal/s;->a:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    sget-object v11, Lcom/google/android/gms/measurement/internal/e2;->n:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v14, v11

    sub-long/2addr v9, v14

    cmp-long v11, v9, v5

    if-lez v11, :cond_1b

    rem-long/2addr v9, v12

    const-wide/16 v2, 0x1

    cmp-long v2, v9, v2

    if-nez v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Data loss. Too many public events logged. appId, count"

    invoke-static/range {v36 .. v36}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/s;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    const-string v12, "_ev"

    move-object/from16 v10, v34

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v11, 0x10

    move-object/from16 v10, v36

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/m7;->B(Lcom/google/android/gms/measurement/internal/l7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->u0()V

    goto/16 :goto_13

    :cond_1b
    move-object/from16 v10, v34

    const v9, 0xf4240

    if-eqz v3, :cond_1d

    iget-wide v11, v8, Lcom/google/android/gms/measurement/internal/s;->d:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/e2;->m:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v3, v13, v14}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v13, 0x0

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v13, v3

    sub-long/2addr v11, v13

    cmp-long v3, v11, v5

    if-lez v3, :cond_1d

    const-wide/16 v13, 0x1

    cmp-long v2, v11, v13

    if-nez v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static/range {v36 .. v36}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v8, Lcom/google/android/gms/measurement/internal/s;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->u0()V

    goto/16 :goto_13

    :cond_1d
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/measurement/internal/G;->n0()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    const-string v11, "_o"

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/I;->d:Ljava/lang/String;

    invoke-virtual {v8, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/m7;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/o7;->C:Ljava/lang/String;

    move-object/from16 v15, v36

    invoke-virtual {v8, v15, v11}, Lcom/google/android/gms/measurement/internal/m7;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v13, "_r"

    if-eqz v8, :cond_1e

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    const-string v11, "_dbg"

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v3, v11, v14}, Lcom/google/android/gms/measurement/internal/m7;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    invoke-virtual {v8, v3, v13, v14}, Lcom/google/android/gms/measurement/internal/m7;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1e
    const-wide/16 v16, 0x1

    :goto_f
    const-string v8, "_s"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-virtual {v8, v11, v7}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v8

    if-eqz v8, :cond_1f

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    instance-of v11, v8, Ljava/lang/Long;

    if-eqz v11, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v11

    invoke-virtual {v11, v3, v7, v8}, Lcom/google/android/gms/measurement/internal/m7;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/e2;->Y0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v8}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "am"

    invoke-static {v12, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "_ai"

    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_20

    :try_start_6
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_1
    :cond_20
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v4

    invoke-static {v15}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/N6;->j()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    sget-object v11, Lcom/google/android/gms/measurement/internal/e2;->q:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v8, v15, v11}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    filled-new-array {v15, v8}, [Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v14, v30

    :try_start_9
    invoke-virtual {v7, v14, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    int-to-long v7, v4

    goto :goto_12

    :catch_2
    move-exception v0

    :goto_10
    move-object v7, v0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v14, v30

    goto :goto_10

    :goto_11
    :try_start_a
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v8, "Error deleting over the limit events. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v8, v9, v7}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v7, v5

    :goto_12
    cmp-long v4, v7, v5

    if-lez v4, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v9, v11, v7}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    new-instance v4, Lcom/google/android/gms/measurement/internal/D;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/I;->d:Ljava/lang/String;

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    iget-wide v9, v10, Lcom/google/android/gms/measurement/internal/I;->e:J

    const-wide/16 v18, 0x0

    move-object v8, v4

    move-wide/from16 v20, v9

    move-object v9, v7

    move-object v10, v11

    move-object v11, v15

    move-object/from16 v40, v13

    move-object/from16 v37, v14

    move-wide/from16 v13, v20

    move-object v5, v15

    move-wide/from16 v15, v18

    move-object/from16 v17, v3

    invoke-direct/range {v8 .. v17}, Lcom/google/android/gms/measurement/internal/D;-><init>(Lcom/google/android/gms/measurement/internal/p3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/D;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v10}, Lcom/google/android/gms/measurement/internal/w;->x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v3

    if-nez v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/w;->G(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/m;->z(Ljava/lang/String;)I

    move-result v3

    int-to-long v11, v3

    cmp-long v3, v8, v11

    if-ltz v3, :cond_22

    if-eqz v22, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p3;->D()Lcom/google/android/gms/measurement/internal/u2;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/u2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/m;->z(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v10, v5

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/m7;->B(Lcom/google/android/gms/measurement/internal/l7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    return-void

    :cond_22
    :try_start_b
    new-instance v3, Lcom/google/android/gms/measurement/internal/E;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/D;->d:J

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v8, v3

    move-object v9, v5

    move-wide/from16 v17, v6

    invoke-direct/range {v8 .. v24}, Lcom/google/android/gms/measurement/internal/E;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_14

    :cond_23
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/E;->f:J

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/D;->a(Lcom/google/android/gms/measurement/internal/p3;J)Lcom/google/android/gms/measurement/internal/D;

    move-result-object v4

    iget-wide v5, v4, Lcom/google/android/gms/measurement/internal/D;->d:J

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/E;->a(J)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v3

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/w;->y0(Lcom/google/android/gms/measurement/internal/E;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {v4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/D;->a:Ljava/lang/String;

    invoke-static {v3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, LG0/A;->a(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/n3;->j0()Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/m3;->T(I)Lcom/google/android/gms/internal/measurement/m3;

    const-string v7, "android"

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/m3;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_24
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/o7;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_25
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/o7;->d:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_26

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->F(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_26
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/o7;->v:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_27

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->H0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_27
    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/o7;->k:J

    const-wide/32 v9, -0x80000000

    cmp-long v9, v7, v9

    if-eqz v9, :cond_28

    long-to-int v7, v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->w0(I)Lcom/google/android/gms/internal/measurement/m3;

    :cond_28
    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/o7;->f:J

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/m3;->G(J)Lcom/google/android/gms/internal/measurement/m3;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->q0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_29
    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    const/16 v9, 0x64

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/Z3;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/Z3;->s(Lcom/google/android/gms/measurement/internal/Z3;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/Z3;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/m3;->G0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/measurement/internal/e2;->Q0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v8, v5, v10}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/m7;->L(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget v5, v2, Lcom/google/android/gms/measurement/internal/o7;->A:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/m3;->d0(I)Lcom/google/android/gms/internal/measurement/m3;

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/o7;->B:J

    sget-object v5, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v5

    const-wide/16 v7, 0x20

    if-nez v5, :cond_2a

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_2a

    const-wide/16 v12, -0x2

    and-long/2addr v10, v12

    or-long/2addr v10, v7

    :cond_2a
    const-wide/16 v12, 0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_2b

    move v5, v6

    goto :goto_15

    :cond_2b
    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/m3;->M0(Z)Lcom/google/android/gms/internal/measurement/m3;

    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-nez v5, :cond_2c

    goto/16 :goto_1d

    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/N2;->L()Lcom/google/android/gms/internal/measurement/M2;

    move-result-object v5

    and-long v16, v10, v12

    cmp-long v16, v16, v14

    if-eqz v16, :cond_2d

    goto :goto_16

    :cond_2d
    const/4 v6, 0x0

    :goto_16
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/M2;->t(Z)Lcom/google/android/gms/internal/measurement/M2;

    const-wide/16 v16, 0x2

    and-long v16, v10, v16

    cmp-long v6, v16, v14

    if-eqz v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_17

    :cond_2e
    const/4 v6, 0x0

    :goto_17
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/M2;->u(Z)Lcom/google/android/gms/internal/measurement/M2;

    const-wide/16 v16, 0x4

    and-long v16, v10, v16

    cmp-long v6, v16, v14

    if-eqz v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_18

    :cond_2f
    const/4 v6, 0x0

    :goto_18
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/M2;->v(Z)Lcom/google/android/gms/internal/measurement/M2;

    const-wide/16 v16, 0x8

    and-long v16, v10, v16

    cmp-long v6, v16, v14

    if-eqz v6, :cond_30

    const/4 v6, 0x1

    goto :goto_19

    :cond_30
    const/4 v6, 0x0

    :goto_19
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/M2;->w(Z)Lcom/google/android/gms/internal/measurement/M2;

    const-wide/16 v16, 0x10

    and-long v16, v10, v16

    cmp-long v6, v16, v14

    if-eqz v6, :cond_31

    const/4 v6, 0x1

    goto :goto_1a

    :cond_31
    const/4 v6, 0x0

    :goto_1a
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/M2;->x(Z)Lcom/google/android/gms/internal/measurement/M2;

    and-long v6, v10, v7

    cmp-long v6, v6, v14

    if-eqz v6, :cond_32

    const/4 v6, 0x1

    goto :goto_1b

    :cond_32
    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/M2;->y(Z)Lcom/google/android/gms/internal/measurement/M2;

    const-wide/16 v6, 0x40

    and-long/2addr v6, v10

    cmp-long v6, v6, v14

    if-eqz v6, :cond_33

    const/4 v6, 0x1

    goto :goto_1c

    :cond_33
    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/M2;->z(Z)Lcom/google/android/gms/internal/measurement/M2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/N2;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/m3;->e0(Lcom/google/android/gms/internal/measurement/N2;)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_1d

    :cond_34
    const-wide/16 v12, 0x1

    :goto_1d
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/o7;->g:J

    const-wide/16 v7, 0x0

    cmp-long v10, v5, v7

    if-eqz v10, :cond_35

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/m3;->R(J)Lcom/google/android/gms/internal/measurement/m3;

    :cond_35
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/o7;->r:J

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/m3;->E0(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v5

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.google.android.gms.measurement"

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/l4;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/b2;->b:Lcom/google/android/gms/measurement/internal/b2;

    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/a4;->c(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/a4;

    move-result-object v6

    if-nez v6, :cond_36

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    goto :goto_1e

    :cond_36
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/a4;->d()Ljava/util/Map;

    move-result-object v6

    :goto_1e
    if-eqz v6, :cond_37

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_38

    :cond_37
    :goto_1f
    const/4 v7, 0x0

    goto/16 :goto_22

    :cond_38
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/google/android/gms/measurement/internal/e2;->g0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_39
    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v14, "measurement.id."

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v11, :cond_39

    :try_start_c
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_39

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v8, :cond_39

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v10

    const-string v11, "Too many experiment IDs. Number of IDs"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_21

    :catch_4
    move-exception v0

    move-object v10, v0

    :try_start_d
    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v11

    const-string v14, "Experiment ID NumberFormatException"

    invoke-virtual {v11, v14, v10}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_20

    :cond_3a
    :goto_21
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3b

    goto/16 :goto_1f

    :cond_3b
    :goto_22
    if-eqz v7, :cond_3c

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->D0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->c1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/m3;->l0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_3d
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/google/android/gms/measurement/internal/Z3;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/Z3;->s(Lcom/google/android/gms/measurement/internal/Z3;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v8

    if-eqz v8, :cond_41

    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/o7;->o:Z

    if-eqz v8, :cond_41

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/measurement/internal/h6;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_41

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/m3;->J(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_3e

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/m3;->M(Z)Lcom/google/android/gms/internal/measurement/m3;

    :cond_3e
    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/D;->b:Ljava/lang/String;

    move-object/from16 v10, v29

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const-string v9, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v8

    if-eqz v8, :cond_41

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/I2;->d0()Z

    move-result v9

    if-eqz v9, :cond_41

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v5, v11, v9, v9}, Lcom/google/android/gms/measurement/internal/c7;->w(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/I2;->f0()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_3f

    const-string v14, "_pfo"

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v11, v6

    move-object v15, v7

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-virtual {v9, v14, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_23

    :cond_3f
    move-object v11, v6

    move-object v15, v7

    :goto_23
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/I2;->h0()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_40

    const-string v7, "_uwa"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v7, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_40
    move-object/from16 v8, v40

    const-wide/16 v6, 0x1

    invoke-virtual {v9, v8, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c7;->J:Lcom/google/android/gms/measurement/internal/l7;

    invoke-interface {v6, v5, v10, v9}, Lcom/google/android/gms/measurement/internal/l7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_24

    :cond_41
    move-object v11, v6

    move-object v15, v7

    move-object/from16 v8, v40

    :goto_24
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->K()Lcom/google/android/gms/measurement/internal/C;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/T3;->l()V

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->K()Lcom/google/android/gms/measurement/internal/C;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/T3;->l()V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->K()Lcom/google/android/gms/measurement/internal/C;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/C;->o()J

    move-result-wide v9

    long-to-int v7, v9

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->B(I)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->K()Lcom/google/android/gms/measurement/internal/C;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/C;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/o7;->x:J

    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/m3;->L0(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->g()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_42

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/m3;->z0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v7

    if-nez v7, :cond_44

    new-instance v7, Lcom/google/android/gms/measurement/internal/I2;

    invoke-direct {v7, v6, v5}, Lcom/google/android/gms/measurement/internal/I2;-><init>(Lcom/google/android/gms/measurement/internal/p3;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/measurement/internal/c7;->p(Lcom/google/android/gms/measurement/internal/Z3;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/I2;->q0(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/o7;->l:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/I2;->y0(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/I2;->s0(Ljava/lang/String;)V

    move-object v6, v15

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v6

    if-eqz v6, :cond_43

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/o7;->o:Z

    invoke-virtual {v6, v5, v9}, Lcom/google/android/gms/measurement/internal/h6;->o(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/I2;->w0(Ljava/lang/String;)V

    :cond_43
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->f(J)V

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->A0(J)V

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->C0(J)V

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/o7;->d:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/I2;->E0(Ljava/lang/String;)V

    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/o7;->k:J

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->G0(J)V

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/o7;->e:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/I2;->I0(Ljava/lang/String;)V

    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/o7;->f:J

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->K0(J)V

    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/o7;->g:J

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->a(J)V

    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/I2;->e(Z)V

    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/o7;->r:J

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/I2;->c(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v9}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    goto :goto_25

    :cond_44
    const/4 v9, 0x0

    :goto_25
    sget-object v6, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_45

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/m3;->P(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_45
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/I2;->x0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/I2;->x0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/m3;->u0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/w;->E0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move v11, v9

    :goto_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v11, v6, :cond_48

    invoke-static {}, Lcom/google/android/gms/internal/measurement/E3;->P()Lcom/google/android/gms/internal/measurement/D3;

    move-result-object v6

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/D3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/D3;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/k7;

    iget-wide v12, v10, Lcom/google/android/gms/measurement/internal/k7;->d:J

    invoke-virtual {v6, v12, v13}, Lcom/google/android/gms/internal/measurement/D3;->t(J)Lcom/google/android/gms/internal/measurement/D3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v10, v6, v12}, Lcom/google/android/gms/measurement/internal/h7;->G(Lcom/google/android/gms/internal/measurement/D3;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/m3;->b1(Lcom/google/android/gms/internal/measurement/D3;)Lcom/google/android/gms/internal/measurement/m3;

    const-string v6, "_sid"

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/I2;->Z()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-eqz v6, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v6

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/o7;->v:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/h7;->U(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/I2;->Z()J

    move-result-wide v14

    cmp-long v6, v12, v14

    if-eqz v6, :cond_47

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m3;->I0()Lcom/google/android/gms/internal/measurement/m3;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_47
    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    :cond_48
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/h7;->T([B)J

    move-result-wide v10

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, v28

    invoke-virtual {v7, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v14, v27

    invoke-virtual {v7, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "metadata"

    invoke-virtual {v7, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v12, "raw_events_metadata"

    const/4 v15, 0x4

    const/4 v9, 0x0

    invoke-virtual {v6, v12, v9, v7, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/D;->f:Lcom/google/android/gms/measurement/internal/G;

    new-instance v5, Lcom/google/android/gms/measurement/internal/F;

    invoke-direct {v5, v3}, Lcom/google/android/gms/measurement/internal/F;-><init>(Lcom/google/android/gms/measurement/internal/G;)V

    :cond_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/F;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    :goto_27
    const/16 v31, 0x1

    goto :goto_28

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v3

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/D;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/D;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/c3;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->h()J

    move-result-wide v39

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v41, v5

    invoke-virtual/range {v38 .. v48}, Lcom/google/android/gms/measurement/internal/w;->N0(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v6

    if-eqz v3, :cond_4b

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/s;->e:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    sget-object v8, Lcom/google/android/gms/measurement/internal/e2;->p:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v3, v5, v8}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-gez v3, :cond_4b

    goto :goto_27

    :cond_4b
    const/16 v31, 0x0

    :goto_28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {v4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/D;->a:Ljava/lang/String;

    invoke-static {v3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/h7;->J(Lcom/google/android/gms/measurement/internal/D;)Lcom/google/android/gms/internal/measurement/b3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "name"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/D;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "timestamp"

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/D;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "data"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "realtime"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object/from16 v7, v37

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_4c

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "Failed to insert raw event (got -1). appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_2b

    :catch_5
    move-exception v0

    move-object v3, v0

    goto :goto_29

    :cond_4c
    const-wide/16 v5, 0x0

    :try_start_12
    iput-wide v5, v1, Lcom/google/android/gms/measurement/internal/c7;->o:J

    goto :goto_2b

    :goto_29
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v5, "Error storing raw event. appId"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/D;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_2b

    :catch_6
    move-exception v0

    move-object v2, v0

    goto :goto_2a

    :catch_7
    move-exception v0

    move-object v4, v0

    :try_start_13
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v6, "Error storing raw event metadata. appId"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->E()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v6, v5, v4}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v4
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :goto_2a
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v25

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw v2
.end method

.method public final m0(Lcom/google/android/gms/measurement/internal/o7;J)V
    .locals 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "app_id=?"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->r0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/m7;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {v3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "events"

    invoke-virtual {v6, v8, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-string v9, "user_attributes"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "conditional_properties"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "apps"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "raw_events"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "raw_events_metadata"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "event_filters"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "property_filters"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "audience_filter_values"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "consent_settings"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "default_event_params"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    const-string v9, "trigger_uris"

    invoke-virtual {v6, v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/google/android/gms/internal/measurement/V6;->a()Z

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/e2;->j1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v10, v4, v11}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "no_data_mode_events"

    invoke-virtual {v6, v10, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-lez v8, :cond_1

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v6, "Deleted application data. app, records"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v3, v7}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v3, v4

    goto :goto_3

    :goto_2
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "Error deleting application data. appId, error"

    invoke-virtual {v5, v6, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v5

    const-wide/32 v7, -0x80000000

    cmp-long v0, v5, v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v9

    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/o7;->k:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_4

    :cond_3
    move v0, v6

    :goto_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v10

    cmp-long v3, v10, v7

    if-nez v3, :cond_4

    if-eqz v9, :cond_4

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/o7;->d:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    move v5, v6

    :goto_5
    or-int/2addr v0, v5

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    invoke-virtual {v0, v3, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/I;

    new-instance v12, Lcom/google/android/gms/measurement/internal/G;

    invoke-direct {v12, v0}, Lcom/google/android/gms/measurement/internal/G;-><init>(Landroid/os/Bundle;)V

    const-string v13, "auto"

    const-string v11, "_au"

    move-object v10, v3

    move-wide/from16 v14, p2

    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/I;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/G;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->e1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/c7;->j(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void

    :cond_5
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/c7;->k(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    :cond_6
    return-void
.end method

.method public final n(Lcom/google/android/gms/measurement/internal/I2;Lcom/google/android/gms/internal/measurement/m3;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o;->d(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/Z3;->p()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    sget-object v6, Lcom/google/android/gms/measurement/internal/n;->zzj:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/Z3;->b()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/o;->b(Lcom/google/android/gms/measurement/internal/Y3;I)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    sget-object v6, Lcom/google/android/gms/measurement/internal/n;->zzi:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/Z3;->q()Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    sget-object v1, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    sget-object v2, Lcom/google/android/gms/measurement/internal/n;->zzj:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/Z3;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/o;->b(Lcom/google/android/gms/measurement/internal/Y3;I)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    sget-object v2, Lcom/google/android/gms/measurement/internal/n;->zzi:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c7;->R0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/c7;->T0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/A;Lcom/google/android/gms/measurement/internal/Z3;Lcom/google/android/gms/measurement/internal/o;)Lcom/google/android/gms/measurement/internal/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/A;->j()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/m3;->X(Z)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/A;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/A;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/m3;->Z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->W0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_npa"

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/E3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_e

    sget-object v1, Lcom/google/android/gms/measurement/internal/Y3;->zzd:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/o;->a(Lcom/google/android/gms/measurement/internal/Y3;)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/n;->zza:Lcom/google/android/gms/measurement/internal/n;

    if-eq v4, v6, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/k7;->b:Ljava/lang/String;

    const-string v3, "tcf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v2, Lcom/google/android/gms/measurement/internal/n;->zzh:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    goto/16 :goto_4

    :cond_8
    const-string v3, "app"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/google/android/gms/measurement/internal/n;->zzf:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    goto/16 :goto_4

    :cond_9
    sget-object v2, Lcom/google/android/gms/measurement/internal/n;->zzd:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->R()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/E3;->K()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_d

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/E3;->K()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    sget-object v2, Lcom/google/android/gms/measurement/internal/n;->zzd:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    goto :goto_4

    :cond_d
    :goto_3
    sget-object v2, Lcom/google/android/gms/measurement/internal/n;->zzf:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o;->c(Lcom/google/android/gms/measurement/internal/Y3;Lcom/google/android/gms/measurement/internal/n;)V

    goto :goto_4

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/c7;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o;)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/E3;->P()Lcom/google/android/gms/internal/measurement/D3;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/D3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/D3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v3

    invoke-interface {v3}, LT0/g;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/D3;->t(J)Lcom/google/android/gms/internal/measurement/D3;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/D3;->x(J)Lcom/google/android/gms/internal/measurement/D3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/E3;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/m3;->a1(Lcom/google/android/gms/internal/measurement/E3;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Setting user property"

    const-string v4, "non_personalized_ads(_npa)"

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/m3;->V(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/c3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->S(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->N0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a3;->t()Ljava/util/List;

    move-result-object v3

    move v4, v1

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_14

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f3;->F()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_tcfd"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/f3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f3;->H()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v6, 0x4

    if-gt p1, v6, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    move v3, v5

    :goto_7
    const/16 v8, 0x40

    const-string v9, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    if-ge v3, v8, :cond_11

    aget-char v8, p1, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_10

    move v1, v3

    goto :goto_8

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    :goto_8
    or-int/2addr v1, v5

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p1, v6

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    :cond_12
    :goto_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/e3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/measurement/a3;->x(ILcom/google/android/gms/internal/measurement/e3;)Lcom/google/android/gms/internal/measurement/a3;

    goto :goto_a

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_14
    :goto_a
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/measurement/m3;->R0(ILcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;

    return-void

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_16
    return-void
.end method

.method public final n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/o7;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->D:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/measurement/internal/Z6;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/measurement/internal/Z6;-><init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;[B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/o7;->t:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/Z3;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/Z3;->s(Lcom/google/android/gms/measurement/internal/Z3;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/o7;->o:Z

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/measurement/internal/h6;->o(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    new-instance v5, Lcom/google/android/gms/measurement/internal/I2;

    invoke-direct {v5, v0, v2}, Lcom/google/android/gms/measurement/internal/I2;-><init>(Lcom/google/android/gms/measurement/internal/p3;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c7;->p(Lcom/google/android/gms/measurement/internal/Z3;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/I2;->q0(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/I2;->w0(Ljava/lang/String;)V

    :cond_3
    move-object v0, v5

    :cond_4
    :goto_1
    move v11, v10

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I2;->v0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I2;->v0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/I2;->w0(Ljava/lang/String;)V

    iget-boolean v4, p1, Lcom/google/android/gms/measurement/internal/o7;->o:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/measurement/internal/h6;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v5, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    sget-object v3, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c7;->p(Lcom/google/android/gms/measurement/internal/Z3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->q0(Ljava/lang/String;)V

    move v11, v10

    goto :goto_2

    :cond_6
    move v11, v9

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    const-string v3, "_id"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    const-string v3, "_lair"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->D0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/k7;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v5

    new-instance v12, Lcom/google/android/gms/measurement/internal/k7;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    const-string v4, "_lair"

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/w;->C0(Lcom/google/android/gms/measurement/internal/k7;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c7;->p(Lcom/google/android/gms/measurement/internal/Z3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->q0(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c7;->p(Lcom/google/android/gms/measurement/internal/Z3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->q0(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->s0(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->y0(Ljava/lang/String;)V

    :cond_a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/o7;->f:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/I2;->K0(J)V

    :cond_b
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->E0(Ljava/lang/String;)V

    :cond_c
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/o7;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/I2;->G0(J)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->e:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->I0(Ljava/lang/String;)V

    :cond_d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/o7;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/I2;->a(J)V

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/o7;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->e(Z)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->O(Ljava/lang/String;)V

    :cond_e
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/o7;->o:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->Q(Z)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->q:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->S(Ljava/lang/Boolean;)V

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/o7;->r:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/I2;->c(J)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->u0(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Y6;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->M0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->U(Ljava/util/List;)V

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/Y6;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->L0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/I2;->U(Ljava/util/List;)V

    :cond_10
    :goto_4
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/o7;->w:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->W(Z)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->m0(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->Q0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p1, Lcom/google/android/gms/measurement/internal/o7;->A:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->c0(I)V

    :cond_11
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/o7;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/I2;->Y(J)V

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/o7;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/I2;->H(Ljava/lang/String;)V

    iget p1, p1, Lcom/google/android/gms/measurement/internal/o7;->F:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/I2;->L(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I2;->A()Z

    move-result p1

    if-nez p1, :cond_12

    if-eqz v11, :cond_13

    goto :goto_5

    :cond_12
    move v9, v11

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p1, v0, v9, v10}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    :cond_13
    return-object v0
.end method

.method public final o(Lcom/google/android/gms/measurement/internal/I2;Lcom/google/android/gms/internal/measurement/m3;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/J2;->e0()Lcom/google/android/gms/internal/measurement/F2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->K()[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/F2;
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzmq; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to parse locally stored ad campaign info. appId"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->N0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_cmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "gclid"

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/h7;->v(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "gbraid"

    invoke-static {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/h7;->v(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "gad_source"

    invoke-static {v2, v7, v5}, Lcom/google/android/gms/measurement/internal/h7;->v(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/e2;->i1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/h7;->s(Lcom/google/android/gms/internal/measurement/b3;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v9, "click_timestamp"

    invoke-static {v2, v9, v3}, Lcom/google/android/gms/measurement/internal/h7;->v(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v3, v9, v7

    if-gtz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v9

    :cond_2
    const-string v3, "_cis"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/h7;->u(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v7, "referrer API v2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->H()J

    move-result-wide v7

    cmp-long v3, v9, v7

    if-lez v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->C()Lcom/google/android/gms/internal/measurement/F2;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/F2;->B(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/F2;

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->E()Lcom/google/android/gms/internal/measurement/F2;

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/F2;->D(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/F2;

    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->G()Lcom/google/android/gms/internal/measurement/F2;

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/F2;->F(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/F2;

    :goto_4
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/F2;->I(J)Lcom/google/android/gms/internal/measurement/F2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->L()Lcom/google/android/gms/internal/measurement/F2;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/c7;->I(Lcom/google/android/gms/internal/measurement/b3;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/F2;->M(Ljava/util/Map;)Lcom/google/android/gms/internal/measurement/F2;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->z()J

    move-result-wide v7

    cmp-long v3, v9, v7

    if-lez v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->u()Lcom/google/android/gms/internal/measurement/F2;

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/F2;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/F2;

    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->w()Lcom/google/android/gms/internal/measurement/F2;

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/F2;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/F2;

    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->y()Lcom/google/android/gms/internal/measurement/F2;

    goto :goto_7

    :cond_9
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/F2;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/F2;

    :goto_7
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/F2;->A(J)Lcom/google/android/gms/internal/measurement/F2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/F2;->J()Lcom/google/android/gms/internal/measurement/F2;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/c7;->I(Lcom/google/android/gms/internal/measurement/b3;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/F2;->K(Ljava/util/Map;)Lcom/google/android/gms/internal/measurement/F2;

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/J2;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/J2;->f0()Lcom/google/android/gms/internal/measurement/J2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/q5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/J2;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/m3;->i0(Lcom/google/android/gms/internal/measurement/J2;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/J2;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/I2;->J([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->A()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->h1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_lgclid"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/w;->B0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final o0(Lcom/google/android/gms/measurement/internal/o7;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/U6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/U6;-><init>(Lcom/google/android/gms/measurement/internal/c7;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->r(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/Z3;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m7;->q0()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%032x"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final p0(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)Ljava/util/List;
    .locals 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->Q0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz v0, :cond_3

    const-string v4, "uriSources"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const-string v5, "uriTimestamps"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    array-length v0, v5

    array-length v6, v4

    if-eq v0, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_0
    array-length v0, v4

    if-ge v6, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    aget v0, v4, v6

    aget-wide v8, v5, v6

    invoke-static {v3}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const-string v10, " trigger URIs. appId, source, timestamp"

    const-string v11, "Pruned "

    :try_start_0
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "trigger_uris"

    const-string v14, "app_id=? and source=? and timestamp_millis<=?"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v15, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v13, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x2e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v2, v3, v0, v8}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Error pruning trigger URIs. appId"

    invoke-virtual {v2, v8, v7, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Uri sources and timestamps do not match"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "trigger_uris"

    const-string v6, "trigger_uri"

    const-string v7, "timestamp_millis"

    const-string v8, "source"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_id=?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v11, "rowid"

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :cond_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, ""

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/C6;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/C6;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_4

    goto :goto_5

    :goto_4
    :try_start_2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Error querying trigger uris. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    :goto_6
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, LG0/A;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->y:Ljava/util/List;

    return-void
.end method

.method public final q0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/g;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/w;->n(J)Lcom/google/android/gms/measurement/internal/f7;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "[sgtm] Queued batch doesn\'t exist. appId, rowId"

    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f7;->e()Ljava/lang/String;

    move-result-object v0

    iget v3, p2, Lcom/google/android/gms/measurement/internal/g;->c:I

    sget-object v4, Lcom/google/android/gms/measurement/internal/j5;->zzb:Lcom/google/android/gms/measurement/internal/j5;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/j5;->N1()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/c7;->E:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/w;->q(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "[sgtm] queued batch deleted after successful client upload. appId, rowId"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v0, p2, Lcom/google/android/gms/measurement/internal/g;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/google/android/gms/measurement/internal/k5;->zzb:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/k5;->N1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "upload_type"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v6

    invoke-interface {v6}, LT0/g;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "creation_timestamp"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "upload_queue"

    const-string v8, "rowid=? AND app_id=? AND upload_type=?"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/k5;->zze:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/k5;->N1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v9, p1, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Google Signal pending batch not updated. appId, rowId"

    invoke-virtual {v4, v5, p1, v3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/g;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "[sgtm] queued Google Signal batch updated. appId, signalRowId"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c7;->u(Ljava/lang/String;)V

    return-void

    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Failed to update google Signal pending batch. appid, rowId"

    invoke-virtual {v2, v1, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2

    :cond_3
    return-void

    :cond_4
    iget v1, p2, Lcom/google/android/gms/measurement/internal/g;->c:I

    sget-object v2, Lcom/google/android/gms/measurement/internal/j5;->zzd:Lcom/google/android/gms/measurement/internal/j5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j5;->N1()I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->E:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/a7;

    if-nez v2, :cond_5

    new-instance v2, Lcom/google/android/gms/measurement/internal/a7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/a7;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/a7;->a()V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/a7;->c()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds"

    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/g;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/w;->w(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "[sgtm] increased batch retry count after failed client upload. appId, rowId"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->v:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f6;->x()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_0
    move-exception v1

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c7;->o:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    goto/16 :goto_9

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->y:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->a()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/e2;->j0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->n()J

    move-result-wide v8

    sub-long v8, v1, v8

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/c7;->L(Ljava/lang/String;J)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K()V

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/h6;->h:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_b

    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/c7;->A:J

    cmp-long v4, v8, v5

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "select rowid from raw_events order by rowid desc limit 1;"

    invoke-virtual {v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v8, :cond_7

    :goto_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_7
    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v8

    :try_start_4
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v9, "Error querying raw events"

    invoke-virtual {v4, v9, v8}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    :try_start_5
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/c7;->A:J

    goto :goto_4

    :goto_3
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :cond_a
    :goto_4
    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->s(Ljava/lang/String;J)V

    goto/16 :goto_9

    :cond_b
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/c7;->A:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->n()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/N6;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_5
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catchall_2
    move-exception v2

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_7

    :cond_c
    :try_start_9
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :goto_6
    move-object v7, v1

    goto :goto_a

    :catchall_3
    move-exception v1

    move-object v2, v1

    goto :goto_a

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_7
    :try_start_a
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    :goto_8
    :try_start_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c7;->A(Lcom/google/android/gms/measurement/internal/I2;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_9
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->v:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    return-void

    :goto_a
    if-eqz v7, :cond_f

    :try_start_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_b
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->v:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    throw v1
.end method

.method public final r0(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    return-void
.end method

.method public final s(Ljava/lang/String;J)V
    .locals 31
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v1, p2

    const-string v3, "data"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->h:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, v9, v4}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->i:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v4, v9, v5}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    const/4 v7, 0x1

    if-lez v0, :cond_0

    move v10, v7

    goto :goto_0

    :cond_0
    move v10, v5

    :goto_0
    invoke-static {v10}, LG0/A;->a(Z)V

    if-lez v4, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    invoke-static {v10}, LG0/A;->a(Z)V

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "queue"

    const-string v10, "rowid"

    const-string v11, "retry_count"

    filled-new-array {v10, v3, v11}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "app_id=?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v18

    const-string v21, "rowid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v11, v0

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_3
    :try_start_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v14, v5

    :goto_3
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v13}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_4
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_b

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    array-length v1, v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/2addr v1, v14

    if-le v1, v4, :cond_4

    goto/16 :goto_9

    :cond_4
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/n3;->j0()Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/m3;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->K0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->K0()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->R0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->R0()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->T0()Z

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->T0()Z

    move-result v12

    if-ne v7, v12, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->V0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->V0()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->m2()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v12, "_npa"

    if-eqz v7, :cond_6

    :try_start_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/E3;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/E3;->K()J

    move-result-wide v21

    goto :goto_5

    :cond_6
    const-wide/16 v21, -0x1

    :goto_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/n3;->m2()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/E3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/E3;->G()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/E3;->K()J

    move-result-wide v12

    goto :goto_6

    :cond_8
    const-wide/16 v12, -0x1

    :goto_6
    cmp-long v2, v21, v12

    if-nez v2, :cond_d

    :cond_9
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/m3;->B0(I)Lcom/google/android/gms/internal/measurement/m3;

    :cond_a
    array-length v0, v0

    add-int/2addr v14, v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n3;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catch_1
    move-exception v0

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to merge queued bundle. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v12, v5, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :goto_7
    :try_start_a
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to ungzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_3
    move-exception v0

    :try_start_b
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to unzip queued bundle. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v0, :cond_d

    if-le v14, v4, :cond_c

    goto :goto_9

    :cond_c
    move-wide/from16 v1, p2

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :goto_a
    move-object v13, v10

    goto/16 :goto_3d

    :catchall_1
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_c

    :goto_b
    const/4 v13, 0x0

    goto/16 :goto_3d

    :goto_c
    const/4 v10, 0x0

    :goto_d
    :try_start_c
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Error querying bundles. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v10, :cond_2

    goto/16 :goto_2

    :goto_e
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_3c

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/V6;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/e2;->j1:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v0

    const-string v4, "_f"

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/android/gms/internal/measurement/V6;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v0

    const-string v1, "no_data_mode_events"

    if-nez v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/c3;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->k1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/measurement/internal/w;->t(J)V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n3;->g2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v7

    const-string v10, "_v"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_11

    :catch_5
    const-wide/16 v11, -0x1

    goto/16 :goto_13

    :cond_11
    :goto_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    const-string v7, "_dac"

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v0, v7, v10}, Lcom/google/android/gms/measurement/internal/h7;->o(Lcom/google/android/gms/internal/measurement/a3;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v11

    const-string v12, "Caching events in NO_DATA mode"

    invoke-virtual {v11, v12, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "app_id"

    invoke-virtual {v11, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "name"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v12, "timestamp_millis"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b3;->J()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    :try_start_e
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_7

    const-wide/16 v11, -0x1

    cmp-long v0, v13, v11

    if-nez v0, :cond_10

    :try_start_f
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v10, "Failed to insert NO_DATA mode event (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v10, v13}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_10

    :catch_6
    move-exception v0

    goto :goto_12

    :catch_7
    move-exception v0

    const-wide/16 v11, -0x1

    :goto_12
    :try_start_10
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v10, "Error storing NO_DATA mode event. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v10, v13, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_10

    :catch_8
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v6, "Failed handling NO_DATA mode bundles. appId"

    invoke-virtual {v0, v6, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    :cond_14
    move-object/from16 v21, v4

    goto/16 :goto_22

    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-static/range {p1 .. p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, " NO_DATA mode events. appId"

    const-string v10, "Pruned "

    :try_start_11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w;->w0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->a()J

    move-result-wide v13

    const-string v22, "no_data_mode_events"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v23

    const-string v24, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)"

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v9, v0}, [Ljava/lang/String;

    move-result-object v25

    const-string v28, "rowid"

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v29}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v0, :cond_17

    :goto_14
    const/4 v15, 0x0

    :try_start_13
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b3;->O()Lcom/google/android/gms/internal/measurement/a3;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/h7;->W(Lcom/google/android/gms/internal/measurement/V5;[B)Lcom/google/android/gms/internal/measurement/V5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b3;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Lcom/google/android/gms/internal/measurement/zzmq; {:try_start_13 .. :try_end_13} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-object/from16 v21, v4

    move-object/from16 v16, v6

    goto :goto_15

    :catchall_2
    move-exception v0

    goto/16 :goto_17

    :catch_9
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_1a

    :catch_a
    move-exception v0

    :try_start_14
    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v15

    move-object/from16 v16, v6

    const-string v6, "Failed to parse stored NO_DATA mode event, appId"
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-object/from16 v21, v4

    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_15
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    const-string v0, "app_id=? AND timestamp_millis <= CAST(? AS INTEGER)"

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v9, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_16

    :catchall_3
    move-exception v0

    goto :goto_18

    :catch_b
    move-exception v0

    goto :goto_19

    :catch_c
    move-exception v0

    goto :goto_1a

    :cond_16
    move-object/from16 v6, v16

    move-object/from16 v4, v21

    goto/16 :goto_14

    :cond_17
    move-object/from16 v21, v4

    move-object/from16 v16, v6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_16
    move-object/from16 v6, v16

    goto :goto_1b

    :goto_17
    move-object v13, v3

    goto/16 :goto_21

    :catch_d
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_19

    :goto_18
    const/4 v13, 0x0

    goto/16 :goto_21

    :goto_19
    const/4 v3, 0x0

    :goto_1a
    :try_start_17
    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v4, "Error flushing NO_DATA mode events. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eqz v3, :cond_18

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_18
    :goto_1b
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/m3;

    if-eqz v1, :cond_19

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m3;->N0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m3;->U0()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/m3;->T0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/m3;->T0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    const/4 v1, 0x0

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/X2;->F()Lcom/google/android/gms/internal/measurement/Q2;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/c3;->R(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n2;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-nez v7, :cond_1a

    goto :goto_20

    :cond_1a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/n2;->E()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/U2;->E()Lcom/google/android/gms/internal/measurement/T2;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/b2;->F()I

    move-result v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eq v13, v15, :cond_1e

    const/4 v15, 0x2

    if-eq v13, v15, :cond_1d

    const/4 v15, 0x4

    if-eq v13, v14, :cond_1c

    if-eq v13, v15, :cond_1b

    const/4 v13, 0x1

    goto :goto_1e

    :cond_1b
    const/4 v13, 0x5

    goto :goto_1e

    :cond_1c
    move v13, v15

    goto :goto_1e

    :cond_1d
    move v13, v14

    goto :goto_1e

    :cond_1e
    const/4 v13, 0x2

    :goto_1e
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/T2;->t(I)Lcom/google/android/gms/internal/measurement/T2;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/b2;->H()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    const/4 v13, 0x1

    if-eq v11, v13, :cond_1f

    const/4 v13, 0x2

    if-eq v11, v13, :cond_20

    const/4 v14, 0x1

    goto :goto_1f

    :cond_1f
    const/4 v14, 0x2

    :cond_20
    :goto_1f
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/measurement/T2;->u(I)Lcom/google/android/gms/internal/measurement/T2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/U2;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_21
    :goto_20
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/measurement/Q2;->t(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/Q2;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/m3;->m0(Lcom/google/android/gms/internal/measurement/Q2;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/n3;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_22
    move-object v11, v2

    goto :goto_22

    :goto_21
    if-eqz v13, :cond_23

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_23
    throw v0

    :goto_22
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_23

    :cond_24
    move-object/from16 v21, v4

    :goto_23
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->K()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_26
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_29

    const/4 v2, 0x0

    :goto_25
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n3;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_26

    :cond_27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/n3;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const/4 v3, 0x0

    invoke-interface {v11, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    goto :goto_27

    :cond_28
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_29
    :goto_27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->L()Lcom/google/android/gms/internal/measurement/i3;

    move-result-object v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/m;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_28

    :cond_2a
    const/4 v4, 0x0

    :goto_28
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v1

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/G7;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/e2;->N0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v6, v9, v7}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v6

    iget-object v7, v8, Lcom/google/android/gms/measurement/internal/c7;->j:Lcom/google/android/gms/measurement/internal/P6;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/P6;->i(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/O6;

    move-result-object v10

    const/4 v12, 0x0

    :goto_29
    if-ge v12, v2, :cond_3c

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/m3;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/m;->A()J

    const-wide/32 v14, 0x1fbd0

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/m3;->H(J)Lcom/google/android/gms/internal/measurement/m3;

    move-wide/from16 v14, p2

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/m3;->e1(J)Lcom/google/android/gms/internal/measurement/m3;

    move/from16 v16, v2

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/measurement/m3;->r0(Z)Lcom/google/android/gms/internal/measurement/m3;

    if-nez v4, :cond_2b

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->A0()Lcom/google/android/gms/internal/measurement/m3;

    :cond_2b
    if-nez v1, :cond_2c

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->K()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->N()Lcom/google/android/gms/internal/measurement/m3;

    :cond_2c
    if-nez v5, :cond_2d

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->Q()Lcom/google/android/gms/internal/measurement/m3;

    :cond_2d
    invoke-virtual {v8, v9, v13}, Lcom/google/android/gms/measurement/internal/c7;->x(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m3;)V

    if-nez v6, :cond_2e

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->I0()Lcom/google/android/gms/internal/measurement/m3;

    :cond_2e
    if-nez v5, :cond_2f

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->t0()Lcom/google/android/gms/internal/measurement/m3;

    :cond_2f
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_31

    move/from16 v22, v1

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_2a

    :cond_30
    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v28, v6

    move-object/from16 v27, v11

    move-object/from16 v14, v21

    goto/16 :goto_2d

    :cond_31
    move/from16 v22, v1

    :goto_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->N0()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v25, v4

    move/from16 v26, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v6

    move-object/from16 v6, v27

    check-cast v6, Lcom/google/android/gms/internal/measurement/b3;

    move-object/from16 v27, v11

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v11

    const-string v14, "_fx"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move-wide/from16 v14, p2

    move-object/from16 v11, v27

    move/from16 v6, v28

    const/16 v23, 0x1

    const/16 v24, 0x1

    goto :goto_2b

    :cond_32
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/b3;->H()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v14, v21

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    const-string v11, "_pfo"

    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v11

    if-eqz v11, :cond_33

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    const-string v11, "_uwa"

    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/h7;->r(Lcom/google/android/gms/internal/measurement/b3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v6

    if-eqz v6, :cond_34

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/f3;->J()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_34
    move-object/from16 v21, v14

    move-object/from16 v11, v27

    move/from16 v6, v28

    const/16 v24, 0x1

    :goto_2c
    move-wide/from16 v14, p2

    goto :goto_2b

    :cond_35
    move-object/from16 v21, v14

    move-object/from16 v11, v27

    move/from16 v6, v28

    goto :goto_2c

    :cond_36
    move/from16 v28, v6

    move-object/from16 v27, v11

    move-object/from16 v14, v21

    if-eqz v23, :cond_37

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->U0()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/measurement/m3;->T0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_37
    if-eqz v24, :cond_38

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/c7;->w(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    :cond_38
    :goto_2d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->O0()I

    move-result v1

    if-nez v1, :cond_39

    goto :goto_2e

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/e2;->D0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/h7;->T([B)J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/measurement/m3;->F0(J)Lcom/google/android/gms/internal/measurement/m3;

    :cond_3a
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/O6;->d()Lcom/google/android/gms/internal/measurement/C3;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/measurement/m3;->j0(Lcom/google/android/gms/internal/measurement/C3;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_3b
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/i3;->x(Lcom/google/android/gms/internal/measurement/m3;)Lcom/google/android/gms/internal/measurement/i3;

    :goto_2e
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v21, v14

    move/from16 v2, v16

    move/from16 v1, v22

    move/from16 v4, v25

    move/from16 v5, v26

    move-object/from16 v11, v27

    move/from16 v6, v28

    goto/16 :goto_29

    :cond_3c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i3;->u()I

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/c7;->q(Ljava/util/List;)V

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/c7;->z(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    return-void

    :cond_3d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/l3;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/O6;->c()Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/k5;->zzd:Lcom/google/android/gms/measurement/internal/k5;

    if-ne v2, v4, :cond_3e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_3e
    const/4 v2, 0x0

    :goto_2f
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/O6;->c()Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/k5;->zzc:Lcom/google/android/gms/measurement/internal/k5;

    if-eq v4, v5, :cond_40

    if-eqz v2, :cond_3f

    const/4 v15, 0x1

    goto :goto_30

    :cond_3f
    move-wide/from16 v12, p2

    const/4 v7, 0x0

    goto/16 :goto_3a

    :cond_40
    move v15, v2

    :goto_30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/l3;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/n3;->c0()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_42
    const/4 v1, 0x0

    :goto_31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/l3;->M(Lcom/google/android/gms/internal/measurement/l3;)Lcom/google/android/gms/internal/measurement/i3;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/i3;->B(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/i3;

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/c3;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/i3;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/i3;

    :cond_44
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->E()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/n3;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/n3;->k0(Lcom/google/android/gms/internal/measurement/n3;)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m3;->A0()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/n3;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_45
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/i3;->z()Lcom/google/android/gms/internal/measurement/i3;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/i3;->y(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/i3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    const-string v5, "null"

    goto :goto_33

    :cond_46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/i3;->A()Ljava/lang/String;

    move-result-object v5

    :goto_33
    const-string v6, "[sgtm] Processed MeasurementBatch for sGTM with sgtmJoinId: "

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/l3;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->L()Lcom/google/android/gms/internal/measurement/i3;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v5

    const-string v6, "[sgtm] Processing Google Signal, sgtmJoinId:"

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/i3;->B(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/i3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l3;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n3;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/n3;->j0()Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/n3;->d0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/m3;->z0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/n3;->a1()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/m3;->f0(I)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/i3;->x(Lcom/google/android/gms/internal/measurement/m3;)Lcom/google/android/gms/internal/measurement/i3;

    goto :goto_34

    :cond_47
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/c3;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->s:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    add-int/2addr v6, v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Lcom/google/android/gms/measurement/internal/O6;

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v15, :cond_48

    sget-object v5, Lcom/google/android/gms/measurement/internal/k5;->zze:Lcom/google/android/gms/measurement/internal/k5;

    goto :goto_35

    :cond_48
    sget-object v5, Lcom/google/android/gms/measurement/internal/k5;->zzb:Lcom/google/android/gms/measurement/internal/k5;

    :goto_35
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v4, v6, v5, v7}, Lcom/google/android/gms/measurement/internal/O6;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/internal/measurement/C3;)V

    goto :goto_37

    :cond_49
    const/4 v7, 0x0

    new-instance v1, Lcom/google/android/gms/measurement/internal/O6;

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->s:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v15, :cond_4a

    sget-object v5, Lcom/google/android/gms/measurement/internal/k5;->zze:Lcom/google/android/gms/measurement/internal/k5;

    goto :goto_36

    :cond_4a
    sget-object v5, Lcom/google/android/gms/measurement/internal/k5;->zzb:Lcom/google/android/gms/measurement/internal/k5;

    :goto_36
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v1, v4, v6, v5, v7}, Lcom/google/android/gms/measurement/internal/O6;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/internal/measurement/C3;)V

    :goto_37
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_4b
    const/4 v7, 0x0

    :goto_38
    if-eqz v15, :cond_4d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/i3;

    const/4 v5, 0x0

    :goto_39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/l3;->F()I

    move-result v1

    if-ge v5, v1, :cond_4c

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/l3;->G(I)Lcom/google/android/gms/internal/measurement/n3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/q5;->q()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/m3;->f1()Lcom/google/android/gms/internal/measurement/m3;

    move-wide/from16 v12, p2

    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/m3;->k0(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/measurement/i3;->w(ILcom/google/android/gms/internal/measurement/m3;)Lcom/google/android/gms/internal/measurement/i3;

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_4c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    invoke-static {v0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/c7;->q(Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xcc

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/c7;->z(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/O6;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/c7;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "[sgtm] Sending sgtm batches available notification to app"

    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/c7;->V(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_4d
    move-wide/from16 v12, p2

    move-object v1, v2

    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->z()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h7;->K(Lcom/google/android/gms/internal/measurement/l3;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_4e
    move-object v0, v7

    :goto_3b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v2

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/c7;->q(Ljava/util/List;)V

    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/h6;->i:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Uploading data. app, uncompressed size, data"

    invoke-virtual {v3, v4, v9, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/google/android/gms/measurement/internal/c7;->u:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/R6;

    invoke-direct {v2, v8, v9, v11}, Lcom/google/android/gms/measurement/internal/R6;-><init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/google/android/gms/measurement/internal/G2;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/O6;Lcom/google/android/gms/internal/measurement/l3;Lcom/google/android/gms/measurement/internal/D2;)V

    :cond_4f
    :goto_3c
    return-void

    :goto_3d
    if-eqz v13, :cond_50

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0
.end method

.method public final s0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m5;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->G:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->G:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->F:Lcom/google/android/gms/measurement/internal/m5;

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I2;->l0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/measurement/internal/m7;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->E:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->E:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/a7;

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/a7;->b()Z

    move-result p1

    return p1
.end method

.method public final synthetic t0(Lcom/google/android/gms/measurement/internal/d7;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/S2;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/S2;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->k:Lcom/google/android/gms/measurement/internal/S2;

    new-instance p1, Lcom/google/android/gms/measurement/internal/w;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/w;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/N6;->k()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->c:Lcom/google/android/gms/measurement/internal/w;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/c3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/m;->t(Lcom/google/android/gms/measurement/internal/l;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/h6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/h6;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/N6;->k()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    new-instance p1, Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/N6;->k()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->f:Lcom/google/android/gms/measurement/internal/e;

    new-instance p1, Lcom/google/android/gms/measurement/internal/h5;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/h5;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/N6;->k()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->h:Lcom/google/android/gms/measurement/internal/h5;

    new-instance p1, Lcom/google/android/gms/measurement/internal/F6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/F6;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/N6;->k()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->e:Lcom/google/android/gms/measurement/internal/F6;

    new-instance p1, Lcom/google/android/gms/measurement/internal/J2;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/J2;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->d:Lcom/google/android/gms/measurement/internal/J2;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/c7;->r:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/c7;->s:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/c7;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/c7;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "UploadController is now fully initialized"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->v:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f6;->x()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Upload data called on the client side before use of service was decided"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Upload called in the client side when service should be used"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/c7;->o:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Network not connected, ignoring upload request"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/w;->p(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "[sgtm] Upload queue has no batches for appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    sget-object v3, Lcom/google/android/gms/measurement/internal/k5;->zzb:Lcom/google/android/gms/measurement/internal/k5;

    filled-new-array {v3}, [Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/J6;->b([Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/J6;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v0}, Lcom/google/android/gms/measurement/internal/w;->o(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/J6;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/f7;

    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->d()Lcom/google/android/gms/internal/measurement/l3;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "[sgtm] Uploading data from upload queue. appId, type, url"

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->f()Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/B2;->z()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/h7;->K(Lcom/google/android/gms/internal/measurement/l3;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "[sgtm] Uploading data from upload queue. appId, uncompressed size, data"

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, p1, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f7;->a()Lcom/google/android/gms/measurement/internal/O6;

    move-result-object v4

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->u:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/S6;

    invoke-direct {v5, p0, p1, v2}, Lcom/google/android/gms/measurement/internal/S6;-><init>(Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f7;)V

    invoke-virtual {v0, p1, v4, v3, v5}, Lcom/google/android/gms/measurement/internal/G2;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/O6;Lcom/google/android/gms/internal/measurement/l3;Lcom/google/android/gms/measurement/internal/D2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/c7;->v:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    return-void

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/c7;->v:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    throw p1
.end method

.method public final synthetic u0()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->K()V

    return-void
.end method

.method public final v(Ljava/lang/String;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/f7;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    const/16 v1, 0xcc

    if-ne p2, v1, :cond_3

    move p2, v1

    :cond_1
    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p3

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/f7;->c()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/measurement/internal/w;->q(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    const-string p4, "Successfully uploaded batch from upload queue. appId, status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/w;->p(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c7;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v2, 0x20

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-virtual {v1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Network upload failed. Will retry later. appId, status, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p3, :cond_4

    move-object p3, p4

    :cond_4
    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p1

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/f7;->c()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/w;->w(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->u:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    return-void

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/c7;->u:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    throw p1
.end method

.method public final w(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/I2;->e0(Z)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/I2;->g0(Ljava/lang/Long;)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/I2;->i0(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->A()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    :cond_0
    return-void
.end method

.method public final synthetic w0()Lcom/google/android/gms/measurement/internal/p3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->l:Lcom/google/android/gms/measurement/internal/p3;

    return-object v0
.end method

.method public final x(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m3;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->F(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/m3;->J0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->z()Lcom/google/android/gms/internal/measurement/m3;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->K(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/m3;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_id"

    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/h7;->X(Lcom/google/android/gms/internal/measurement/m3;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/m3;->d1(I)Lcom/google/android/gms/internal/measurement/m3;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->A0()Lcom/google/android/gms/internal/measurement/m3;

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->N(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->Q()Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/Z6;

    if-eqz v1, :cond_5

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/Z6;->b:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->l0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/measurement/internal/m;->D(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v4

    invoke-interface {v4}, LT0/g;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    :cond_5
    new-instance v1, Lcom/google/android/gms/measurement/internal/Z6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/Z6;-><init>(Lcom/google/android/gms/measurement/internal/c7;[B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/Z6;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/m3;->K0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->O(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/m3;->I0()Lcom/google/android/gms/internal/measurement/m3;

    :cond_8
    return-void
.end method

.method public final synthetic x0()Ljava/util/Deque;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->q:Ljava/util/Deque;

    return-object v0
.end method

.method public final y(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/e3;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "_sc"

    const-string v1, "_si"

    const-string v2, "_o"

    const-string v3, "_sn"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LT0/h;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e3;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/m7;->N(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/m7;->N(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object p1

    invoke-virtual {p1, p4, v2}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    move-result p1

    :goto_0
    int-to-long v3, p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object p1

    invoke-virtual {p1, p4, v2}, Lcom/google/android/gms/measurement/internal/m;->y(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e3;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e3;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e3;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    const/16 v7, 0x28

    invoke-virtual {p1, v1, v7, v2}, Lcom/google/android/gms/measurement/internal/m7;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    cmp-long v1, v5, v3

    if-lez v1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e3;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e3;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e3;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->B0()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0, p4, v2}, Lcom/google/android/gms/measurement/internal/m;->y(Ljava/lang/String;Z)I

    move-result p4

    invoke-virtual {p1, p2, p4, v2}, Lcom/google/android/gms/measurement/internal/m7;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "Param value is too long; discarded. Name, value length"

    invoke-virtual {p4, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p4, "_err"

    invoke-virtual {p3, p4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-nez v0, :cond_3

    const-wide/16 v2, 0x4

    invoke-virtual {p3, p4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_el"

    invoke-virtual {p3, p1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/e3;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final synthetic y0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/c7;->I:J

    return-void
.end method

.method public final z(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V
    .locals 20
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v9, p5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    const/4 v10, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array v3, v10, [B

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    move-object/from16 v3, p4

    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/c7;->y:Ljava/util/List;

    invoke-static {v4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x0

    iput-object v12, v1, Lcom/google/android/gms/measurement/internal/c7;->y:Ljava/util/List;

    if-eqz p1, :cond_5

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_1

    const/16 v4, 0xcc

    if-ne v0, v4, :cond_2

    move v0, v4

    :cond_1
    if-eqz v2, :cond_5

    :cond_2
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x20

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v5, "Network upload failed. Will retry later. code, error"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/h6;->i:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v3

    invoke-interface {v3}, LT0/g;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/h6;->g:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v2

    invoke-interface {v2}, LT0/g;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/w;->v(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    goto/16 :goto_a

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Network upload successful with code, uploadAttempted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v0, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/h6;->h:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v4

    invoke-interface {v4}, LT0/g;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_6
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/c7;->i:Lcom/google/android/gms/measurement/internal/h6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/h6;->i:Lcom/google/android/gms/measurement/internal/M2;

    const-wide/16 v13, 0x0

    invoke-virtual {v2, v13, v14}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    if-eqz p1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v4, "Successful upload. Got network response. code, size"

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Purged empty bundles"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->t0()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v7, -0x1

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/gms/internal/measurement/l3;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/gms/measurement/internal/O6;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/O6;->c()Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/k5;->zzd:Lcom/google/android/gms/measurement/internal/k5;

    if-eq v2, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/O6;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/O6;->b()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/O6;->c()Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v3, p5

    move-object/from16 v4, v16

    move-wide v13, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/w;->m(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/l3;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/O6;->c()Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/k5;->zze:Lcom/google/android/gms/measurement/internal/k5;

    if-ne v4, v5, :cond_9

    cmp-long v4, v2, v13

    if-eqz v4, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/l3;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/l3;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-wide/16 v13, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_a
    move-wide v13, v7

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_b
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/l3;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/O6;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/O6;->c()Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/k5;->zzd:Lcom/google/android/gms/measurement/internal/k5;

    if-ne v3, v5, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/l3;->I()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/O6;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/O6;->b()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/O6;->c()Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v7

    move-object v2, v3

    move-object/from16 v3, p5

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/w;->m(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/l3;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Ljava/lang/Long;)J

    goto :goto_4

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/k5;->zzd:Lcom/google/android/gms/measurement/internal/k5;

    filled-new-array {v2}, [Lcom/google/android/gms/measurement/internal/k5;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/J6;->b([Lcom/google/android/gms/measurement/internal/k5;)Lcom/google/android/gms/measurement/internal/J6;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v9, v2, v3}, Lcom/google/android/gms/measurement/internal/w;->o(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/J6;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/f7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f7;->g()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->a()J

    move-result-wide v4

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->F:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-lez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v4, "[sgtm] client batches are queued too long. appId, creationTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v9, v2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/w;->t(J)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/c7;->z:Ljava/util/List;

    if-eqz v4, :cond_e

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    throw v0

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    iput-object v12, v1, Lcom/google/android/gms/measurement/internal/c7;->z:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/w;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/c7;->u(Ljava/lang/String;)V

    :goto_6
    const-wide/16 v2, 0x0

    goto :goto_7

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->E0()Lcom/google/android/gms/measurement/internal/G2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/G2;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->O()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->r()V

    goto :goto_6

    :cond_11
    iput-wide v13, v1, Lcom/google/android/gms/measurement/internal/c7;->A:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->Q()V

    goto :goto_6

    :goto_7
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/c7;->o:J

    goto :goto_a

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_9
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/c7;->o:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Disable upload, time"

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/c7;->o:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_a
    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/c7;->u:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    return-void

    :goto_b
    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/c7;->u:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/c7;->R()V

    throw v0
.end method
