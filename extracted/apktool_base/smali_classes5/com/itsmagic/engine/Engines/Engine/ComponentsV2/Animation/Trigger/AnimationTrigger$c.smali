.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$c$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$c;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
