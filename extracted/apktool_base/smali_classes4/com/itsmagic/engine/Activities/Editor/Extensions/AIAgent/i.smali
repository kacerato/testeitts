.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lk0/i;
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lcom/google/gson/Gson;

.field public d:I

.field public e:I

.field public final f:Ljava/lang/String;

.field public final g:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

.field public final h:J

.field public i:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seed",
            "basePrompt",
            "tools"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->e:I

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->g:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->h:J

    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/Utils/DateSerializer;

    invoke-direct {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/Utils/DateSerializer;-><init>()V

    const-class p3, Ljava/util/Date;

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Native/OHString/OHStringSerializer;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Native/OHString/OHStringSerializer;-><init>()V

    const-class p3, LAc/b;

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->c:Lcom/google/gson/Gson;

    return-void
.end method

.method public static h(Ljava/lang/String;)V
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

    const-string v0, "AI-Agent CC"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final b(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V
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

.method public final c(Ljava/lang/String;)V
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

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->d:I

    if-eqz p1, :cond_2

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

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->d:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "callback",
            "promptMessageObject"
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

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Waiting active conversation to finish"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move v9, v10

    goto/16 :goto_5

    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->k(Z)V

    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/j;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_2

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Direct call input:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->h(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Used tokens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->h(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_5

    :cond_2
    :goto_2
    :try_start_5
    iget v2, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->e:I

    iget-object v3, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->f:Ljava/lang/String;

    iget-object v4, v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->g:[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;

    invoke-static {v2, v3, v1, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->b(ILjava/lang/String;Ljava/lang/String;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)Lk0/f;

    move-result-object v2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->l()Lk0/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lk0/g;->d(Lk0/f;)Lcom/google/ai/edge/litertlm/c;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v9, v4

    move-object/from16 v4, p2

    move-object v10, v5

    move-object v5, v15

    move-object/from16 v16, v6

    move-object v6, v13

    move-object/from16 v17, v7

    :try_start_7
    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;[Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;[ZLjava/util/concurrent/CountDownLatch;[Z)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v10, v11, v9, v1}, Lcom/google/ai/edge/litertlm/c;->x(Ljava/lang/String;Lk0/n;Ljava/util/Map;)V

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v8, v10, v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->b(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->k(Z)V

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v2, 0x0

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_3
    move-object v1, v10

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v10, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    const/4 v9, 0x0

    :goto_5
    :try_start_8
    invoke-virtual {v8, v1, v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->b(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6

    :catchall_6
    move-exception v0

    goto :goto_9

    :cond_3
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v16, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-virtual {v8, v1, v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->b(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v8, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->k(Z)V

    if-eqz v9, :cond_4

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_4
    :goto_7
    aget-boolean v0, v16, v2

    if-nez v0, :cond_5

    aget-boolean v0, v17, v2

    if-eqz v0, :cond_6

    :cond_5
    move-object/from16 v1, p2

    goto :goto_8

    :cond_6
    aget-boolean v0, v15, v2

    if-eqz v0, :cond_7

    aget-object v0, v14, v2

    move-object/from16 v1, p2

    invoke-virtual {v8, v11, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->l(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;)V

    :cond_7
    return-void

    :goto_8
    invoke-interface/range {p2 .. p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->a()V

    return-void

    :goto_9
    invoke-virtual {v8, v1, v12}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->b(Lcom/google/ai/edge/litertlm/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->k(Z)V

    if-eqz v9, :cond_8

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_8
    throw v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->h:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->e:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;
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

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;)V
    .locals 4
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->i(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, p1, v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->d(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LNc/d;->c()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->e:I

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->j(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Chat ended!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;)V
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

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Used tokens:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->h(Ljava/lang/String;)V

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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;->a()V

    return-void
.end method
