.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->getInspectorEntries(Landroid/content/Context;LT9/a;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT9/a;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;LT9/a;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$b;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$b;->a:LT9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZZZZZZZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tl",
            "tc",
            "tr",
            "cl",
            "cc",
            "cr",
            "bl",
            "bc",
            "br"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$b;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$b;->a:LT9/a;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, LT9/a;->a(ZZZZZZZZZ)V

    :cond_0
    return-void
.end method
