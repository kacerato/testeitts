.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;->K0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$attribute",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$c;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$c;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$c;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$c;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$c;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;->attributeId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;->H0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Attributes/AttributeAccessNode$c;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->C0()V

    return-void
.end method
