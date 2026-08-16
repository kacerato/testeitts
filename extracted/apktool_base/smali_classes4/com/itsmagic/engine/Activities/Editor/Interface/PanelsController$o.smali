.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Ljava/lang/Object;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$object",
            "val$editorPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$o;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P0(Lo4/a;)V

    return-void
.end method
