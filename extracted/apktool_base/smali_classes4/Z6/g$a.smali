.class public LZ6/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/g;->s1(Ljava/lang/String;LZ6/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:LZ6/g$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZFFIILZ6/g$c;)V
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
            "val$opaque",
            "val$w",
            "val$h",
            "val$totalW",
            "val$totalH",
            "val$showListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZ6/g$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, LZ6/g$a;->b:Z

    iput p3, p0, LZ6/g$a;->c:F

    iput p4, p0, LZ6/g$a;->d:F

    iput p5, p0, LZ6/g$a;->e:I

    iput p6, p0, LZ6/g$a;->f:I

    iput-object p7, p0, LZ6/g$a;->g:LZ6/g$c;

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

    new-instance v0, LZ6/g;

    iget-object v1, p0, LZ6/g$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, LZ6/g;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, LZ6/g;->p1(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget-boolean p1, p0, LZ6/g$a;->b:Z

    if-eqz p1, :cond_0

    iget p1, p0, LZ6/g$a;->c:F

    iget v1, p0, LZ6/g$a;->d:F

    invoke-static {v0, p1, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget p1, p0, LZ6/g$a;->c:F

    iget v1, p0, LZ6/g$a;->d:F

    invoke-static {v0, p1, v1}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    :goto_0
    iput-object p1, v0, LZ6/g;->a0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget v1, p0, LZ6/g$a;->e:I

    iget v2, p0, LZ6/g$a;->f:I

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p1, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, p0, LZ6/g$a;->g:LZ6/g$c;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, LZ6/g$c;->a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_1
    return-void
.end method
