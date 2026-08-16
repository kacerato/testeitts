.class public final Lcom/google/ai/edge/litertlm/c$c;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "com.google.ai.edge.litertlm.Conversation$sendMessageAsync$1"
    f = "Conversation.kt"
    i = {}
    l = {
        0x109
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0x10a
    }
    s = {}
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ai/edge/litertlm/c;->t(Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Lgg/B<",
        "-",
        "Lcom/google/ai/edge/litertlm/d;",
        ">;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/google/ai/edge/litertlm/c;

.field public final synthetic e:Lcom/google/ai/edge/litertlm/d;

.field public final synthetic f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "this$0",
            "$message",
            "$extraContext",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ai/edge/litertlm/c;",
            "Lcom/google/ai/edge/litertlm/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lcom/google/ai/edge/litertlm/c$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ai/edge/litertlm/c$c;->d:Lcom/google/ai/edge/litertlm/c;

    iput-object p2, p0, Lcom/google/ai/edge/litertlm/c$c;->e:Lcom/google/ai/edge/litertlm/d;

    iput-object p3, p0, Lcom/google/ai/edge/litertlm/c$c;->f:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method

.method public static final A()Lnf/P0;
    .locals 1

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0
.end method

.method public static synthetic z()Lnf/P0;
    .locals 1

    invoke-static {}, Lcom/google/ai/edge/litertlm/c$c;->A()Lnf/P0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "*>;)",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/ai/edge/litertlm/c$c;

    iget-object v1, p0, Lcom/google/ai/edge/litertlm/c$c;->d:Lcom/google/ai/edge/litertlm/c;

    iget-object v2, p0, Lcom/google/ai/edge/litertlm/c$c;->e:Lcom/google/ai/edge/litertlm/d;

    iget-object v3, p0, Lcom/google/ai/edge/litertlm/c$c;->f:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/ai/edge/litertlm/c$c;-><init>(Lcom/google/ai/edge/litertlm/c;Lcom/google/ai/edge/litertlm/d;Ljava/util/Map;Lyf/f;)V

    iput-object p1, v0, Lcom/google/ai/edge/litertlm/c$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/B<",
            "-",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c$c;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lcom/google/ai/edge/litertlm/c$c;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lcom/google/ai/edge/litertlm/c$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgg/B;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/ai/edge/litertlm/c$c;->invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$result"
        }
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/ai/edge/litertlm/c$c;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ai/edge/litertlm/c$c;->c:Ljava/lang/Object;

    check-cast p1, Lgg/B;

    iget-object v1, p0, Lcom/google/ai/edge/litertlm/c$c;->d:Lcom/google/ai/edge/litertlm/c;

    iget-object v3, p0, Lcom/google/ai/edge/litertlm/c$c;->e:Lcom/google/ai/edge/litertlm/d;

    new-instance v4, Lcom/google/ai/edge/litertlm/c$c$a;

    invoke-direct {v4, p1}, Lcom/google/ai/edge/litertlm/c$c$a;-><init>(Lgg/B;)V

    iget-object v5, p0, Lcom/google/ai/edge/litertlm/c$c;->f:Ljava/util/Map;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/ai/edge/litertlm/c;->w(Lcom/google/ai/edge/litertlm/d;Lk0/n;Ljava/util/Map;)V

    new-instance v1, Lk0/e;

    invoke-direct {v1}, Lk0/e;-><init>()V

    iput v2, p0, Lcom/google/ai/edge/litertlm/c$c;->b:I

    invoke-static {p1, v1, p0}, Lgg/z;->a(Lgg/B;LMf/a;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
