.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->L0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lga/H;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;Lga/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$c;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$c;->a:Lga/H;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$c;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$c;->a:Lga/H;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->H0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;Lga/H;)V

    return-void
.end method
