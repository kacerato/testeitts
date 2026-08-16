.class public LJ9/e;
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

    sput-object v0, LJ9/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    sput-object v0, LJ9/e;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, LJ9/e;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, LJ9/e;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, LJ9/e;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

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

    iput-object p1, p0, LJ9/e;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    iput-object p2, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {p0}, LJ9/e;->d()V

    return-void
.end method

.method public static synthetic a(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 0

    iget-object p0, p0, LJ9/e;->a:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object p0
.end method

.method public static synthetic b(LJ9/e;)Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;
    .locals 0

    iget-object p0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;
    .locals 1

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    return-object v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setLineThickness(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setTouchTolerance(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setDotThickness(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setInternalPadding(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setEditable(Z)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setGridSpacing(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setLineColor(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/e;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setDotColor(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/e;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setGridColor(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/e;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setBackColor(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    sget-object v1, LJ9/e;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setBorderColor(I)V

    iget-object v0, p0, LJ9/e;->b:Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;

    new-instance v1, LJ9/e$a;

    invoke-direct {v1, p0}, LJ9/e$a;-><init>(LJ9/e;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/graphkit/EditGraphView;->setListener(LK9/d;)V

    return-void
.end method
