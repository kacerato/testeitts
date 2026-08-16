.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->O(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;FLandroid/content/Context;)V

    return-void
.end method

.method public b()Li4/e;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->N(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Li4/e;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->M(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->w:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->M(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;)Li4/a;

    move-result-object v0

    iget v0, v0, Li4/a;->b:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->divisionPercentage:F

    return v0
.end method

.method public f(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    return-void
.end method
