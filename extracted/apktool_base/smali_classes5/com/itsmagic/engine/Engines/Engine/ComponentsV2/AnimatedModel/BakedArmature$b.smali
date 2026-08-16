.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;->runOnEngineForListMutation(LJAVARuntime/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LJAVARuntime/Runnable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;LJAVARuntime/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$b;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$b;->b:LJAVARuntime/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/BakedArmature$b;->b:LJAVARuntime/Runnable;

    invoke-interface {v0}, LJAVARuntime/Runnable;->run()V

    return-void
.end method
