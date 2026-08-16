.class public LZ6/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/e;->C1(Ljava/lang/String;FFFLZ6/e$i;LZ6/e$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:LZ6/e$i;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:LZ6/e$j;


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFLZ6/e$i;FFLZ6/e$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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
            "val$defaultValue",
            "val$min",
            "val$max",
            "val$listener",
            "val$w",
            "val$h",
            "val$showListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ6/e$b;->a:Ljava/lang/String;

    iput p2, p0, LZ6/e$b;->b:F

    iput p3, p0, LZ6/e$b;->c:F

    iput p4, p0, LZ6/e$b;->d:F

    iput-object p5, p0, LZ6/e$b;->e:LZ6/e$i;

    iput p6, p0, LZ6/e$b;->f:F

    iput p7, p0, LZ6/e$b;->g:F

    iput-object p8, p0, LZ6/e$b;->h:LZ6/e$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v6, LZ6/e;

    iget-object v1, p0, LZ6/e$b;->a:Ljava/lang/String;

    iget v2, p0, LZ6/e$b;->b:F

    iget v3, p0, LZ6/e$b;->c:F

    iget v4, p0, LZ6/e$b;->d:F

    iget-object v5, p0, LZ6/e$b;->e:LZ6/e$i;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LZ6/e;-><init>(Ljava/lang/String;FFFLZ6/e$i;)V

    invoke-static {v6, p1}, LZ6/e;->p1(LZ6/e;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget p1, p0, LZ6/e$b;->f:F

    iget v0, p0, LZ6/e$b;->g:F

    invoke-static {v6, p1, v0}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v6, p1}, LZ6/e;->q1(LZ6/e;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    const/16 v0, 0x82

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    const/16 v2, 0xdc

    invoke-virtual {p1, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v0, p0, LZ6/e$b;->h:LZ6/e$j;

    if-eqz v0, :cond_0

    invoke-interface {v0, v6, p1}, LZ6/e$j;->a(LZ6/e;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_0
    return-void
.end method
