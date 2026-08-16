.class public LZ6/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/h;->C1(Ljava/lang/String;Ljava/lang/String;LZ6/h$h;ZZLZ6/h$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LZ6/h$h;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:LZ6/h$i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LZ6/h$h;ZZFFIILZ6/h$i;)V
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
            "val$description",
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

    iput-object p1, p0, LZ6/h$b;->a:Ljava/lang/String;

    iput-object p2, p0, LZ6/h$b;->b:Ljava/lang/String;

    iput-object p3, p0, LZ6/h$b;->c:LZ6/h$h;

    iput-boolean p4, p0, LZ6/h$b;->d:Z

    iput-boolean p5, p0, LZ6/h$b;->e:Z

    iput p6, p0, LZ6/h$b;->f:F

    iput p7, p0, LZ6/h$b;->g:F

    iput p8, p0, LZ6/h$b;->h:I

    iput p9, p0, LZ6/h$b;->i:I

    iput-object p10, p0, LZ6/h$b;->j:LZ6/h$i;

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

    new-instance v0, LZ6/h;

    iget-object v1, p0, LZ6/h$b;->a:Ljava/lang/String;

    iget-object v2, p0, LZ6/h$b;->b:Ljava/lang/String;

    iget-object v3, p0, LZ6/h$b;->c:LZ6/h$h;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, LZ6/h;-><init>(Ljava/lang/String;Ljava/lang/String;LZ6/h$h;LZ6/h$a;)V

    invoke-static {v0, p1}, LZ6/h;->p1(LZ6/h;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget-boolean p1, p0, LZ6/h$b;->d:Z

    invoke-static {v0, p1}, LZ6/h;->q1(LZ6/h;Z)Z

    iget-boolean p1, p0, LZ6/h$b;->e:Z

    if-eqz p1, :cond_0

    iget p1, p0, LZ6/h$b;->f:F

    iget v1, p0, LZ6/h$b;->g:F

    invoke-static {v0, p1, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget p1, p0, LZ6/h$b;->f:F

    iget v1, p0, LZ6/h$b;->g:F

    invoke-static {v0, p1, v1}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, LZ6/h;->r1(LZ6/h;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget v1, p0, LZ6/h$b;->h:I

    iget v2, p0, LZ6/h$b;->i:I

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p1, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, p0, LZ6/h$b;->j:LZ6/h$i;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, LZ6/h$i;->a(LZ6/h;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_1
    return-void
.end method
