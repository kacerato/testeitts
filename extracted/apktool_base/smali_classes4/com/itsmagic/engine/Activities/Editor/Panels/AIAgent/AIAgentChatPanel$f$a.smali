.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->a:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->M1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->N1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->M1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->r1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Z

    move-result v2

    const-wide/16 v3, 0x64

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->u1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v2, v6, v3

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Lt4/c;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->w1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v4, v4, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->M1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lt4/c;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;J)J

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->z1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->u1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v2, v6, v3

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Lt4/c;

    move-result-object v2

    invoke-virtual {v2}, Lt4/c;->l()Z

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->M1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->a(Ljava/lang/String;Z)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Lt4/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lt4/c;->h(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->x1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2, v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Z)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->v1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;J)J

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->z1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    :cond_4
    :goto_0
    return-void
.end method
