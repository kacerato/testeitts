.class public LJ9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const-string v1, "#10b178"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    sput-object v0, LJ9/d;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    sput-object v0, LJ9/d;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, LJ9/d;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, LJ9/d;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, LJ9/d;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curve",
            "curveView"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ9/d;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    iput-object p2, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {p0}, LJ9/d;->f()V

    return-void
.end method

.method public static synthetic a(LJ9/d;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;
    .locals 0

    iget-object p0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    return-object p0
.end method

.method public static synthetic b(LJ9/d;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 0

    iget-object p0, p0, LJ9/d;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;
    .locals 1

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    return-object v0
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->d()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LJ9/d;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->B()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LJ9/d;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->z(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget-object v2, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->p()F

    move-result v4

    mul-float/2addr v3, v4

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v4, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->q()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->a(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->v()V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->k()V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->m()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setLineThickness(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setTouchTolerance(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setDotThickness(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setInternalPadding(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setGridSpacing(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/d;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setLineColor(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/d;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setDotColor(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/d;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setGridColor(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/d;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setBackColor(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/d;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setBorderColor(I)V

    iget-object v0, p0, LJ9/d;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    new-instance v1, LJ9/d$a;

    invoke-direct {v1, p0}, LJ9/d$a;-><init>(LJ9/d;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setListener(LK9/d;)V

    return-void
.end method
