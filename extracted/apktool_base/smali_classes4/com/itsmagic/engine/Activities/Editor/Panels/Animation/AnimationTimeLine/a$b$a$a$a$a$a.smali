.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$5"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lu4/a;->d(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;)V

    :cond_0
    return-void
.end method
