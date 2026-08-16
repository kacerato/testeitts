.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;->I(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;

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

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;->G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;Landroid/view/View;)V

    :cond_0
    return-void
.end method
