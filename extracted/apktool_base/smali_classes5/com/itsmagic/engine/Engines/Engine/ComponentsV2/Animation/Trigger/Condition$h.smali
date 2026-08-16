.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->y(Landroid/content/Context;ZLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$h;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$h;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$h;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition;Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$h;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/Trigger/Condition$l;->a()V

    :cond_0
    return-void
.end method
