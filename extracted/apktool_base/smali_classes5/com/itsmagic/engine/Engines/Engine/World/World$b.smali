.class public Lcom/itsmagic/engine/Engines/Engine/World/World$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/World;->u(Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

.field public final synthetic b:LLb/a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/World/World;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/World;Lcom/itsmagic/engine/Engines/Engine/World/World$c;LLb/a;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$bundle",
            "val$listener",
            "val$totalMaterials",
            "val$latch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->e:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->a:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->b:LLb/a;

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->c:I

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->a:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->a:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->F()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->b:LLb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shaders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LLb/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/World$b$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/World/World$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/World$b;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
