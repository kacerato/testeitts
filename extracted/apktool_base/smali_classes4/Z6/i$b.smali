.class public LZ6/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/i;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZLZ6/i$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LZ6/i$h;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:LZ6/i$i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;ZZFFIILZ6/i$i;)V
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
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$tittle",
            "val$finalDescription",
            "val$finalListener",
            "val$hideButton",
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

    iput-object p1, p0, LZ6/i$b;->a:Ljava/lang/String;

    iput-object p2, p0, LZ6/i$b;->b:Ljava/lang/String;

    iput-object p3, p0, LZ6/i$b;->c:LZ6/i$h;

    iput-boolean p4, p0, LZ6/i$b;->d:Z

    iput-boolean p5, p0, LZ6/i$b;->e:Z

    iput p6, p0, LZ6/i$b;->f:F

    iput p7, p0, LZ6/i$b;->g:F

    iput p8, p0, LZ6/i$b;->h:I

    iput p9, p0, LZ6/i$b;->i:I

    iput-object p10, p0, LZ6/i$b;->j:LZ6/i$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v0, LZ6/i;

    iget-object v1, p0, LZ6/i$b;->a:Ljava/lang/String;

    iget-object v2, p0, LZ6/i$b;->b:Ljava/lang/String;

    iget-object v3, p0, LZ6/i$b;->c:LZ6/i$h;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, LZ6/i;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;LZ6/i$a;)V

    invoke-static {v0, p1}, LZ6/i;->p1(LZ6/i;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget-boolean p1, p0, LZ6/i$b;->d:Z

    invoke-static {v0, p1}, LZ6/i;->q1(LZ6/i;Z)Z

    iget-boolean p1, p0, LZ6/i$b;->e:Z

    if-eqz p1, :cond_0

    iget p1, p0, LZ6/i$b;->f:F

    iget v1, p0, LZ6/i$b;->g:F

    invoke-static {v0, p1, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget p1, p0, LZ6/i$b;->f:F

    iget v1, p0, LZ6/i$b;->g:F

    invoke-static {v0, p1, v1}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, LZ6/i;->r1(LZ6/i;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget v1, p0, LZ6/i$b;->h:I

    iget v2, p0, LZ6/i$b;->i:I

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p1, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, p0, LZ6/i$b;->j:LZ6/i$i;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, LZ6/i$i;->a(LZ6/i;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_1
    return-void
.end method
