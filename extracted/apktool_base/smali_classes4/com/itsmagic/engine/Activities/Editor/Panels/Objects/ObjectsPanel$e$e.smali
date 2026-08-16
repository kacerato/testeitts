.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->z1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->A1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V

    return-void
.end method
