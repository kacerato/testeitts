.class public LJ9/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ9/e$a;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LJ9/e$a;


# direct methods
.method public constructor <init>(LJ9/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJ9/e$a$a;->a:LJ9/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v0, v0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v0, v0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v0, v0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->d()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v1, v1, LJ9/e$a;->a:LJ9/e;

    invoke-static {v1}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->B()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v1, v1, LJ9/e$a;->a:LJ9/e;

    invoke-static {v1}, LJ9/e;->a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->z(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget-object v2, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v2, v2, LJ9/e$a;->a:LJ9/e;

    invoke-static {v2}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v2

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v4, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v4, v4, LJ9/e$a;->a:LJ9/e;

    invoke-static {v4}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p()F

    move-result v4

    mul-float/2addr v3, v4

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v4, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v4, v4, LJ9/e$a;->a:LJ9/e;

    invoke-static {v4}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->a(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v0, v0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->v()V

    iget-object v0, p0, LJ9/e$a$a;->a:LJ9/e$a;

    iget-object v0, v0, LJ9/e$a;->a:LJ9/e;

    invoke-static {v0}, LJ9/e;->b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->n()V

    :cond_1
    return-void
.end method
