.class public Lt5/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/f;->L1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Landroid/view/View;Landroid/content/Context;Lr4/a$e;Lt5/f$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt5/f;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lt5/f;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$panel",
            "val$totalW",
            "val$totalH"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt5/f$a;->a:Lt5/f;

    iput p2, p0, Lt5/f$a;->b:I

    iput p3, p0, Lt5/f$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanel"
        }
    .end annotation

    iget-object v0, p0, Lt5/f$a;->a:Lt5/f;

    invoke-static {v0, p1}, Lt5/f;->u1(Lt5/f;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v0, p0, Lt5/f$a;->b:I

    iget v1, p0, Lt5/f$a;->c:I

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O1(Z)V

    return-void
.end method
