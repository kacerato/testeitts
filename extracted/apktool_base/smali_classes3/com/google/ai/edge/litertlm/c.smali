.class public final Lcom/google/ai/edge/litertlm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ai/edge/litertlm/c$a;,
        Lcom/google/ai/edge/litertlm/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConversation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Conversation.kt\ncom/google/ai/edge/litertlm/Conversation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,537:1\n1#2:538\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nConversation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Conversation.kt\ncom/google/ai/edge/litertlm/Conversation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,537:1\n1#2:538\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/google/ai/edge/litertlm/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I = 0x19


# instance fields
.field public final b:J

.field public final c:Lk0/A;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/ai/edge/litertlm/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ai/edge/litertlm/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/google/ai/edge/litertlm/c;->f:Lcom/google/ai/edge/litertlm/c$a;

    return-void
.end method

.method public constructor <init>(JLk0/A;Z)V
    .locals 1
    .param p3    # Lk0/A;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "toolManager",
            "automaticToolCalling"
        }
    .end annotation

    const-string v0, "toolManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/ai/edge/litertlm/c;->b:J

    .line 3
    iput-object p3, p0, Lcom/google/ai/edge/litertlm/c;->c:Lk0/A;

    .line 4
    iput-boolean p4, p0, Lcom/google/ai/edge/litertlm/c;->d:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/ai/edge/litertlm/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(JLk0/A;ZILkotlin/jvm/internal/x;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 6
    new-instance p3, Lk0/A;

    const/4 p6, 0x0

    invoke-direct {p3, p6, v0, p6}, Lk0/A;-><init>(Ljava/util/List;ILkotlin/jvm/internal/x;)V

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move p4, v0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ai/edge/litertlm/c;-><init>(JLk0/A;Z)V

    return-void
.end method

.method public static synthetic A(Lcom/google/ai/edge/litertlm/c;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljg/i;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->u(Ljava/lang/String;Ljava/util/Map;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/b;Lk0/n;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ai/edge/litertlm/c;->v(Lcom/google/ai/edge/litertlm/b;Lk0/n;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic G(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/d;Lk0/n;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ai/edge/litertlm/c;->w(Lcom/google/ai/edge/litertlm/d;Lk0/n;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic L(Lcom/google/ai/edge/litertlm/c;Ljava/lang/String;Lk0/n;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ai/edge/litertlm/c;->x(Ljava/lang/String;Lk0/n;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic a(Lcom/google/ai/edge/litertlm/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ai/edge/litertlm/c;->b:J

    return-wide v0
.end method

.method public static final synthetic b(Lcom/google/ai/edge/litertlm/c;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/ai/edge/litertlm/c;->h(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->k(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/b;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/d;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->m(Lcom/google/ai/edge/litertlm/b;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/d;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->n(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/google/ai/edge/litertlm/c;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/d;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->o(Ljava/lang/String;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/b;Ljava/util/Map;ILjava/lang/Object;)Ljg/i;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->s(Lcom/google/ai/edge/litertlm/b;Ljava/util/Map;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;ILjava/lang/Object;)Ljg/i;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lpf/o0;->z()Ljava/util/Map;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->t(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Ljg/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/c;->d()V

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/c;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeConversationCancelProcess(J)V

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/c;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeDeleteConversation(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Conversation is closed already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Conversation is not alive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ai/edge/litertlm/c;->d:Z

    return v0
.end method

.method public final f()Lcom/google/ai/edge/litertlm/BenchmarkInfo;
    .locals 3
    .annotation build Lk0/i;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/c;->d()V

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/c;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeConversationGetBenchmarkInfo(J)Lcom/google/ai/edge/litertlm/BenchmarkInfo;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lk0/A;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c;->c:Lk0/A;

    return-object v0
.end method

.method public final h(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toolCallsJsonObject"
        }
    .end annotation

    const-string v0, "tool_calls"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, "iterator(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "function"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "arguments"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    iget-object v4, p0, Lcom/google/ai/edge/litertlm/c;->c:Lk0/A;

    invoke-static {v3}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v1}, Lk0/A;->a(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonElement;

    move-result-object v1

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v5, "type"

    const-string v6, "tool_response"

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "response"

    invoke-virtual {v4, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "role"

    const-string v2, "tool"

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p1
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final k(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/google/ai/edge/litertlm/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lk0/i;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/c;->d()V

    invoke-static {p2}, Lk0/l;->b(Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v2, p0, Lcom/google/ai/edge/litertlm/c;->b:J

    invoke-virtual {p1}, Lcom/google/ai/edge/litertlm/d;->e()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeConversationRenderMessageIntoString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/google/ai/edge/litertlm/b;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;
    .locals 1
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ai/edge/litertlm/d;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/d;->e:Lcom/google/ai/edge/litertlm/d$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/d$a;->j(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->n(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;
    .locals 5
    .param p1    # Lcom/google/ai/edge/litertlm/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ai/edge/litertlm/d;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/c;->d()V

    invoke-virtual {p1}, Lcom/google/ai/edge/litertlm/d;->e()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-static {p2}, Lk0/l;->b(Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v3, p0, Lcom/google/ai/edge/litertlm/c;->b:J

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeSendMessage(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "tool_calls"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean p1, p0, Lcom/google/ai/edge/litertlm/c;->d:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/ai/edge/litertlm/c;->f:Lcom/google/ai/edge/litertlm/c$a;

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/google/ai/edge/litertlm/c$a;->a(Lcom/google/ai/edge/litertlm/c$a;Lcom/google/gson/JsonObject;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/google/ai/edge/litertlm/c;->h(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "content"

    invoke-virtual {v2, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/google/ai/edge/litertlm/c;->f:Lcom/google/ai/edge/litertlm/c$a;

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lcom/google/ai/edge/litertlm/c$a;->a(Lcom/google/ai/edge/litertlm/c$a;Lcom/google/gson/JsonObject;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid response from native layer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Exceeded recurring tool call limit of 25"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Ljava/lang/String;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ai/edge/litertlm/d;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->m(Lcom/google/ai/edge/litertlm/b;Ljava/util/Map;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lcom/google/ai/edge/litertlm/b;Ljava/util/Map;)Ljg/i;
    .locals 1
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contents",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/d;->e:Lcom/google/ai/edge/litertlm/d$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/d$a;->j(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->t(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Ljg/i;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Ljg/i;
    .locals 2
    .param p1    # Lcom/google/ai/edge/litertlm/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/ai/edge/litertlm/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/ai/edge/litertlm/c$c;-><init>(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;Lyf/f;)V

    invoke-static {v0}, Ljg/k;->s(LMf/p;)Ljg/i;

    move-result-object p1

    return-object p1
.end method

.method public final u(Ljava/lang/String;Ljava/util/Map;)Ljg/i;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c;->s(Lcom/google/ai/edge/litertlm/b;Ljava/util/Map;)Ljg/i;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lcom/google/ai/edge/litertlm/b;Lk0/n;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/google/ai/edge/litertlm/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lk0/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contents",
            "callback",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/b;",
            "Lk0/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/d;->e:Lcom/google/ai/edge/litertlm/d$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/d$a;->j(Lcom/google/ai/edge/litertlm/b;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ai/edge/litertlm/c;->w(Lcom/google/ai/edge/litertlm/d;Lk0/n;Ljava/util/Map;)V

    return-void
.end method

.method public final w(Lcom/google/ai/edge/litertlm/d;Lk0/n;Ljava/util/Map;)V
    .locals 6
    .param p1    # Lcom/google/ai/edge/litertlm/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lk0/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "callback",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/d;",
            "Lk0/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ai/edge/litertlm/c;->d()V

    invoke-static {p3}, Lk0/l;->b(Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p3, "toString(...)"

    invoke-static {v4, p3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/google/ai/edge/litertlm/c$b;

    invoke-direct {v5, p0, p2}, Lcom/google/ai/edge/litertlm/c$b;-><init>(Lcom/google/ai/edge/litertlm/c;Lk0/n;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-wide v1, p0, Lcom/google/ai/edge/litertlm/c;->b:J

    invoke-virtual {p1}, Lcom/google/ai/edge/litertlm/d;->e()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeSendMessageAsync(JLjava/lang/String;Ljava/lang/String;Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniMessageCallback;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Lk0/n;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lk0/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "callback",
            "extraContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk0/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/google/ai/edge/litertlm/b;->b:Lcom/google/ai/edge/litertlm/b$a;

    invoke-virtual {v0, p1}, Lcom/google/ai/edge/litertlm/b$a;->b(Ljava/lang/String;)Lcom/google/ai/edge/litertlm/b;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ai/edge/litertlm/c;->v(Lcom/google/ai/edge/litertlm/b;Lk0/n;Ljava/util/Map;)V

    return-void
.end method
