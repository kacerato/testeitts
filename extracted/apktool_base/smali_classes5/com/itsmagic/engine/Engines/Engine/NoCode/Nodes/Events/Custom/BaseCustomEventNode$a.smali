.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->I(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->eventName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->eventName:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;->G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Custom/BaseCustomEventNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    :cond_1
    return-void
.end method
