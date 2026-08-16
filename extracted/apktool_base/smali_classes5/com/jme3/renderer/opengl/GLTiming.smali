.class public Lcom/jme3/renderer/opengl/GLTiming;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/renderer/opengl/GLTiming$CallTimingComparator;
    }
.end annotation


# instance fields
.field private final obj:Ljava/lang/Object;

.field private final state:Lcom/jme3/renderer/opengl/GLTimingState;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/jme3/renderer/opengl/GLTimingState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/renderer/opengl/GLTiming;->obj:Ljava/lang/Object;

    iput-object p2, p0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    return-void
.end method

.method public static varargs createGLTiming(Ljava/lang/Object;Lcom/jme3/renderer/opengl/GLTimingState;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/jme3/renderer/opengl/GLTimingState;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/jme3/renderer/opengl/GLTiming;

    invoke-direct {v1, p0, p1}, Lcom/jme3/renderer/opengl/GLTiming;-><init>(Ljava/lang/Object;Lcom/jme3/renderer/opengl/GLTimingState;)V

    invoke-static {v0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetStats"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v5, 0x3e8

    if-eqz v2, :cond_5

    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget-wide v1, v1, Lcom/jme3/renderer/opengl/GLTimingState;->lastPrintOutTime:J

    const-wide/32 v7, 0x3b9aca00

    add-long/2addr v1, v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    cmp-long v1, v1, v7

    const/4 v2, 0x0

    if-gtz v1, :cond_4

    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget v7, v1, Lcom/jme3/renderer/opengl/GLTimingState;->sampleCount:I

    if-lez v7, :cond_4

    iget-wide v8, v1, Lcom/jme3/renderer/opengl/GLTimingState;->timeSpentInGL:J

    int-to-long v10, v7

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/jme3/renderer/opengl/GLTimingState;->timeSpentInGL:J

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- TOTAL TIME SPENT IN GL CALLS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget-wide v8, v8, Lcom/jme3/renderer/opengl/GLTimingState;->timeSpentInGL:J

    div-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "us"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget-object v1, v1, Lcom/jme3/renderer/opengl/GLTimingState;->callTiming:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v7, v1, [Ljava/util/Map$Entry;

    iget-object v9, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget-object v9, v9, Lcom/jme3/renderer/opengl/GLTimingState;->callTiming:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    add-int/lit8 v13, v11, 0x1

    aput-object v12, v7, v11

    move v11, v13

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/jme3/renderer/opengl/GLTiming$CallTimingComparator;

    invoke-direct {v9, v2}, Lcom/jme3/renderer/opengl/GLTiming$CallTimingComparator;-><init>(Lcom/jme3/renderer/opengl/GLTiming$1;)V

    invoke-static {v7, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/16 v9, 0xa

    move v11, v10

    :goto_1
    if-ge v11, v1, :cond_2

    aget-object v12, v7, v11

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v15, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget v15, v15, Lcom/jme3/renderer/opengl/GLTimingState;->sampleCount:I

    int-to-long v2, v15

    div-long/2addr v13, v2

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1e

    const-string v3, "                                     "

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\t"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v13, v5

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v9, -0x1

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move v9, v2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_2
    move v2, v10

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v7, v2

    iget-object v4, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget-object v4, v4, Lcom/jme3/renderer/opengl/GLTimingState;->callTiming:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v8, 0x0

    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iput v10, v1, Lcom/jme3/renderer/opengl/GLTimingState;->sampleCount:I

    iput-wide v8, v1, Lcom/jme3/renderer/opengl/GLTimingState;->timeSpentInGL:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jme3/renderer/opengl/GLTimingState;->lastPrintOutTime:J

    :goto_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    iget-object v1, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget v2, v1, Lcom/jme3/renderer/opengl/GLTimingState;->sampleCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/jme3/renderer/opengl/GLTimingState;->sampleCount:I

    goto :goto_4

    :goto_5
    return-object v1

    :cond_5
    const-wide/16 v8, 0x0

    iget-object v2, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget-object v2, v2, Lcom/jme3/renderer/opengl/GLTimingState;->callTiming:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6

    :cond_6
    move-wide v3, v8

    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v2, v0, Lcom/jme3/renderer/opengl/GLTiming;->obj:Ljava/lang/Object;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual {v9, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    add-long/2addr v3, v9

    iget-object v7, v0, Lcom/jme3/renderer/opengl/GLTiming;->state:Lcom/jme3/renderer/opengl/GLTimingState;

    iget-wide v11, v7, Lcom/jme3/renderer/opengl/GLTimingState;->timeSpentInGL:J

    add-long/2addr v11, v9

    iput-wide v11, v7, Lcom/jme3/renderer/opengl/GLTimingState;->timeSpentInGL:J

    iget-object v7, v7, Lcom/jme3/renderer/opengl/GLTimingState;->callTiming:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v3, 0xf4240

    cmp-long v3, v9, v3

    if-lez v3, :cond_7

    const-string v3, "glClear"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GL call "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " took "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v9, v5

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "us to execute!"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return-object v2
.end method
