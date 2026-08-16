.class public final Lcom/google/ai/edge/litertlm/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ai/edge/litertlm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lk0/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/google/gson/JsonObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Lcom/google/ai/edge/litertlm/c;


# direct methods
.method public constructor <init>(Lcom/google/ai/edge/litertlm/c;Lk0/n;)V
    .locals 1
    .param p1    # Lcom/google/ai/edge/litertlm/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000,
            0x0
        }
        names = {
            "this$0",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/n;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ai/edge/litertlm/c$b;->d:Lcom/google/ai/edge/litertlm/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ai/edge/litertlm/c$b;->a:Lk0/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$b;->b:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    iget-object v2, p0, Lcom/google/ai/edge/litertlm/c$b;->d:Lcom/google/ai/edge/litertlm/c;

    invoke-static {v2}, Lcom/google/ai/edge/litertlm/c;->a(Lcom/google/ai/edge/litertlm/c;)J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "toString(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "{}"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeSendMessageAsync(JLjava/lang/String;Ljava/lang/String;Lcom/google/ai/edge/litertlm/LiteRtLmJni$JniMessageCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ai/edge/litertlm/c$b;->b:Lcom/google/gson/JsonObject;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$b;->a:Lk0/n;

    invoke-interface {v0}, Lk0/n;->a()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageJsonString"
        }
    .end annotation

    const-string v0, "messageJsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "tool_calls"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$b;->d:Lcom/google/ai/edge/litertlm/c;

    invoke-virtual {v0}, Lcom/google/ai/edge/litertlm/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$b;->a:Lk0/n;

    sget-object v1, Lcom/google/ai/edge/litertlm/c;->f:Lcom/google/ai/edge/litertlm/c$a;

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/google/ai/edge/litertlm/c$a;->a(Lcom/google/ai/edge/litertlm/c$a;Lcom/google/gson/JsonObject;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lk0/n;->b(Lcom/google/ai/edge/litertlm/d;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/ai/edge/litertlm/c$b;->c:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    iget-object p1, p0, Lcom/google/ai/edge/litertlm/c$b;->a:Lk0/n;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exceeded recurring tool call limit of 25"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lk0/n;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ai/edge/litertlm/c$b;->c:I

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$b;->d:Lcom/google/ai/edge/litertlm/c;

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/google/ai/edge/litertlm/c;->b(Lcom/google/ai/edge/litertlm/c;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ai/edge/litertlm/c$b;->b:Lcom/google/gson/JsonObject;

    goto :goto_0

    :cond_2
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "channels"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$b;->a:Lk0/n;

    sget-object v1, Lcom/google/ai/edge/litertlm/c;->f:Lcom/google/ai/edge/litertlm/c$a;

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/google/ai/edge/litertlm/c$a;->a(Lcom/google/ai/edge/litertlm/c$a;Lcom/google/gson/JsonObject;)Lcom/google/ai/edge/litertlm/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lk0/n;->b(Lcom/google/ai/edge/litertlm/d;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "statusCode",
            "message"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/ai/edge/litertlm/c$b;->a:Lk0/n;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lk0/n;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$b;->a:Lk0/n;

    new-instance v1, Lcom/google/ai/edge/litertlm/LiteRtLmJniException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Message: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/ai/edge/litertlm/LiteRtLmJniException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lk0/n;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
