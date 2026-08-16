.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$s0;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$f;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b$f;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton$b;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;->access$500(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIButton;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIFontHandler;->m(I)V

    return-void
.end method
