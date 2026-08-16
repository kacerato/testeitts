.class public LP6/c$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP6/c;->B1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:LP6/c;


# direct methods
.method public constructor <init>(LP6/c;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP6/c$l;->c:LP6/c;

    iput-object p2, p0, LP6/c$l;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LP6/c$l;->c:LP6/c;

    invoke-static {v3}, LP6/c;->q1(LP6/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LP6/c$l;->c:LP6/c;

    invoke-static {v2}, LP6/c;->p1(LP6/c;)V

    iget-object v2, p0, LP6/c$l;->c:LP6/c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;-><init>()V

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;->ONLY_TEXTURE:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->b(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->i(Ljava/io/File;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc4/a;->j(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, LP6/c$l$a;

    invoke-direct {v1, p0}, LP6/c$l$a;-><init>(LP6/c$l;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, LP6/c$l;->b:Lq7/a;

    invoke-virtual {v1}, Lq7/a;->p1()V

    iget-object v1, p0, LP6/c$l;->c:LP6/c;

    invoke-static {v1}, LP6/c;->t1(LP6/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare texture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, LP6/c$l;->b:Lq7/a;

    invoke-virtual {v2}, Lq7/a;->p1()V

    iget-object v2, p0, LP6/c$l;->c:LP6/c;

    invoke-static {v2}, LP6/c;->t1(LP6/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
