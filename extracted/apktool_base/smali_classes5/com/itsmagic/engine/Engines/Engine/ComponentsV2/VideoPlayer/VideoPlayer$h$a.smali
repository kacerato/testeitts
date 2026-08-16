.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoPlayer - set height"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;->access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;I)I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoPlayer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
