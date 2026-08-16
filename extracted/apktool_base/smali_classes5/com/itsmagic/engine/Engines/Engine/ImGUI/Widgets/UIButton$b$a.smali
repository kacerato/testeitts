.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$a$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
