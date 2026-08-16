.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->addTransition(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/Animation/d;FLcom/itsmagic/engine/Engines/Engine/Curve/Curve;)Lcom/itsmagic/engine/Engines/Engine/Animation/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

.field public final synthetic e:F

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

.field public final synthetic g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Ljava/util/concurrent/atomic/AtomicReference;Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/Animation/d;FLcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
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
            "val$transitionRef",
            "val$from",
            "val$to",
            "val$delay",
            "val$curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->d:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->e:F

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->d:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->e:F

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$b;->f:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/Animation/d;FLcom/itsmagic/engine/Engines/Engine/Curve/Curve;)Lcom/itsmagic/engine/Engines/Engine/Animation/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
