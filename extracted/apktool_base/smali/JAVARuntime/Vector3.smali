.class public final LJAVARuntime/Vector3;
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
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 8
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 12
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 20
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    int-to-float p3, p3

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 28
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public constructor <init>(I)V
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    int-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 16
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 35
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    int-to-float p1, p1

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 36
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    int-to-float p1, p1

    int-to-float p3, p3

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 32
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 40
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 24
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
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
    iput-object p1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public static Max(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a new Vector3 with the largest component values from the two given vectors."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um novo Vector3 com os maiores valores de cada componente entre os dois vetores fornecidos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value1",
            "value2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value1",
            "value2"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v2

    invoke-static {v1, v2}, LNc/b;->S0(FF)F

    move-result v1

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v3

    invoke-static {v2, v3}, LNc/b;->S0(FF)F

    move-result v2

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getZ()F

    move-result p0

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    invoke-static {p0, p1}, LNc/b;->S0(FF)F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, LJAVARuntime/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Min(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a new Vector3 with the smallest component values from the two given vectors."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um novo Vector3 com os menores valores de cada componente entre os dois vetores fornecidos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value1",
            "value2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value1",
            "value2"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v2

    invoke-static {v1, v2}, LNc/b;->X0(FF)F

    move-result v1

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v3

    invoke-static {v2, v3}, LNc/b;->X0(FF)F

    move-result v2

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getZ()F

    move-result p0

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    invoke-static {p0, p1}, LNc/b;->X0(FF)F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, LJAVARuntime/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public static Negate(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a new Vector3 with all components inverted (multiplied by -1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um novo Vector3 com todos os componentes invertidos (multiplicados por -1)."
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

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, LJAVARuntime/Vector3;->mul(F)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static angle(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)F
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the angle in degrees between the two specified vectors."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o \u00e2ngulo em graus entre os dois vetores especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->angle(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p0

    return p0
.end method

.method public static back()LJAVARuntime/Vector3;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector3 pointing backwards (0, 0, -1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector3 apontando para tr\u00e1s (0, 0, -1)."
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, LJAVARuntime/Vector3;-><init>(III)V

    return-object v0
.end method

.method public static down()LJAVARuntime/Vector3;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector3 pointing downwards (0, -1, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector3 apontando para baixo (0, -1, 0)."
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v1}, LJAVARuntime/Vector3;-><init>(III)V

    return-object v0
.end method

.method public static forward()LJAVARuntime/Vector3;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector3 pointing forwards (0, 0, 1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector3 apontando para frente (0, 0, 1)."
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, LJAVARuntime/Vector3;-><init>(III)V

    return-object v0
.end method

.method public static genericInterface()LP8/l;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/l;

    new-instance v1, LJAVARuntime/Vector3$1;

    const-class v2, LJAVARuntime/Vector3;

    invoke-direct {v1, v2}, LJAVARuntime/Vector3$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/l;-><init>(LP8/m;)V

    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Vector3$2;

    const-class v2, LJAVARuntime/Vector3;

    invoke-direct {v1, v2}, LJAVARuntime/Vector3$2;-><init>(Ljava/lang/Class;)V

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

.method public static left()LJAVARuntime/Vector3;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector3 pointing to the left (-1, 0, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector3 apontando para a esquerda (-1, 0, 0)."
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LJAVARuntime/Vector3;-><init>(III)V

    return-object v0
.end method

.method public static one()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector3 with all components set to one (1, 1, 1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector3 com todos os componentes definidos como um (1, 1, 1)."
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->one()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public static reflect(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Reflects direction vector off a plane defined by the normal."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Reflete o vetor de dire\u00e7\u00e3o em um plano definido pela normal."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "dir",
            "normal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "normal"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    invoke-static {p0, p1, v0}, LJAVARuntime/Vector3;->reflect(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static reflect(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Reflects direction vector off a plane defined by the normal and stores the result in the specified vector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Reflete o vetor de dire\u00e7\u00e3o em um plano definido pela normal e armazena o resultado no vetor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "dir",
            "normal",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dir",
            "normal",
            "out"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    new-instance p2, LJAVARuntime/Vector3;

    invoke-direct {p2}, LJAVARuntime/Vector3;-><init>()V

    .line 3
    :cond_0
    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->reflect(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static right()LJAVARuntime/Vector3;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector3 pointing to the right (1, 0, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector3 apontando para a direita (1, 0, 0)."
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LJAVARuntime/Vector3;-><init>(III)V

    return-object v0
.end method

.method public static smoothDamp(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;FFF)LJAVARuntime/Vector3;
    .locals 7
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Smoothly moves the current vector towards the target vector with smoothing control, maximum speed, in the defined interval."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Move o vetor current suavemente em dire\u00e7\u00e3o ao target com controle de suaviza\u00e7\u00e3o, velocidade m\u00e1xima, no intervalo definido."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "current",
            "target",
            "velocity",
            "smoothTime",
            "maxSpeed",
            "deltaTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "velocity",
            "smoothTime",
            "maxSpeed",
            "deltaTime"
        }
    .end annotation

    .line 1
    new-instance v6, LJAVARuntime/Vector3;

    invoke-direct {v6}, LJAVARuntime/Vector3;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, LJAVARuntime/Vector3;->smoothDamp(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;FFFLJAVARuntime/Vector3;)LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static smoothDamp(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;FFFLJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 7
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Smoothly moves the current vector towards the target vector with smoothing control, maximum speed, in the defined interval and stores the result in the specified vector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Move o vetor current suavemente em dire\u00e7\u00e3o ao target com controle de suaviza\u00e7\u00e3o, velocidade m\u00e1xima, no intervalo definido e armazena o resultado no vetor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "current",
            "target",
            "velocity",
            "smoothTime",
            "maxSpeed",
            "deltaTime",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "velocity",
            "smoothTime",
            "maxSpeed",
            "deltaTime",
            "out"
        }
    .end annotation

    if-nez p6, :cond_0

    .line 2
    new-instance p6, LJAVARuntime/Vector3;

    invoke-direct {p6}, LJAVARuntime/Vector3;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, p6, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->smoothDamp(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static triangleNormal(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Calculates the normal of the triangle defined by the three specified vertices."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Calcula a normal do tri\u00e2ngulo definido pelos tr\u00eas v\u00e9rtices especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->triangleNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "c vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "a vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static triangleNormal(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Calculates the normal of the triangle defined by the three specified vertices and stores the result in the specified vector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Calcula a normal do tri\u00e2ngulo definido pelos tr\u00eas v\u00e9rtices especificados e armazena o resultado no vetor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b",
            "c",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c",
            "out"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 5
    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p3, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->triangleNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "c vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "a vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static up()LJAVARuntime/Vector3;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector3 pointing upwards (0, 1, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector3 apontando para cima (0, 1, 0)."
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, LJAVARuntime/Vector3;-><init>(III)V

    return-object v0
.end method

.method public static zero()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector3 with all components set to zero (0, 0, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector3 com todos os componentes definidos como zero (0, 0, 0)."
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->zero()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified value to this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado a este Vector3 e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public add(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified X, Y and Z values to this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma os valores X, Y e Z especificados a este Vector3 e retorna um novo Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public add(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Vector3 to this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o Vector3 especificado a este Vector3 e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public addAdd()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Increments this Vector3 by 1."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Incrementa este Vector3 em 1."
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, LJAVARuntime/Vector3;->sumLocal(F)V

    return-void
.end method

.method public blend(FF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector3 and the specified value based on the provided blend factor (0 to 1) and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector3 e o valor especificado com base no fator de mistura fornecido (0 a 1) e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->blend(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public blend(FFFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector3 and the specified X, Y and Z values based on the provided blend factor (0 to 1) and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector3 e os valores X, Y e Z especificados com base no fator de mistura fornecido (0 a 1) e atualiza este Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blend"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->blend(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public blend(LJAVARuntime/Vector3;F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector3 and the specified Vector3 based on the provided blend factor (0 to 1) and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector3 e o Vector3 especificado com base no fator de mistura fornecido (0 a 1) e atualiza este Vector3."
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
            "vector3",
            "blend"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->blend(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public blendLocal(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector3 and the specified value based on the provided blend factor (0 to 1) and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector3 e o valor especificado com base no fator de mistura fornecido (0 a 1) e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->blendLocal(FF)V

    return-void
.end method

.method public blendLocal(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector3 and the specified X, Y and Z values based on the provided blend factor (0 to 1) and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector3 e os valores X, Y e Z especificados com base no fator de mistura fornecido (0 a 1) e atualiza este Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blend"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->blendLocal(FFFF)V

    return-void
.end method

.method public blendLocal(LJAVARuntime/Vector3;F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between this Vector3 and the specified Vector3 based on the provided blend factor (0 to 1) and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre este Vector3 e o Vector3 especificado com base no fator de mistura fornecido (0 a 1) e atualiza este Vector3."
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
            "vector3",
            "blend"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->blendLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void
.end method

.method public copy()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a copy of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma c\u00f3pia deste Vector3."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public cross(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the cross product of this Vector3 and the specified X, Y and Z values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto vetorial deste Vector3 e dos valores X, Y e Z especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public cross(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the cross product of this Vector3 and the specified Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto vetorial deste Vector3 e do Vector3 especificado."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public deserializeLocal(Ljava/lang/String;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Deserializes a String in the format \'[X;Y;Z]\' and sets the values to this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Desserializa uma String no formato \'[X;Y;Z]\' e define os valores neste Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setRuntime(LJAVARuntime/Vector3;)V

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

    iget-object v2, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setFromIndex(FI)V
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

.method public distance(LJAVARuntime/Vector3;)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the distance between this Vector3 and the specified Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia entre este Vector3 e o Vector3 especificado."
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
            "vector3"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    return p1
.end method

.method public div(F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified value and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelo valor especificado e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->div(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public div(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified X, Y and Z values and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelos valores X, Y e Z especificados e retorna um novo Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->div(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public div(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelo Vector3 especificado e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->div(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public div(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the division of this Vector3 by the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a divis\u00e3o deste Vector3 pelo objeto especificado."
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
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    .line 6
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, LJAVARuntime/Vector3;

    .line 8
    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->divLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, LJAVARuntime/Vector2;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->divLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 12
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->divLocal(F)V

    return-object v0

    .line 15
    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator / is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Divides this Vector3 by the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelo objeto especificado."
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

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->divLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, LJAVARuntime/Vector3;->divLocal(FFF)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->divLocal(F)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator /= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Divides this Vector3 by the specified value and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelo valor especificado e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public divLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified X, Y and Z values and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelos valores X, Y e Z especificados e atualiza este Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public divLocal(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified Vector2 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelo Vector2 especificado e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public divLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelo Vector3 especificado e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public divX(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the X component of this Vector3 by the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide o componente X deste Vector3 pelo valor especificado."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public divY(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the Y component of this Vector3 by the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide o componente Y deste Vector3 pelo valor especificado."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public divZ(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the Z component of this Vector3 by the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide o componente Z deste Vector3 pelo valor especificado."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public divide(F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified value and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelo valor especificado e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->div(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public divide(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified X, Y and Z values and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelos valores X, Y e Z especificados e retorna um novo Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->div(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public divide(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides this Vector3 by the specified Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide este Vector3 pelo Vector3 especificado e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->div(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public dot(F)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the dot product of this Vector3 and the specified value, used for all components."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto escalar deste Vector3 com o valor especificado, usado para todos os componentes."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(F)F

    move-result p1

    return p1
.end method

.method public dot(FFF)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the dot product of this Vector3 and the specified X, Y and Z values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto escalar deste Vector3 e dos valores X, Y e Z especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(FFF)F

    move-result p1

    return p1
.end method

.method public dot(LJAVARuntime/Vector3;)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the dot product of this Vector3 and the specified Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o produto escalar deste Vector3 e do Vector3 especificado."
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
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    return p1
.end method

.method public equals(F)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if all components of this Vector3 are equal to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se todos os componentes este Vector3 \u00e9 igual ao valor especificado."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public equals(FFF)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector3 is equal to the specified X, Y and Z values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 igual aos valores X, Y e Z especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)Z

    move-result p1

    return p1
.end method

.method public equals(LJAVARuntime/Vector3;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector3 is equal to the specified Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 igual ao Vector3 especificado."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector3 is equal to the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 igual ao objeto especificado."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, LJAVARuntime/Vector2;

    .line 9
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator == is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Returns the X component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente X deste Vector3."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    return v0
.end method

.method public getXY()LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector2 with the X and Y components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector2 com os componentes X e Y deste Vector3."
    .end annotation

    new-instance v0, LJAVARuntime/Vector2;

    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public getXZ()LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector2 with the X and Z components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector2 com os componentes X e Z deste Vector3."
    .end annotation

    new-instance v0, LJAVARuntime/Vector2;

    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public getY()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Y component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente Y deste Vector3."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    return v0
.end method

.method public getYX()LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector2 with the Y and X components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector2 com os componentes Y e X deste Vector3."
    .end annotation

    new-instance v0, LJAVARuntime/Vector2;

    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public getYZ()LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector2 with the Y and Z components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector2 com os componentes Y e Z deste Vector3."
    .end annotation

    new-instance v0, LJAVARuntime/Vector2;

    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public getZ()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Z component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o componente Z deste Vector3."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    return v0
.end method

.method public getZX()LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector2 with the Z and X components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector2 com os componentes Z e X deste Vector3."
    .end annotation

    new-instance v0, LJAVARuntime/Vector2;

    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public getZY()LJAVARuntime/Vector2;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a Vector2 with the Z and Y components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um Vector2 com os componentes Z e Y deste Vector3."
    .end annotation

    new-instance v0, LJAVARuntime/Vector2;

    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public greaterOrEqualsThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector3 is greater than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior ou igual ao valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is greater than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior ou igual ao valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is greater than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior ou igual ao valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is greater than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior ou igual ao valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is greater than or equal to the specified object (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior ou igual ao objeto especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v0

    iget-object v3, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v0

    iget-object v3, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_4

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

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

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Checks if this Vector3 is greater than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior que o valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is greater than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior que o valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is greater than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior que o valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is greater than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior que o valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is greater than the specified object (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 maior que o objeto especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

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

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Returns the length (magnitude) of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o comprimento (magnitude) deste Vector3."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v0

    return v0
.end method

.method public lerp(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector3 and the specified value based on the provided speed/interval and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector3 e o valor especificado com base na velocidade/intervalo fornecido e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lerpLocal(FF)V

    return-void
.end method

.method public lerp(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector3 and the specified X, Y and Z values based on the provided speed/interval and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector3 e os valores X, Y e Z especificados com base na velocidade/intervalo fornecido e atualiza este Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lerpLocal(FFFF)V

    return-void
.end method

.method public lerp(LJAVARuntime/Vector3;F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector3 and the specified Vector3 based on the provided speed/interval and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector3 e o Vector3 especificado com base na velocidade/intervalo fornecido e atualiza este Vector3."
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
            "vector3",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lerpLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void
.end method

.method public lerpInSeconds(FF)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector3 and the specified value based on the provided speed/interval in one second and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector3 e o valor especificado com base na velocidade/intervalo fornecido em um segundo e atualiza esse Vector3."
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

    .line 7
    invoke-static {}, LK8/d;->b()F

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    .line 8
    invoke-static {v1, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    .line 9
    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lerpLocal(FF)V

    return-void
.end method

.method public lerpInSeconds(FFFF)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector3 and the specified X, Y and Z values based on the provided speed/interval in one second and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector3 e os valores X, Y e Z especificados com base na velocidade/intervalo fornecido em um segundo e atualiza esse Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .line 4
    invoke-static {}, LK8/d;->b()F

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    .line 5
    invoke-static {v1, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    .line 6
    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr p4, v0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lerpLocal(FFFF)V

    return-void
.end method

.method public lerpInSeconds(LJAVARuntime/Vector3;F)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between this Vector3 and the specified Vector3 based on the provided speed/interval in one second and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre este Vector3 e o Vector3 especificado com base na velocidade/intervalo fornecido em um segundo e atualiza esse Vector3."
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
            "vector3",
            "speed"
        }
    .end annotation

    .line 1
    invoke-static {}, LK8/d;->b()F

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    .line 2
    invoke-static {v1, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    .line 3
    iget-object v1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lerpLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void
.end method

.method public lessOrEqualsThan(D)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector3 is less than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor ou igual ao valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is less than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor ou igual ao valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is less than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor ou igual ao valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is less than or equal to the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor ou igual ao valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is less than or equal to the specified object (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor ou igual ao objeto especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v0

    iget-object v3, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v0

    iget-object v3, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

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

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Checks if this Vector3 is less than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor que o valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is less than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor que o valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is less than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor que o valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is less than the specified value (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor que o valor especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

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
        value = "Checks if this Vector3 is less than the specified object (by magnitude)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 menor que o objeto especificado (pela magnitude)."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

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

    const-class v2, LJAVARuntime/Vector3;

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

.method public magnitude()F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the magnitude of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a magnitude deste Vector3."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->magnitude()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public mul(F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified value and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelo valor especificado e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified X, Y and Z values and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelos valores X, Y e Z especificados e retorna um novo Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelo Vector3 especificado e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the multiplication of this Vector3 by the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a multiplica\u00e7\u00e3o deste Vector3 pelo objeto especificado."
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
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    .line 6
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, LJAVARuntime/Vector3;

    .line 8
    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->mulLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, LJAVARuntime/Vector2;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->mulLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 12
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->mulLocal(F)V

    return-object v0

    .line 15
    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator * is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Multiplies this Vector3 by the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelo objeto especificado."
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

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->mulLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, LJAVARuntime/Vector3;->mulLocal(FFF)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->mulLocal(F)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator *= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Multiplies this Vector3 by the specified value and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelo valor especificado e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public mulLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified X, Y and Z values and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelos valores X, Y e Z especificados e atualiza este Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public mulLocal(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified Vector2 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelo Vector2 especificado e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public mulLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelo Vector3 especificado e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public mulX(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the X component of this Vector3 by the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica o componente X deste Vector3 pelo valor especificado."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public mulY(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the Y component of this Vector3 by the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica o componente Y deste Vector3 pelo valor especificado."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public mulZ(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the Z component of this Vector3 by the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica o componente Z deste Vector3 pelo valor especificado."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public multiply(F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified value and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelo valor especificado e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public multiply(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified X, Y and Z values and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelos valores X, Y e Z especificados e retorna um novo Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public multiply(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies this Vector3 by the specified Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica este Vector3 pelo Vector3 especificado e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mul(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public normalize()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a normalized copy of this Vector3 (length equals 1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma c\u00f3pia normalizada deste Vector3 (comprimento igual a 1)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public normalizeLocal()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Normalizes this Vector3 (sets its length to 1)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Normaliza este Vector3 (define seu comprimento para 1)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public notEquals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this Vector3 is not equal to the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 n\u00e3o \u00e9 igual ao objeto especificado."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator != is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Checks if this Vector3 is the same instance as the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este Vector3 \u00e9 a mesma inst\u00e2ncia do objeto especificado."
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
        value = "Decrements this Vector3 by 1."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Decrementa este Vector3 em 1."
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, LJAVARuntime/Vector3;->sumLocal(F)V

    return-void
.end method

.method public rotate(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates this Vector3 by the specified angles (in degrees) and returns the resulting Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona este Vector3 pelos \u00e2ngulos especificados (em graus) e retorna o Vector3 resultante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angleX",
            "angleY",
            "angleZ"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "angleX",
            "angleY",
            "angleZ"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->rotate(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotate(LJAVARuntime/Quaternion;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates this Vector3 by the specified Quaternion rotation and returns the resulting Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona este Vector3 pela rota\u00e7\u00e3o do Quaternion especificado e retorna o Vector3 resultante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->rotate(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotate(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates this Vector3 by the specified rotation Vector3 (in degrees) and returns the resulting Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona este Vector3 pelo Vector3 de rota\u00e7\u00e3o especificado (em graus) e retorna o Vector3 resultante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->rotate(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotateAroundPivot(FFFLJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates this Vector3 around the specified pivot point using the given rotation angles (in degrees) and returns the resulting Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona este Vector3 ao redor do ponto de piv\u00f4 especificado usando os \u00e2ngulos da rota\u00e7\u00e3o fornecidos (em graus) e retorna o Vector3 resultante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angleX",
            "angleY",
            "angleZ",
            "pivot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "angleX",
            "angleY",
            "angleZ",
            "pivot"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p4, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->rotate(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotateAroundPivot(LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates this Vector3 around the specified pivot point using the given Quaternion rotation and returns the resulting Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona este Vector3 ao redor do ponto de piv\u00f4 especificado usando a rota\u00e7\u00e3o do Quaternion fornecido e retorna o Vector3 resultante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation",
            "pivot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rotation",
            "pivot"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->rotate(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotateAroundPivot(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Rotates this Vector3 around the specified pivot point using the given rotation Vector3 (in degrees) and returns the resulting Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Rotaciona este Vector3 ao redor do ponto de piv\u00f4 especificado usando o Vector3 de rota\u00e7\u00e3o fornecido (em graus) e retorna o Vector3 resultante."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation",
            "pivot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rotation",
            "pivot"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result v3

    iget-object v4, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->rotate(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a String representation of this Vector3 in the format \'[X;Y;Z]\'."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma representa\u00e7\u00e3o em String deste Vector3 no formato \'[X;Y;Z]\'."
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getZ()F

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
        value = "Sets all components of this Vector3 to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define todos os componentes deste Vector3 para o valor especificado."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public set(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the components of this Vector3 to the specified X, Y and Z values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes deste Vector3 para os valores X, Y e Z especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public set(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the components of this Vector3 to the specified Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes deste Vector3 para o Vector3 especificado."
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
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setX(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the X component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o componente X deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public setXY(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the X and Y components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes X e Y deste Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    .line 4
    iget-object p1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public setXY(LJAVARuntime/Vector2;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the X and Y components of this Vector3 with the values of the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes X e Y deste Vector3 com os valores do Vector2 especificado."
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public setXZ(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the X and Z components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes X e Z deste Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    .line 4
    iget-object p1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public setXZ(LJAVARuntime/Vector2;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the X and Z components of this Vector3 with the values of the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes X e Z deste Vector3 com os valores do Vector2 especificado."
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public setY(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Y component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o componente Y deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public setYX(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Y and X components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes Y e X deste Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "y",
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "x"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    .line 4
    iget-object p1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public setYX(LJAVARuntime/Vector2;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Y and X components of this Vector3 with the values of the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes Y e X deste Vector3 com os valores do Vector2 especificado."
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public setYZ(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Y and Z components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes Y e Z deste Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    .line 4
    iget-object p1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public setYZ(LJAVARuntime/Vector2;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Y and Z components of this Vector3 with the values of the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes Y e Z deste Vector3 com os valores do Vector2 especificado."
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public setZ(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Z component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o componente Z deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public setZX(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Z and X components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes Z e X deste Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "z",
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "z",
            "x"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    .line 4
    iget-object p1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public setZX(LJAVARuntime/Vector2;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Z and X components of this Vector3 with the values of the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes Z e X deste Vector3 com os valores do Vector2 especificado."
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public setZY(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Z and Y components of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes Z e Y deste Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "z",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "z",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    .line 4
    iget-object p1, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public setZY(LJAVARuntime/Vector2;)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Z and Y components of this Vector3 with the values of the specified Vector2."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os componentes Z e Y deste Vector3 com os valores do Vector2 especificado."
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public sqrDistance(LJAVARuntime/Vector3;)F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the squared distance between this Vector3 and the specified Vector3. Faster than distance() as it doesn\'t use a square root; useful for comparing distances."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia ao quadrado entre este Vector3 e o Vector3 especificado. Mais r\u00e1pido que distance() pois n\u00e3o usa raiz quadrada; \u00fatil para comparar dist\u00e2ncias."
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
            "vector3"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    return p1
.end method

.method public sqrLength()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the squared length of this Vector3. Faster than length() as it doesn\'t use a square root; useful for comparing distances."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o comprimento ao quadrado deste Vector3. Mais r\u00e1pido que length() pois n\u00e3o usa raiz quadrada; \u00fatil para comparar dist\u00e2ncias."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtLength()F

    move-result v0

    return v0
.end method

.method public sqrMagnitude()F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the squared magnitude of this Vector3. Faster than magnitude() as it doesn\'t use a square root; useful for comparing distances."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a magnitude ao quadrado deste Vector3. Mais r\u00e1pido que magnitude() pois n\u00e3o usa raiz quadrada; \u00fatil para comparar dist\u00e2ncias."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtMagnitude()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public sub(F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified value from this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado deste Vector3 e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sub(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified X, Y and Z values from this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai os valores X, Y e Z especificados deste Vector3 e retorna um novo Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sub(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector3 from this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector3 especificado deste Vector3 e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sub(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the subtraction of this Vector3 and the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a subtra\u00e7\u00e3o deste Vector3 e do objeto especificado."
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
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    .line 6
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, LJAVARuntime/Vector3;

    .line 8
    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->subLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, LJAVARuntime/Vector2;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->subLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 12
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->subLocal(F)V

    return-object v0

    .line 15
    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator - is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Subtracts the specified object from this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o objeto especificado deste Vector3."
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

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->subLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->subLocal(LJAVARuntime/Vector2;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->subLocal(F)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator -= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Subtracts the specified value from this Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado deste Vector3 e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public subLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified X, Y and Z values from this Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai os valores X, Y e Z especificados deste Vector3 e atualiza este Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public subLocal(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector2 from this Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector2 especificado deste Vector3 e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public subLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector3 from this Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector3 especificado deste Vector3 e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public subX(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified value from the X component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado do componente X deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public subY(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified value from the Y component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado do componente Y deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public subZ(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified value from the Z component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado do componente Z deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public subtract(F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified value from this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o valor especificado deste Vector3 e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public subtract(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified X, Y and Z values from this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai os valores X, Y e Z especificados deste Vector3 e retorna um novo Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public subtract(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector3 from this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector3 especificado deste Vector3 e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sum(F)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified value to this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado a este Vector3 e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sum(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified X, Y and Z values to this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma os valores X, Y e Z especificados a este Vector3 e retorna um novo Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sum(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Vector3 to this Vector3 and returns a new Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o Vector3 especificado a este Vector3 e retorna um novo Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the sum of this Vector3 and the specified object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a soma deste Vector3 e do objeto especificado."
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
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    .line 6
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, LJAVARuntime/Vector3;

    .line 8
    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->sumLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_1

    .line 10
    check-cast p1, LJAVARuntime/Vector2;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->sumLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 12
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->sumLocal(F)V

    return-object v0

    .line 15
    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator + is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Sums the specified object to this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o objeto especificado a este Vector3."
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

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sumLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sumLocal(LJAVARuntime/Vector2;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, LJAVARuntime/Vector3;->sumLocal(F)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator += is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Vector3;

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
        value = "Adds the specified value to this Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado a este Vector3 e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public sumLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified X, Y and Z values to this Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma os valores X, Y e Z especificados a este Vector3 e atualiza este Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public sumLocal(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Vector2 to this Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o Vector2 especificado a este Vector3 e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public sumLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Vector3 to this Vector3 and updates this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o Vector3 especificado a este Vector3 e atualiza este Vector3."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public sumX(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified value to the X component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado ao componente X deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    return-void
.end method

.method public sumY(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified value to the Y component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado ao componente Y deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    return-void
.end method

.method public sumZ(F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified value to the Z component of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma o valor especificado ao componente Z deste Vector3."
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

    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a String representation of this Vector3."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma representa\u00e7\u00e3o em String deste Vector3."
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a String representation of this Vector3 with the specified number of decimal places."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma representa\u00e7\u00e3o em String deste Vector3 com o n\u00famero especificado de casas decimais."
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
    iget-object v0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
