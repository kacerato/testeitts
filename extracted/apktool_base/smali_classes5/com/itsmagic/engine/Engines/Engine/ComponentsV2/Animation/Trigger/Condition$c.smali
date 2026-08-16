.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$c;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->y(Landroid/content/Context;ZLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;->a()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$c;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/AnimationTrigger$o;)V

    return-void
.end method
