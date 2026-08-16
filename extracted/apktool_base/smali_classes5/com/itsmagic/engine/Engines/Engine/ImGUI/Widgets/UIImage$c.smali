.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage$c;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage$c;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->dpToPx(F)F

    move-result p1

    return p1
.end method
