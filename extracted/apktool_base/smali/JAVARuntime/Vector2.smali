.class public final LJAVARuntime/Vector2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/SumOperator;
.implements LJAVARuntime/SubOperator;
.implements LJAVARuntime/MulOperator;
.implements LJAVARuntime/DivOperator;
.implements LJAVARuntime/SumEqualOperator;
.implements LJAVARuntime/SubEqualOperator;
.implements LJAVARuntime/MulEqualOperator;
.implements LJAVARuntime/DivEqualOperator;
.implements LJAVARuntime/EqualsComparator;
.implements LJAVARuntime/GreaterThanComparator;
.implements LJAVARuntime/LessThanComparator;
.implements LJAVARuntime/AddAddOperator;
.implements LJAVARuntime/RemoveRemoveOperator;
.implements LJAVARuntime/JsonSerializer;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    iput-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 10
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iput-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iput-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    int-to-float p1, p1

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iput-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iput-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->z0(LJAVARuntime/Vector2;)V

    return-void
.end method

.method public static genericInterface()LP8/l;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/l;

    new-instance v1, LJAVARuntime/Vector2$1;

    const-class v2, LJAVARuntime/Vector3;

    invoke-direct {v1, v2}, LJAVARuntime/Vector2$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/l;-><init>(LP8/m;)V

    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Vector2$2;

    const-class v2, LJAVARuntime/Vector2;

    invoke-direct {v1, v2}, LJAVARuntime/Vector2$2;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the specified object is null."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o objeto especificado \u00e9 nulo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static rotateAroundPivot(LJAVARuntime/Vector2;F)LJAVARuntime/Vector2;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates the specified Vector2 by the given angle (in degrees) and returns the result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona o Vector2 especificado pelo \u00e2ngulo fornecido (em graus) e retorna o resultado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector",
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector",
            "angle"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LJAVARuntime/Vector2;->copy()LJAVARuntime/Vector2;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->rotateLocal(F)V

    return-object p0
.end method

.method public static rotateAroundPivot(LJAVARuntime/Vector2;LJAVARuntime/Vector2;F)LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates the specified Vector2 around the given pivot point by the specified angle (in degrees) and returns the result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona o Vector2 especificado ao redor do ponto de piv\u00f4 fornecido pelo \u00e2ngulo especificado (em graus) e retorna o resultado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector",
            "pivot",
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vector",
            "pivot",
            "angle"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Vector2;->getY()F

    move-result p0

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result v1

    sub-float/2addr p0, v1

    .line 5
    invoke-static {p2}, LJAVARuntime/Math;->cos(F)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {p2}, LJAVARuntime/Math;->sin(F)F

    move-result v2

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    .line 6
    invoke-static {p2}, LJAVARuntime/Math;->sin(F)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {p2}, LJAVARuntime/Math;->cos(F)F

    move-result p2

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    .line 7
    new-instance p0, LJAVARuntime/Vector2;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result p2

    add-float/2addr v1, p2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    add-float/2addr v0, p1

    invoke-direct {p0, v1, v0}, LJAVARuntime/Vector2;-><init>(FF)V

    return-object p0
.end method

