.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->setAnimation(ILJAVARuntime/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;ILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$idx",
            "val$entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$k;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$k;->b:I

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$k;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$k;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$k;->b:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer$k;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;ILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;)V

    return-void
.end method
