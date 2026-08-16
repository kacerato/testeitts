.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->y(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

.field public final synthetic f:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

.field public final synthetic g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;[Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$contextObjectJson",
            "val$input",
            "val$promptMode",
            "val$callback",
            "val$promptMessageObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    iput-object p5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "Execute this plan:\n"

    const-string v1, "I will execute this plan:\n"

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->c:Ljava/lang/String;

    const-wide/32 v4, 0x493e0

    invoke-static {v3, v4, v5, v2}, LC3/b;->e(Ljava/lang/String;JLcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LC3/a;->h(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$g;->b:[I

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/o;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->EXPLAIN:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-static {v0, v2, v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->a()V

    return-void

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;->AI_ANSWER:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v1, v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->b(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->PLANNING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-static {v3, v2, v4, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->a()V

    return-void

    :cond_3
    :try_start_0
    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;)V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ""

    move v6, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    if-lez v6, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v3

    goto/16 :goto_2

    :cond_4
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    move v6, v4

    move-object v4, v9

    goto :goto_0

    :cond_5
    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;->AI_ANSWER:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v3, v4, v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->b(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->b:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {v4, v3, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    invoke-static {v4, v3, v6, v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    return-void

    :cond_6
    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;->AI_ANSWER:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v3, v2, v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->b(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->b:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {v4, v3, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    invoke-static {v4, v3, v6, v5, v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;->AI_ANSWER:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v1, v2, v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->b(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->b:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v1, v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->f:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    invoke-static {v1, v0, v2, v5, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->NORMAL:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-static {v0, v2, v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->d(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->a()V

    return-void

    :cond_8
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;->AI_ANSWER:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/n;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v1, v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->b(Ljava/lang/String;Z)V

    return-void
.end method
