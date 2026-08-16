.class public LZ6/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/f;->y1(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;LZ6/f$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LZ6/f$g;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:I

.field public final synthetic g:LZ6/f$h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;FFILZ6/f$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$tittle",
            "val$defaultText",
            "val$listener",
            "val$w",
            "val$h",
            "val$totalW",
            "val$showListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ6/f$b;->a:Ljava/lang/String;

    iput-object p2, p0, LZ6/f$b;->b:Ljava/lang/String;

    iput-object p3, p0, LZ6/f$b;->c:LZ6/f$g;

    iput p4, p0, LZ6/f$b;->d:F

    iput p5, p0, LZ6/f$b;->e:F

    iput p6, p0, LZ6/f$b;->f:I

    iput-object p7, p0, LZ6/f$b;->g:LZ6/f$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v0, LZ6/f;

    iget-object v1, p0, LZ6/f$b;->a:Ljava/lang/String;

    iget-object v2, p0, LZ6/f$b;->b:Ljava/lang/String;

    iget-object v3, p0, LZ6/f$b;->c:LZ6/f$g;

    invoke-direct {v0, v1, v2, v3}, LZ6/f;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V

    invoke-static {v0, p1}, LZ6/f;->p1(LZ6/f;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget p1, p0, LZ6/f$b;->d:F

    iget v1, p0, LZ6/f$b;->e:F

    invoke-static {v0, p1, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v0, p1}, LZ6/f;->q1(LZ6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget v1, p0, LZ6/f$b;->f:I

    const/16 v2, 0x82

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p1, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, p0, LZ6/f$b;->g:LZ6/f$h;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, LZ6/f$h;->a(LZ6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_0
    return-void
.end method
