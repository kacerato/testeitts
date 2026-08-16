.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a;->b(Ljd/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$4",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AnimationPlayer - add animation entry"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a$a;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$g;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

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
