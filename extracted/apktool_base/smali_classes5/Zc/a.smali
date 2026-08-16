.class public LZc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LJAVARuntime/GizmoObject;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public d:F

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZc/a;->b:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, LZc/a;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v0, 0x3e99999a    # 0.3f

    .line 4
    iput v0, p0, LZc/a;->d:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, LZc/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZc/a;->b:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, LZc/a;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v1, 0x3e99999a    # 0.3f

    .line 9
    iput v1, p0, LZc/a;->d:F

    const/4 v1, 0x0

    .line 10
    iput v1, p0, LZc/a;->e:I

    .line 11
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "scale"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZc/a;->b:Ljava/util/List;

    .line 14
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, LZc/a;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v1, 0x3e99999a    # 0.3f

    .line 15
    iput v1, p0, LZc/a;->d:F

    const/4 v1, 0x0

    .line 16
    iput v1, p0, LZc/a;->e:I

    .line 17
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    .line 18
    iput p2, p0, LZc/a;->d:F

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget-object v0, p0, LZc/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, LZc/a;->e:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, LZc/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJAVARuntime/GizmoObject;

    invoke-virtual {v0, p1, p2, p3}, LJAVARuntime/GizmoTransform;->setPosition(FFF)V

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    iget p1, p0, LZc/a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LZc/a;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Increase total at setTotal()"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LZc/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, LZc/a;->e:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, LZc/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v0, p1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    iget p1, p0, LZc/a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LZc/a;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Increase total at setTotal()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LZc/a;->e:I

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, LZc/a;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0, p1}, LQ8/a;->b(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LZc/a;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {p0, p1}, LZc/a;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget v0, p0, LZc/a;->a:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v0, LJAVARuntime/GizmoObject;

    const/16 v2, 0xa

    invoke-static {v2}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v2

    invoke-direct {v0, v2}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iget-object v2, p0, LZc/a;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v2

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget v2, p0, LZc/a;->d:F

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoTransform;->setScale(F)V

    iget-object v2, p0, LZc/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object p1, p0, LZc/a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LZc/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LZc/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
