.class public final Lk0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Engine.kt\ncom/google/ai/edge/litertlm/Engine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1#2:205\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Engine.kt\ncom/google/ai/edge/litertlm/Engine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1#2:205\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lk0/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lk0/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile d:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk0/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk0/g$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lk0/g;->e:Lk0/g$a;

    return-void
.end method

.method public constructor <init>(Lk0/h;)V
    .locals 1
    .param p1    # Lk0/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineConfig"
        }
    .end annotation

    const-string v0, "engineConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/g;->b:Lk0/h;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e(Lk0/g;Lk0/f;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/c;
    .locals 10

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lk0/f;

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lk0/f;-><init>(Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/List;Lcom/google/ai/edge/litertlm/SamplerConfig;ZLjava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    :cond_0
    invoke-virtual {p0, p1}, Lk0/g;->d(Lk0/f;)Lcom/google/ai/edge/litertlm/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lk0/g;Lk0/u;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/e;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    new-instance p1, Lk0/u;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lk0/u;-><init>(Lcom/google/ai/edge/litertlm/SamplerConfig;ILkotlin/jvm/internal/x;)V

    :cond_0
    invoke-virtual {p0, p1}, Lk0/g;->f(Lk0/u;)Lcom/google/ai/edge/litertlm/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lk0/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lk0/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lk0/g;->c()V

    sget-object v1, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-object v2, p0, Lk0/g;->d:Ljava/lang/Long;

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeDeleteEngine(J)V

    const/4 v1, 0x0

    iput-object v1, p0, Lk0/g;->d:Ljava/lang/Long;

    sget-object v1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d(Lk0/f;)Lcom/google/ai/edge/litertlm/c;
    .locals 19
    .param p1    # Lk0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationConfig"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "conversationConfig"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lk0/g;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lk0/g;->c()V

    new-instance v0, Lk0/A;

    invoke-virtual/range {p1 .. p1}, Lk0/f;->p()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lk0/A;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lk0/f;->o()Lcom/google/ai/edge/litertlm/b;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v12, Lcom/google/ai/edge/litertlm/d;

    sget-object v6, Lk0/t;->SYSTEM:Lk0/t;

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/google/ai/edge/litertlm/d;-><init>(Lk0/t;Lcom/google/ai/edge/litertlm/b;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/x;)V

    invoke-virtual {v12}, Lcom/google/ai/edge/litertlm/d;->e()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lk0/f;->m()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ai/edge/litertlm/d;

    invoke-virtual {v6}, Lcom/google/ai/edge/litertlm/d;->e()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lk0/f;->k()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    new-instance v7, Lcom/google/gson/JsonArray;

    invoke-direct {v7}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk0/d;

    invoke-virtual {v8}, Lk0/d;->i()Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_2
    move-object v7, v6

    :cond_3
    new-instance v5, Lcom/google/ai/edge/litertlm/c;

    sget-object v8, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-object v9, v1, Lk0/g;->d:Ljava/lang/Long;

    invoke-static {v9}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lk0/f;->n()Lcom/google/ai/edge/litertlm/SamplerConfig;

    move-result-object v11

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v4, "toString(...)"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lk0/A;->c()Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v4, "toString(...)"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    move-object v14, v6

    invoke-virtual/range {p1 .. p1}, Lk0/f;->l()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lk0/l;->b(Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v4, "toString(...)"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lk0/j;->a:Lk0/j;

    invoke-virtual {v4}, Lk0/j;->c()Z

    move-result v16

    invoke-virtual {v4}, Lk0/j;->e()Z

    move-result v17

    invoke-virtual {v4}, Lk0/j;->f()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v8 .. v18}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeCreateConversation(JLcom/google/ai/edge/litertlm/SamplerConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lk0/f;->j()Z

    move-result v2

    invoke-direct {v5, v6, v7, v0, v2}, Lcom/google/ai/edge/litertlm/c;-><init>(JLk0/A;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v5

    :goto_3
    monitor-exit v3

    throw v0
.end method

.method public final f(Lk0/u;)Lcom/google/ai/edge/litertlm/e;
    .locals 5
    .param p1    # Lk0/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sessionConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lk0/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lk0/g;->c()V

    new-instance v1, Lcom/google/ai/edge/litertlm/e;

    sget-object v2, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-object v3, p0, Lk0/g;->d:Ljava/lang/Long;

    invoke-static {v3}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lk0/u;->d()Lcom/google/ai/edge/litertlm/SamplerConfig;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeCreateSession(JLcom/google/ai/edge/litertlm/SamplerConfig;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/ai/edge/litertlm/e;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final h()Lk0/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/g;->b:Lk0/h;

    return-object v0
.end method

.method public final j()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v2, v1, Lk0/g;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lk0/g;->k()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->k()Lk0/a;

    move-result-object v0

    instance-of v3, v0, Lk0/a$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Lk0/a$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    :cond_0
    move-object v0, v4

    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lk0/a$a;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    move/from16 v18, v0

    goto :goto_2

    :cond_2
    move/from16 v18, v3

    :goto_2
    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->j()Lk0/a;

    move-result-object v0

    instance-of v5, v0, Lk0/a$a;

    if-eqz v5, :cond_3

    check-cast v0, Lk0/a$a;

    goto :goto_3

    :cond_3
    move-object v0, v4

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lk0/a$a;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    move/from16 v19, v0

    goto :goto_5

    :cond_5
    move/from16 v19, v3

    :goto_5
    sget-object v5, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->o()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->k()Lk0/a;

    move-result-object v0

    invoke-virtual {v0}, Lk0/a;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->p()Lk0/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lk0/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    :goto_6
    move-object v8, v0

    goto :goto_8

    :cond_7
    :goto_7
    const-string v0, ""

    goto :goto_6

    :goto_8
    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->j()Lk0/a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lk0/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    :goto_9
    move-object v9, v0

    goto :goto_b

    :cond_9
    :goto_a
    const-string v0, ""

    goto :goto_9

    :goto_b
    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->n()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    goto :goto_c

    :cond_a
    move v10, v3

    :goto_c
    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->m()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_b
    move v11, v3

    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    move-object v12, v0

    sget-object v0, Lk0/j;->a:Lk0/j;

    invoke-virtual {v0}, Lk0/j;->b()Z

    move-result v13

    invoke-virtual {v0}, Lk0/j;->d()Ljava/lang/Boolean;

    move-result-object v14

    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->k()Lk0/a;

    move-result-object v0

    instance-of v3, v0, Lk0/a$c;

    if-eqz v3, :cond_d

    check-cast v0, Lk0/a$c;

    goto :goto_d

    :cond_d
    move-object v0, v4

    :goto_d
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lk0/a$c;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    :goto_e
    move-object v15, v0

    goto :goto_10

    :cond_f
    :goto_f
    const-string v0, ""

    goto :goto_e

    :goto_10
    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->p()Lk0/a;

    move-result-object v0

    instance-of v3, v0, Lk0/a$c;

    if-eqz v3, :cond_10

    check-cast v0, Lk0/a$c;

    goto :goto_11

    :cond_10
    move-object v0, v4

    :goto_11
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lk0/a$c;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    :goto_12
    move-object/from16 v16, v0

    goto :goto_14

    :cond_12
    :goto_13
    const-string v0, ""

    goto :goto_12

    :goto_14
    iget-object v0, v1, Lk0/g;->b:Lk0/h;

    invoke-virtual {v0}, Lk0/h;->j()Lk0/a;

    move-result-object v0

    instance-of v3, v0, Lk0/a$c;

    if-eqz v3, :cond_13

    move-object v4, v0

    check-cast v4, Lk0/a$c;

    :cond_13
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lk0/a$c;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_16

    :cond_14
    :goto_15
    move-object/from16 v17, v0

    goto :goto_17

    :cond_15
    :goto_16
    const-string v0, ""

    goto :goto_15

    :goto_17
    invoke-virtual/range {v5 .. v19}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeCreateEngine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lk0/g;->d:Ljava/lang/Long;

    sget-object v0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_16
    :try_start_1
    const-string v0, "Engine is already initialized."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_18
    monitor-exit v2

    throw v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lk0/g;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
