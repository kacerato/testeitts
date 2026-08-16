.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, Ln4/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ln4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    return-void
.end method
