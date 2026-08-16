.class public abstract Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/UIPBarComponent;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedComponentType"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getOrientation()LR9/a;
.end method

.method public abstract getProgressValue()F
.end method
