.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lk0/i;
.end annotation


# static fields
.field public static final m:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

.field public final d:Lcom/google/gson/Gson;

.field public e:I

.field public f:I

.field public final g:Ljava/lang/String;

.field public final h:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

.field public final i:J

.field public j:I

.field public k:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;

.field public l:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;->EXPLAIN:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "sessionId",
            "specialist"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->l:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f:I

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->i:J

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    invoke-direct {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/Utils/DateSerializer;

    invoke-direct {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/Utils/DateSerializer;-><init>()V

    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Native/OHString/OHStringSerializer;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Native/OHString/OHStringSerializer;-><init>()V

    const-class v0, LAc/b;

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->d:Lcom/google/gson/Gson;

    if-eqz p3, :cond_1

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$g;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lx3/b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lx3/b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->C(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/google/gson/Gson;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->d:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->D(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AI-Agent"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->l:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    return-void
.end method

.method public B(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orchestrator"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;

    return-void
.end method

.method public final C(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "specialist",
            "redirectViewCallback"
        }
    .end annotation

    move-object/from16 v8, p0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    :goto_0
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v13, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v14

    new-array v15, v9, [Z

    aput-boolean v10, v15, v10

    new-array v7, v9, [Z

    aput-boolean v10, v7, v10

    new-array v6, v9, [Z

    aput-boolean v10, v6, v10

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Waiting active conversation to finish"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move v9, v10

    goto/16 :goto_6

    :cond_1
    :goto_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->z(Z)V

    sget-boolean v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v1, :cond_2

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Simple call input:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_6

    :cond_2
    :goto_2
    :try_start_3
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$b;

    move-object/from16 v4, p3

    invoke-direct {v1, v8, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V

    iget v2, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f:I

    move-object/from16 v3, p2

    invoke-static {v2, v3, v5, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->a(ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Lk0/f;

    move-result-object v1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->l()Lk0/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lk0/g;->d(Lk0/f;)Lcom/google/ai/edge/litertlm/c;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v8, v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->l(Ljava/lang/String;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v16, v1

    move-object/from16 v1, v16

    move-object v9, v2

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p3

    move-object/from16 v17, v5

    move-object v5, v15

    move-object/from16 v18, v6

    move-object v6, v13

    move-object/from16 v19, v7

    :try_start_5
    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;[Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;[ZLjava/util/concurrent/CountDownLatch;[Z)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v9, v11, v2, v1}, Lcom/google/ai/edge/litertlm/c;->x(Ljava/lang/String;Lk0/n;Ljava/util/Map;)V

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v8, v9, v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v8, v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->z(Z)V

    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_4
    move-object v5, v9

    :goto_5
    const/4 v9, 0x1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v9, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_5

    :goto_6
    :try_start_6
    invoke-virtual {v8, v5, v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_b

    :cond_3
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x1

    aput-boolean v1, v18, v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-virtual {v8, v5, v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v8, v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->z(Z)V

    if-eqz v9, :cond_4

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    goto :goto_3

    :cond_4
    :goto_8
    aget-boolean v0, v18, v10

    if-nez v0, :cond_9

    aget-boolean v0, v19, v10

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    aget-boolean v0, v15, v10

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AI Output:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v14, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    :cond_6
    aget-object v0, v14, v10

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    aget-object v0, v14, v10

    return-object v0

    :cond_8
    :goto_9
    return-object v17

    :cond_9
    :goto_a
    invoke-static {}, LNc/d;->c()I

    move-result v0

    iput v0, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f:I

    invoke-virtual/range {p0 .. p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->C(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_b
    invoke-virtual {v8, v5, v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v8, v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->z(Z)V

    if-eqz v9, :cond_a

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_a
    throw v0
.end method

.method public final D(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "callback",
            "depth",
            "promptMessageObject"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;

    if-eqz v0, :cond_1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$d;

    invoke-direct {v3, v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    iput-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;

    :try_start_0
    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;

    invoke-virtual {v0, v2, v10}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/RecursiveCallOnOrchestrator; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    move-object v14, v2

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :goto_3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;->getOutput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->E(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V

    return-void

    :goto_4
    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/RecursiveCallOnOrchestrator;->getOutput()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v8, v0, v9, v1, v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->D(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    return-void

    :goto_5
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v15, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v7, v13, [Ljava/lang/String;

    aput-object v1, v7, v12

    new-array v6, v13, [Z

    aput-boolean v12, v6, v12

    new-array v5, v13, [Z

    aput-boolean v12, v5, v12

    new-array v4, v13, [Z

    aput-boolean v12, v4, v12

    const/4 v1, 0x0

    :try_start_1
    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v2, :cond_2

    :try_start_2
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Waiting active conversation to finish"

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move v13, v12

    goto/16 :goto_a

    :cond_2
    :goto_6
    :try_start_3
    sget-object v16, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-virtual {v8, v13}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->z(Z)V

    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_3

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Direct call input:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Used tokens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_a

    :cond_3
    :goto_7
    :try_start_6
    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$e;

    invoke-direct {v2, v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f:I

    iget-object v13, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    invoke-static {v3, v13, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->a(ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Lk0/f;

    move-result-object v2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->l()Lk0/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lk0/g;->d(Lk0/f;)Lcom/google/ai/edge/litertlm/c;

    move-result-object v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v8, v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->l(Ljava/lang/String;)V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$f;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v12, v3

    move-object v3, v7

    move-object/from16 v17, v4

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    move-object v5, v6

    move-object/from16 v19, v6

    move-object v6, v0

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    :try_start_8
    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;[Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;[ZLjava/util/concurrent/CountDownLatch;[Z)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v13, v14, v12, v1}, Lcom/google/ai/edge/litertlm/c;->x(Ljava/lang/String;Lk0/n;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-virtual {v8, v13, v15}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->z(Z)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v3, 0x0

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_8
    move-object v1, v13

    :goto_9
    const/4 v13, 0x1

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    const/4 v13, 0x0

    :goto_a
    :try_start_9
    invoke-virtual {v8, v1, v15}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b

    :catchall_7
    move-exception v0

    goto :goto_13

    :cond_4
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v2, v17, v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    invoke-virtual {v8, v1, v15}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v8, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->z(Z)V

    if-eqz v13, :cond_5

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_5
    :goto_c
    aget-boolean v0, v17, v3

    if-nez v0, :cond_9

    aget-boolean v0, v18, v3

    if-eqz v0, :cond_6

    goto :goto_12

    :cond_6
    aget-boolean v0, v19, v3

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;

    if-eqz v0, :cond_7

    :try_start_a
    aget-object v1, v20, v3

    invoke-virtual {v0, v1, v10, v14}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v20, v3
    :try_end_a
    .catch Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/RecursiveCallOnOrchestrator; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :goto_d
    const/4 v1, 0x0

    goto :goto_11

    :catchall_8
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_10

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :goto_f
    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/RecursiveCallOnOrchestrator;->getOutput()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr v1, v10

    invoke-virtual {v8, v0, v9, v1, v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->D(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    return-void

    :goto_10
    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/StopOnOrchestrator;->getOutput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v14, v0, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->E(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V

    return-void

    :cond_7
    move v1, v3

    :goto_11
    aget-object v0, v20, v1

    invoke-virtual {v8, v14, v0, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->E(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V

    :cond_8
    return-void

    :cond_9
    :goto_12
    invoke-static {}, LNc/d;->c()I

    move-result v0

    iput v0, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f:I

    invoke-virtual/range {p0 .. p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->D(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    return-void

    :goto_13
    invoke-virtual {v8, v1, v15}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->z(Z)V

    if-eqz v13, :cond_a

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_a
    throw v0
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "messageText",
            "callback"
        }
    .end annotation

    sget-boolean p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AI Output:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Used tokens:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;->AI_ANSWER:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    invoke-direct {p1, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    invoke-virtual {p0, p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->w(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->a()V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prompt",
            "contextObjectJson"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversation ContextObject JSON:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\nUse this ContextObject as the previous conversation history. Answer the latest user message sent after this context.\n\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->j:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->r(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->d()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->d:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->l(Ljava/lang/String;)V

    return-object v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->j:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->r(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conversation",
            "conversationClosed"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ai/edge/litertlm/c;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-boolean p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->e:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "\\s+|(?=[\\p{Punct}])|(?<=[\\p{Punct}])"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->e:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Counted tokens:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->j:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->j:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->r(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->i:J

    return-wide v0
.end method

.method public o()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->l:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    return-object v0
.end method

.method public p()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->k:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f:I

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->h:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    return-object v0
.end method

.method public final t()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->j:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->t()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final w(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageObject",
            "callback"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->d:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chat seed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->v(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final x(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;->USER_PROMPT:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public y(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "callback"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->i()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    move-result-object v7

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->l:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;[Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Chat ended!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->r(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    :cond_0
    return-void
.end method