.method public static zero()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector2 with all components set to zero (0, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector2 com todos os componentes definidos como zero (0, 0)."
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->M0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified value to this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado a este Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->d(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public add(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified X and Y values to this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma os valores X e Y especificados a este Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->e(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public add(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Vector2 to this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o Vector2 especificado a este Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public addAdd()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Increments this Vector2 by 1."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Incrementa este Vector2 em 1."
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, LJAVARuntime/Vector2;->sumLocal(F)V

    return-void
.end method

.method public blend(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector2 and the specified value based on the provided blend factor (0 to 1) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector2 e o valor especificado com base no fator de mistura fornecido (0 a 1) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "blend"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->r(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public blend(FFF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector2 and the specified X and Y values based on the provided blend factor (0 to 1) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector2 e os valores X e Y especificados com base no fator de mistura fornecido (0 a 1) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "blend"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->s(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public blend(LJAVARuntime/Vector2;F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector2 and the specified Vector2 based on the provided blend factor (0 to 1) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector2 e o Vector2 especificado com base no fator de mistura fornecido (0 a 1) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector2",
            "blend"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public blendLocal(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector2 and the specified value based on the provided blend factor (0 to 1) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector2 e o valor especificado com base no fator de mistura fornecido (0 a 1) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "blend"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->blendLocal(FF)V

    return-void
.end method

.method public blendLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector2 and the specified X and Y values based on the provided blend factor (0 to 1) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector2 e os valores X e Y especificados com base no fator de mistura fornecido (0 a 1) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "blend"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->v(FFF)V

    return-void
.end method

.method public blendLocal(LJAVARuntime/Vector2;F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector2 and the specified Vector2 based on the provided blend factor (0 to 1) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector2 e o Vector2 especificado com base no fator de mistura fornecido (0 a 1) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector2",
            "blend"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)V

    return-void
.end method

.method public copy()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a copy of this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma c\u00f3pia deste Vector2."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public cross(FF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the cross product of this Vector2 and the specified X and Y values as a Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto vetorial deste Vector2 e dos valores X e Y especificados como um Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->z(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public cross(LJAVARuntime/Vector2;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the cross product of this Vector2 and the specified Vector2 as a Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto vetorial deste Vector2 e do Vector2 especificado como um Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public deserializeLocal(Ljava/lang/String;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Deserializes a String in the format \'[X;Y]\' and sets the values to this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Desserializa uma String no formato \'[X;Y]\' e define os valores neste Vector2."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->z0(LJAVARuntime/Vector2;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-static {v1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->setFromIndex(FI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public distance(LJAVARuntime/Vector2;)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the distance between this Vector2 and the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia entre este Vector2 e o Vector2 especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result p1

    return p1
.end method

.method public div(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified value and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelo valor especificado e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->G(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public div(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified X and Y values and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelos valores X e Y especificados e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->H(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public div(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelo Vector2 especificado e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public div(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the division of this Vector2 by the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a divis\u00e3o deste Vector2 pelo objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4
    new-instance v0, LJAVARuntime/Vector2;

    invoke-direct {v0}, LJAVARuntime/Vector2;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Vector2;->set(LJAVARuntime/Vector2;)V

    .line 6
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, LJAVARuntime/Vector3;

    .line 8
    invoke-virtual {v0, p1}, LJAVARuntime/Vector2;->divLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, LJAVARuntime/Vector2;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Vector2;->divLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 12
    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator / is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public divEqual(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelo objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Vector3;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->divLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->divLocal(LJAVARuntime/Vector2;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator /= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public divLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified value and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelo valor especificado e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public divLocal(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified X and Y values and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelos valores X e Y especificados e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->D(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public divLocal(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelo Vector2 especificado e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public divLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified Vector3 (using only X and Y components) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelo Vector3 especificado (usando apenas os componentes X e Y) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public divide(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified value and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelo valor especificado e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->G(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public divide(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified X and Y values and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelos valores X e Y especificados e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->H(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public divide(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector2 by the specified Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector2 pelo Vector2 especificado e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public dot(F)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the dot product of this Vector2 and the specified value, used for both components."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto escalar deste Vector2 com o valor especificado, usado para ambos os componentes."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->dot(F)F

    move-result p1

    return p1
.end method

.method public dot(FF)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the dot product of this Vector2 and the specified X and Y values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto escalar deste Vector2 e dos valores X e Y especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->L(FF)F

    move-result p1

    return p1
.end method

.method public dot(LJAVARuntime/Vector2;)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the dot product of this Vector2 and the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto escalar deste Vector2 e do Vector2 especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->N(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result p1

    return p1
.end method

.method public equals(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if all components of this Vector2 are equal to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se todos os componentes este Vector2 \u00e9 igual ao valor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public equals(FF)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is equal to the specified X and Y values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 igual aos valores X e Y especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FF)Z

    move-result p1

    return p1
.end method

.method public equals(LJAVARuntime/Vector2;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is equal to the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 igual ao Vector2 especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is equal to the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 igual ao objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 4
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, LJAVARuntime/Vector3;

    .line 6
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, LJAVARuntime/Vector2;

    .line 9
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator == is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getX()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the X component of this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente X deste Vector2."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Y component of this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente Y deste Vector2."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return v0
.end method

.method public greaterOrEqualsThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior ou igual ao valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    float-to-double v0, v0

    cmpl-double p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterOrEqualsThan(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior ou igual ao valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterOrEqualsThan(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior ou igual ao valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterOrEqualsThan(J)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior ou igual ao valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 10
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    long-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterOrEqualsThan(Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than or equal to the specified object (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior ou igual ao objeto especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 1
    instance-of v0, p1, LJAVARuntime/Vector3;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, LJAVARuntime/Vector3;

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    iget-object v3, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 4
    :cond_2
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_5

    .line 5
    check-cast p1, LJAVARuntime/Vector2;

    .line 6
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    iget-object v3, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_4

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    .line 7
    :cond_5
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator >= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greaterThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior que o valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    float-to-double v0, v0

    cmpl-double p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterThan(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior que o valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterThan(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior que o valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterThan(J)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior que o valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 10
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    long-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public greaterThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is greater than the specified object (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 maior que o objeto especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 1
    instance-of v0, p1, LJAVARuntime/Vector3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, LJAVARuntime/Vector3;

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4
    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, LJAVARuntime/Vector2;

    .line 6
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator > is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the length (magnitude) of this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o comprimento (magnitude) deste Vector2."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->S()F

    move-result v0

    return v0
.end method

.method public lerp(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector2 and the specified value based on the provided speed/interval and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector2 e o valor especificado com base na velocidade/intervalo fornecido e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->W(FF)V

    return-void
.end method

.method public lerp(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector2 and the specified X and Y values based on the provided speed/interval and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector2 e os valores X e Y especificados com base na velocidade/intervalo fornecido e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->X(FFF)V

    return-void
.end method

.method public lerp(LJAVARuntime/Vector2;F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector2 and the specified Vector2 based on the provided speed/interval and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector2 e o Vector2 especificado com base na velocidade/intervalo fornecido e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector2",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)V

    return-void
.end method

.method public lerpInSeconds(FF)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector2 and the specified value based on the provided speed/interval in one second and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector2 e o valor especificado com base na velocidade/intervalo fornecido em um segundo e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->W(FF)V

    return-void
.end method

.method public lerpInSeconds(FFF)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector2 and the specified X and Y values based on the provided speed/interval in one second and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector2 e os valores X e Y especificados com base na velocidade/intervalo fornecido em um segundo e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->X(FFF)V

    return-void
.end method

.method public lerpInSeconds(LJAVARuntime/Vector2;F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector2 and the specified Vector2 based on the provided speed/interval in one second and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector2 e o Vector2 especificado com base na velocidade/intervalo fornecido em um segundo e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector2",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)V

    return-void
.end method

.method public lessOrEqualsThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor ou igual ao valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    float-to-double v0, v0

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessOrEqualsThan(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor ou igual ao valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessOrEqualsThan(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor ou igual ao valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessOrEqualsThan(J)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor ou igual ao valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 10
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    long-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessOrEqualsThan(Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than or equal to the specified object (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor ou igual ao objeto especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 1
    instance-of v0, p1, LJAVARuntime/Vector3;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, LJAVARuntime/Vector3;

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    iget-object v3, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 4
    :cond_2
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_5

    .line 5
    check-cast p1, LJAVARuntime/Vector2;

    .line 6
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    iget-object v3, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    .line 7
    :cond_5
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator <= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lessThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor que o valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    float-to-double v0, v0

    cmpg-double p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor que o valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 8
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor que o valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(J)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor que o valor especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 10
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->lengthF()F

    move-result v0

    long-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lessThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is less than the specified object (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 menor que o objeto especificado (pela magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .line 1
    instance-of v0, p1, LJAVARuntime/Vector3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, LJAVARuntime/Vector3;

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4
    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, LJAVARuntime/Vector2;

    .line 6
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 7
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator < is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mul(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified value and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelo valor especificado e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->d0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public mul(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified X and Y values and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelos valores X e Y especificados e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->e0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public mul(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelo Vector2 especificado e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public mul(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the multiplication of this Vector2 by the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a multiplica\u00e7\u00e3o deste Vector2 pelo objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4
    new-instance v0, LJAVARuntime/Vector2;

    invoke-direct {v0}, LJAVARuntime/Vector2;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Vector2;->set(LJAVARuntime/Vector2;)V

    .line 6
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, LJAVARuntime/Vector3;

    .line 8
    invoke-virtual {v0, p1}, LJAVARuntime/Vector2;->mulLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, LJAVARuntime/Vector2;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Vector2;->mulLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 12
    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator * is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mulEqual(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelo objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Vector3;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->mulLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->mulLocal(LJAVARuntime/Vector2;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator *= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mulLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified value and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelo valor especificado e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Z(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public mulLocal(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified X and Y values and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelos valores X e Y especificados e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->a0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public mulLocal(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelo Vector2 especificado e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->b0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public mulLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified Vector3 (using only X and Y components) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelo Vector3 especificado (usando apenas os componentes X e Y) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->c0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public multiply(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified value and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelo valor especificado e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->d0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public multiply(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified X and Y values and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelos valores X e Y especificados e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->e0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public multiply(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector2 by the specified Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector2 pelo Vector2 especificado e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public normalize()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a normalized copy of this Vector2 (length equals 1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma c\u00f3pia normalizada deste Vector2 (comprimento igual a 1)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public normalizeLocal()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Normalizes this Vector2 (sets its length to 1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Normaliza este Vector2 (define seu comprimento para 1)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public notEquals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is not equal to the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 n\u00e3o \u00e9 igual ao objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Vector3;

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator != is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pointerEquals(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector2 is the same instance as the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector2 \u00e9 a mesma inst\u00e2ncia do objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeRemove()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Decrements this Vector2 by 1."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Decrementa este Vector2 em 1."
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, LJAVARuntime/Vector2;->sumLocal(F)V

    return-void
.end method

.method public rotateLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates this Vector2 by the specified angle (in degrees) and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona este Vector2 pelo \u00e2ngulo especificado (em graus) e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->u0(F)V

    return-void
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a String representation of this Vector2 in the format \'[X;Y]\'."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma representa\u00e7\u00e3o em String deste Vector2 no formato \'[X;Y]\'."
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LJAVARuntime/Vector2;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets all components of this Vector2 to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define todos os componentes deste Vector2 para o valor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->v0(F)V

    return-void
.end method

.method public set(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the components of this Vector2 to the specified X and Y values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes deste Vector2 para os valores X e Y especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void
.end method

.method public set(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the components of this Vector2 to the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes deste Vector2 para o Vector2 especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public setX(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the X component of this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o componente X deste Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Y component of this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o componente Y deste Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    return-void
.end method

.method public sqrDistance(LJAVARuntime/Vector2;)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the squared distance between this Vector2 and the specified Vector2. Faster than distance() as it doesn\'t use a square root; useful for comparing distances."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia ao quadrado entre este Vector2 e o Vector2 especificado. Mais r\u00e1pido que distance() pois n\u00e3o usa raiz quadrada; \u00fatil para comparar dist\u00e2ncias."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)F

    move-result p1

    return p1
.end method

.method public sqrLength()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the squared length of this Vector2. Faster than length() as it doesn\'t use a square root; useful for comparing distances."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o comprimento ao quadrado deste Vector2. Mais r\u00e1pido que length() pois n\u00e3o usa raiz quadrada; \u00fatil para comparar dist\u00e2ncias."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v0

    return v0
.end method

.method public sub(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified value from this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado deste Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public sub(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified X and Y values from this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai os valores X e Y especificados deste Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->m0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public sub(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector2 from this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector2 especificado deste Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public sub(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the subtraction of this Vector2 and the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a subtra\u00e7\u00e3o deste Vector2 e do objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4
    new-instance v0, LJAVARuntime/Vector2;

    invoke-direct {v0}, LJAVARuntime/Vector2;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Vector2;->set(LJAVARuntime/Vector2;)V

    .line 6
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, LJAVARuntime/Vector3;

    .line 8
    invoke-virtual {v0, p1}, LJAVARuntime/Vector2;->subLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, LJAVARuntime/Vector2;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Vector2;->subLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 12
    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator - is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subEqual(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified object from this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o objeto especificado deste Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Vector3;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->subLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->subLocal(LJAVARuntime/Vector2;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator -= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified value from this Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado deste Vector2 e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->G0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public subLocal(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified X and Y values from this Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai os valores X e Y especificados deste Vector2 e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->H0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public subLocal(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector2 from this Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector2 especificado deste Vector2 e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public subLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector3 (using only X and Y components) from this Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector3 especificado (usando apenas os componentes X e Y) deste Vector2 e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->J0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public subtract(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified value from this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado deste Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public subtract(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified X and Y values from this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai os valores X e Y especificados deste Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->m0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public subtract(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector2 from this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector2 especificado deste Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public sum(F)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified value to this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado a este Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->d(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public sum(FF)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified X and Y values to this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma os valores X e Y especificados a este Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->e(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public sum(LJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Vector2 to this Vector2 and returns a new Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o Vector2 especificado a este Vector2 e retorna um novo Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public sum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the sum of this Vector2 and the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a soma deste Vector2 e do objeto especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4
    new-instance v0, LJAVARuntime/Vector2;

    invoke-direct {v0}, LJAVARuntime/Vector2;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Vector2;->set(LJAVARuntime/Vector2;)V

    .line 6
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, LJAVARuntime/Vector3;

    .line 8
    invoke-virtual {v0, p1}, LJAVARuntime/Vector2;->sumLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, LJAVARuntime/Vector2;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Vector2;->sumLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 12
    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator + is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sumEqual(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sums the specified object to this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o objeto especificado a este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Vector3;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sumLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector2;->sumLocal(LJAVARuntime/Vector2;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator += is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sumLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified value to this Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado a este Vector2 e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->m(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public sumLocal(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified X and Y values to this Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma os valores X e Y especificados a este Vector2 e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->n(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public sumLocal(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Vector2 to this Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o Vector2 especificado a este Vector2 e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public sumLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Vector3 (using only X and Y components) to this Vector2 and updates this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o Vector3 especificado (usando apenas os componentes X e Y) a este Vector2 e atualiza este Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a String representation of this Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma representa\u00e7\u00e3o em String deste Vector2."
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a String representation of this Vector2 with the specified number of decimal places."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma representa\u00e7\u00e3o em String deste Vector2 com o n\u00famero especificado de casas decimais."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "decimals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decimals"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
