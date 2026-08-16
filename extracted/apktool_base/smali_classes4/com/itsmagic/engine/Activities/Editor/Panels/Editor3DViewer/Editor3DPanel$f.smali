.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->v2(Lf5/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf5/d;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;ILf5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$idx",
            "val$viewMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->a:I

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->b:Lf5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    return-object v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->n2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->a:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->n2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->a:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->n2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf5/d;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->o2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->n2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf5/d;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->o2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->n2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf5/d;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->o2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->b:Lf5/d;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->g2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel$f;->b:Lf5/d;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;->p2(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;Lf5/d;)V

    return-void
.end method
