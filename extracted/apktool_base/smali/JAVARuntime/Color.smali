.class public final LJAVARuntime/Color;
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
.implements LJAVARuntime/JsonSerializer;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Color$Android;
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    iput-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b"
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
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 10
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b"
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
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    iput-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "colorINT"
        }
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
    iput-object p1, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->c0(LJAVARuntime/Color;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "hex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 23
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(Ljava/lang/String;)V

    return-void
.end method

.method public static BLACK()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the black Color (255, 0, 0, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a Cor preta (255, 0, 0, 0)."
    .end annotation

    sget-object v0, LIc/H;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public static BLUE()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the blue Color (255, 0, 0, 255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a Cor azul (255, 0, 0, 255)."
    .end annotation

    sget-object v0, LIc/H;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public static GREEN()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the green Color (255, 0, 255, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a Cor verde (255, 0, 255, 0)."
    .end annotation

    sget-object v0, LIc/H;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public static PINK()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the red Color (255, 255, 0, 255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a Cor vermelha (255, 255, 0, 255)."
    .end annotation

    sget-object v0, LIc/H;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public static RED()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the red Color (255, 255, 0, 0)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a Cor vermelha (255, 255, 0, 0)."
    .end annotation

    sget-object v0, LIc/H;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public static WHITE()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the white Color (255, 255, 255, 255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a Cor branca (255, 255, 255, 255)."
    .end annotation

    sget-object v0, LIc/H;->a:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public static YELLOW()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the yellow Color (255, 241, 196, 15)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a Cor amarela (255, 241, 196, 15)."
    .end annotation

    sget-object v0, LIc/H;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public static genericInterface()LP8/l;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/l;

    new-instance v1, LJAVARuntime/Color$1;

    const-class v2, LJAVARuntime/Color;

    invoke-direct {v1, v2}, LJAVARuntime/Color$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/l;-><init>(LP8/m;)V

    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Color$2;

    const-class v2, LJAVARuntime/Color;

    invoke-direct {v1, v2}, LJAVARuntime/Color$2;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the specified Color is null."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor especificada for nula."
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


# virtual methods
.method public blend(FF)V
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between the current Color and the specified value based on the provided percentage (0-1) and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre a Cor atual e o valor especificado com base na porcentagem fornecida (0-1) e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
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
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h(FFFFF)V

    return-void
.end method

.method public blend(FFFFF)V
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between the current Color and the specified ARGB (alpha, red, green, and blue) values based on the provided percentage (0-1) and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre a Cor atual e os valores ARGB (alfa, vermelho, verde e azul) especificados com base na porcentagem fornecida (0-1) e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b",
            "blend"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h(FFFFF)V

    return-void
.end method

.method public blend(LJAVARuntime/Color;F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between the current Color and the specified Color based on the provided percentage (0-1) and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre a Cor atual e a Cor especificada com base na porcentagem fornecida (0-1) e modifica a Cor atual."
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
            "color",
            "blend"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->i(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V

    return-void
.end method

.method public blendOut(FF)LJAVARuntime/Color;
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between the current Color and the specified value based on the provided percentage (0-1) and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre a Cor atual e o valor especificado com base na porcentagem fornecida (0-1) e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "blend"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
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
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e(FFFFF)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public blendOut(FFFFF)LJAVARuntime/Color;
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between the current Color and the specified ARGB (alpha, red, green, and blue) values based on the provided percentage (0-1) and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre a Cor atual e os valores ARGB (alfa, vermelho, verde e azul) especificados com base na porcentagem fornecida (0-1) e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b",
            "blend"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b",
            "blend"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e(FFFFF)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public blendOut(LJAVARuntime/Color;F)LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Blends between the current Color and the specified Color based on the provided percentage (0-1) and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma mistura entre a Cor atual e a Cor especificada com base na porcentagem fornecida (0-1) e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "blend"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "blend"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public copy()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a copy of the current Color instance."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma c\u00f3pia da inst\u00e2ncia da Cor atual."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v0

    return-object v0
.end method

.method public deserializeLocal(Ljava/lang/String;)V
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Deserializes a String in the format \'[R;G;B;A]\' and sets the values to this color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Desserializa uma String no formato \'[R;G;B;A]\' e define os valores nesta cor."
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
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->c0(LJAVARuntime/Color;)V

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

    iget-object v2, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->setFromIndex(FI)V
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

.method public div(LJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the current Color by the specified Color and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide a Cor atual pela Cor especificada e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v2

    div-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatRed()F

    move-result v3

    div-float/2addr v2, v3

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v4

    div-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public div(LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the current Color by the specified Vector2 and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide a Cor atual pelo Vector2 especificado e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 9
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 10
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v3

    div-float/2addr v2, v3

    .line 11
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    div-float/2addr v3, p1

    .line 12
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public div(LJAVARuntime/Vector3;)LJAVARuntime/Color;
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the current Color by the specified Vector3 and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide a Cor atual pelo Vector3 especificado e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 5
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 6
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    div-float/2addr v2, v3

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    div-float/2addr v3, v4

    .line 8
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    div-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides 2 colors and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide 2 cores e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    .line 13
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, LJAVARuntime/Color;->set(LJAVARuntime/Color;)V

    .line 15
    instance-of v1, p1, LJAVARuntime/Color;

    if-eqz v1, :cond_0

    .line 16
    check-cast p1, LJAVARuntime/Color;

    .line 17
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->divLocal(LJAVARuntime/Color;)V

    return-object v0

    .line 18
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_1

    .line 19
    check-cast p1, LJAVARuntime/Vector3;

    .line 20
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->divLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 21
    :cond_1
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_2

    .line 22
    check-cast p1, LJAVARuntime/Vector2;

    .line 23
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->divLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 24
    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator / is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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
        value = "Divides 2 colors and modifies the current Color with the result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide 2 cores e modifica a pr\u00f3pria Cor com o resultado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    instance-of v0, p1, LJAVARuntime/Color;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Color;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->divLocal(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector3;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->divLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_2

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->divLocal(LJAVARuntime/Vector2;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator /= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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

.method public divLocal(LJAVARuntime/Color;)V
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the current Color by the specified Color and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide a Cor atual pela Cor especificada e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v2

    div-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatRed()F

    move-result v3

    div-float/2addr v2, v3

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v4

    div-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    div-float/2addr v4, p1

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public divLocal(LJAVARuntime/Vector2;)V
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the current Color by the specified Vector2 and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide a Cor atual pelo Vector2 especificado e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 12
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v3

    div-float/2addr v2, v3

    .line 13
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    div-float/2addr v3, p1

    .line 14
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    .line 15
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public divLocal(LJAVARuntime/Vector3;)V
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the current Color by the specified Vector3 and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide a Cor atual pelo Vector3 especificado e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    div-float/2addr v2, v3

    .line 8
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    div-float/2addr v3, v4

    .line 9
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    div-float/2addr v4, p1

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the specified Color is equal to the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor especificada \u00e9 igual \u00e0 Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    instance-of v0, p1, LJAVARuntime/Color;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Color;

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0, p1}, LQ8/a;->b(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector3;

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1}, LQ8/a;->d(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, LJAVARuntime/Point3;

    if-eqz v0, :cond_2

    check-cast p1, LJAVARuntime/Point3;

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0, p1}, LQ8/a;->a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;LJAVARuntime/Point3;)Z

    move-result p1

    return p1

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator == is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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

.method public fromHex(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Color to the Color of the specified hex code."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a Cor para a Cor do c\u00f3digo hexadecimal especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "hex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(Ljava/lang/String;)V

    return-void
.end method

.method public fromHexString(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Color to the Color of the specified hex code."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a Cor para a Cor do c\u00f3digo hexadecimal especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "hex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(Ljava/lang/String;)V

    return-void
.end method

.method public getFloatAlpha()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the float value of the opacity (alpha channel) of the Color (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor float da opacidade (canal alfa) da Cor (0.0f - 1.0f)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    return v0
.end method

.method public getFloatBlue()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the float value of the blue channel of the color (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor float do canal azul da Cor (0.0f - 1.0f)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    return v0
.end method

.method public getFloatGreen()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the float value of the green channel of the color (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor float do canal verde da Cor (0.0f - 1.0f)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    return v0
.end method

.method public getFloatRed()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the float value of the red channel of the color (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor float do canal vermelho da Cor (0.0f - 1.0f)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    return v0
.end method

.method public getHexString()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the hexadecimal code of the Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o c\u00f3digo hexadecimal da Cor."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the int value of the Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor int da Cor."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return v0
.end method

.method public getIntAlpha()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the int value of the opacity (alpha channel) of the Color (0-255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor int da opacidade (canal alfa) da Cor (0-255)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    return v0
.end method

.method public getIntBlue()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the int value of the blue channel of the color (0-255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor int do canal azul da Cor (0-255)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v0

    return v0
.end method

.method public getIntGreen()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the int value of the green channel of the color (0-255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor int do canal verde da Cor (0-255)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v0

    return v0
.end method

.method public getIntRed()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the int value of the red channel of the color (0-255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor int do canal vermelho da Cor (0-255)."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v0

    return v0
.end method

.method public greaterOrEqualsThan(D)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater than or equal values to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores ou iguais ao valor especificado."
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

    .line 20
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operator >= is undefined for the type(s) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, LJAVARuntime/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", double"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greaterOrEqualsThan(F)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater than or equal values to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores ou iguais ao valor especificado."
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

    .line 17
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator >= is undefined for the type(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, LJAVARuntime/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greaterOrEqualsThan(I)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater than or equal values to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores ou iguais ao valor especificado."
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

    .line 18
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator >= is undefined for the type(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, LJAVARuntime/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greaterOrEqualsThan(J)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater than or equal values to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores ou iguais ao valor especificado."
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

    .line 19
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operator >= is undefined for the type(s) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, LJAVARuntime/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greaterOrEqualsThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater than or equal values to the specified Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores ou iguais aos da Cor especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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
    instance-of v0, p1, LJAVARuntime/Color;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, LJAVARuntime/Color;

    .line 3
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 4
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 5
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 6
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    return v1

    .line 7
    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, LJAVARuntime/Vector3;

    .line 9
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 10
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 11
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    return v1

    .line 12
    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_3

    .line 13
    check-cast p1, LJAVARuntime/Vector2;

    .line 14
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 15
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 16
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator >= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater values than the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores que o valor especificado."
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

    .line 20
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operator > is undefined for the type(s) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, LJAVARuntime/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", double"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greaterThan(F)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater values than the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores que o valor especificado."
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

    .line 17
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator > is undefined for the type(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, LJAVARuntime/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greaterThan(I)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater values than the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores que o valor especificado."
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

    .line 18
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator > is undefined for the type(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, LJAVARuntime/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greaterThan(J)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater values than the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores que o valor especificado."
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

    .line 19
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operator > is undefined for the type(s) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, LJAVARuntime/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greaterThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has greater values than the specified Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores maiores que a Cor especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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
    instance-of v0, p1, LJAVARuntime/Color;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, LJAVARuntime/Color;

    .line 3
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 4
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 5
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    return v1

    .line 7
    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, LJAVARuntime/Vector3;

    .line 9
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 10
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 11
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    return v1

    .line 12
    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_3

    .line 13
    check-cast p1, LJAVARuntime/Vector2;

    .line 14
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 15
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 16
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator > is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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

.method public lerp(FF)V
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified value based on the provided speed/interval and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e o valor especificado com base na velocidade/intervalo fornecido e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
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
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F(FFFFF)V

    return-void
.end method

.method public lerp(FFFFF)V
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified ARGB (alpha, red, green, and blue) values based on the provided speed/interval and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e os valores ARGB (alfa, vermelho, verde e azul) especificados com base na velocidade/intervalo fornecido e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F(FFFFF)V

    return-void
.end method

.method public lerp(LJAVARuntime/Color;F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified Color based on the provided speed/interval and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e a Cor especificada com base na velocidade/intervalo fornecido e modifica a Cor atual."
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
            "color",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V

    return-void
.end method

.method public lerpInSeconds(FF)V
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified value based on the provided speed/interval in one second and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e o valor especificado com base na velocidade/intervalo fornecido em um segundo e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
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
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float v5, p2, v1

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F(FFFFF)V

    return-void
.end method

.method public lerpInSeconds(FFFFF)V
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified ARGB (alpha, red, green, and blue) values based on the provided speed/interval in one second and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e os valores ARGB (alfa, vermelho, verde e azul) especificados com base na velocidade/intervalo fornecido em um segundo e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float v5, p5, v1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F(FFFFF)V

    return-void
.end method

.method public lerpInSeconds(LJAVARuntime/Color;F)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified Color based on the provided speed/interval in one second and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e a Cor especificada com base na velocidade/intervalo fornecido em um segundo e modifica a Cor atual."
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
            "color",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V

    return-void
.end method

.method public lerpOut(FF)LJAVARuntime/Color;
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified value based on the provided speed/interval and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e o valor especificado com base na velocidade/intervalo fornecido e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "speed"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
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
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->D(FFFFF)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public lerpOut(FFFFF)LJAVARuntime/Color;
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified ARGB (alpha, red, green, and blue) values based on the provided speed/interval and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e os valores ARGB (alfa, vermelho, verde e azul) especificados com base na velocidade/intervalo fornecido e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b",
            "speed"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->D(FFFFF)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public lerpOut(LJAVARuntime/Color;F)LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified Color based on the provided speed/interval and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e a Cor especificada com base na velocidade/intervalo fornecido e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "speed"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public lerpOutInSeconds(FF)LJAVARuntime/Color;
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified value based on the provided speed/interval in one second and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e o valor especificado com base na velocidade/intervalo fornecido em um segundo e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "blend"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
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
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float v5, p2, v1

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->D(FFFFF)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public lerpOutInSeconds(FFFFF)LJAVARuntime/Color;
    .locals 6
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified ARGB (alpha, red, green, and blue) values based on the provided speed/interval in one second and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e os valores ARGB (alfa, vermelho, verde e azul) especificados com base na velocidade/intervalo fornecido em um segundo e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b",
            "blend"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float v5, p5, v1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->D(FFFFF)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public lerpOutInSeconds(LJAVARuntime/Color;F)LJAVARuntime/Color;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Interpolates/smoothes between the current Color and the specified Color based on the provided speed/interval in one second and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz uma interpola\u00e7\u00e3o/suaviza\u00e7\u00e3o entre a Cor atual e a Cor especificada com base na velocidade/intervalo fornecido em um segundo e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "blend"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object p1

    return-object p1
.end method

.method public lessOrEqualsThan(D)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less than or equal values to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores ou iguais ao valor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
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

    .line 20
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operator <= is undefined for the type(s) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, LJAVARuntime/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", double"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lessOrEqualsThan(F)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less than or equal values to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores ou iguais ao valor especificado."
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

    .line 17
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator <= is undefined for the type(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, LJAVARuntime/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lessOrEqualsThan(I)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less than or equal values to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores ou iguais ao valor especificado."
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

    .line 18
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator <= is undefined for the type(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, LJAVARuntime/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lessOrEqualsThan(J)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less than or equal values to the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores ou iguais ao valor especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
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

    .line 19
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operator <= is undefined for the type(s) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, LJAVARuntime/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lessOrEqualsThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less than or equal values to the specified Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores ou iguais aos da Cor especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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
    instance-of v0, p1, LJAVARuntime/Color;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, LJAVARuntime/Color;

    .line 3
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 4
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 5
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 6
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    return v1

    .line 7
    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, LJAVARuntime/Vector3;

    .line 9
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 10
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 11
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    return v1

    .line 12
    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_3

    .line 13
    check-cast p1, LJAVARuntime/Vector2;

    .line 14
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 15
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 16
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator <= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less values than the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores que o valor especificado."
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

    .line 20
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operator < is undefined for the type(s) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, LJAVARuntime/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", double"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lessThan(F)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less values than the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores que o valor especificado."
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

    .line 17
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator < is undefined for the type(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, LJAVARuntime/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lessThan(I)Z
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less values than the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores que o valor especificado."
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

    .line 18
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The operator < is undefined for the type(s) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, LJAVARuntime/Color;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lessThan(J)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less values than the specified value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores que o valor especificado."
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

    .line 19
    new-instance p1, LJAVARuntime/IllegalOperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The operator < is undefined for the type(s) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, LJAVARuntime/Color;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", long"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lessThan(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the current Color has less values than the specified Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor atual tiver valores menores que a Cor especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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
    instance-of v0, p1, LJAVARuntime/Color;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, LJAVARuntime/Color;

    .line 3
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 4
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 5
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 6
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    return v1

    .line 7
    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, LJAVARuntime/Vector3;

    .line 9
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 10
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 11
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    return v1

    .line 12
    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_3

    .line 13
    check-cast p1, LJAVARuntime/Vector2;

    .line 14
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget-object v2, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 15
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 16
    :cond_3
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator < is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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

.method public mul(LJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the current Color by the specified Color and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica a Cor atual pela Cor especificada e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatRed()F

    move-result v3

    mul-float/2addr v2, v3

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v4

    mul-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public mul(LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the current Color by the specified Vector2 and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica a Cor atual pelo Vector2 especificado e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 9
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 10
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    .line 11
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    mul-float/2addr v3, p1

    .line 12
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public mul(LJAVARuntime/Vector3;)LJAVARuntime/Color;
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the current Color by the specified Vector3 and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica a Cor atual pelo Vector3 especificado e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 5
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 6
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    .line 8
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public mul(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies 2 colors and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica 2 cores e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    .line 13
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, LJAVARuntime/Color;->set(LJAVARuntime/Color;)V

    .line 15
    instance-of v1, p1, LJAVARuntime/Color;

    if-eqz v1, :cond_0

    .line 16
    check-cast p1, LJAVARuntime/Color;

    .line 17
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->mulLocal(LJAVARuntime/Color;)V

    return-object v0

    .line 18
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_1

    .line 19
    check-cast p1, LJAVARuntime/Vector3;

    .line 20
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->mulLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 21
    :cond_1
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_2

    .line 22
    check-cast p1, LJAVARuntime/Vector2;

    .line 23
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->mulLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 24
    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator * is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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
        value = "Multiplies 2 colors and modifies the current Color with the result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica 2 cores e modifica a pr\u00f3pria Cor com o resultado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    instance-of v0, p1, LJAVARuntime/Color;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Color;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->mulLocal(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector3;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->mulLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_2

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->mulLocal(LJAVARuntime/Vector2;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator *= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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

.method public mulLocal(LJAVARuntime/Color;)V
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the current Color by the specified Color and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica a Cor atual pela Cor especificada e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatRed()F

    move-result v3

    mul-float/2addr v2, v3

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v4

    mul-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    mul-float/2addr v4, p1

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public mulLocal(LJAVARuntime/Vector2;)V
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the current Color by the specified Vector2 and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica a Cor atual pelo Vector2 especificado e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 12
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    .line 13
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    mul-float/2addr v3, p1

    .line 14
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    .line 15
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public mulLocal(LJAVARuntime/Vector3;)V
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the current Color by the specified Vector3 and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica a Cor atual pelo Vector3 especificado e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    .line 8
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    .line 9
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    mul-float/2addr v4, p1

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public notEquals(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true if the specified Color is different from the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se a Cor especificada \u00e9 diferente da Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    instance-of v0, p1, LJAVARuntime/Color;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Color;

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0, p1}, LQ8/a;->b(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector3;

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p1}, LQ8/a;->d(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    instance-of v0, p1, LJAVARuntime/Point3;

    if-eqz v0, :cond_2

    check-cast p1, LJAVARuntime/Point3;

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0, p1}, LQ8/a;->a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;LJAVARuntime/Point3;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator != is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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
        value = "Returns true if the instance of the specified Color is equal to the instance of the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro se \u00e0 inst\u00e2ncia da Cor especificada \u00e9 igual a inst\u00e2ncia da Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

.method public serializeToString()Ljava/lang/String;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Serializes the color to a String in the format \'[R;G;B;A]\'."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Serializa a cor para uma String no formato \'[R;G;B;A]\'."
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Color of this instance to the specified Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a Cor desta inst\u00e2ncia para a Cor especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the float value of the opacity (alpha channel) of the Color (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor float da opacidade (canal alfa) da Cor (0.0f - 1.0f)."
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

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    return-void
.end method

.method public setFloatBlue(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the float value of the blue channel of the color (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor float do canal azul da Cor (0.0f - 1.0f)."
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

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->O(F)V

    return-void
.end method

.method public setFloatGreen(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the float value of the green channel of the color (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor float do canal verde da Cor (0.0f - 1.0f)."
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

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->P(F)V

    return-void
.end method

.method public setFloatRed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the float value of the red channel of the color (0.0f - 1.0f)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor float do canal vermelho da Cor (0.0f - 1.0f)."
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

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Q(F)V

    return-void
.end method

.method public setFloats(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the float values of the RGB channels (red, green, and blue) to the specified values, respectively."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os valores float dos canais RGB (vermelho, verde e azul) para os valores especificados, respectivamente."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->S(FFF)V

    return-void
.end method

.method public setFloats(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the float values of the ARGB channels (alpha, red, green, and blue) to the specified values, respectively."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os valores float dos canais ARGB (alfa, vermelho, verde e azul) para os valores especificados, respectivamente."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b"
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
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public setInt(I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the Color to the Color of the specified int value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a Cor para a Cor do valor int especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public setIntAlpha(I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the int value of the opacity (alpha channel) of the Color (0-255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor int da opacidade (canal alfa) da Cor (0-255)."
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

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->L(I)V

    return-void
.end method

.method public setIntBlue(I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the int value of the blue channel of the color (0-255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor int do canal azul da Cor (0-255)."
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

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->M(I)V

    return-void
.end method

.method public setIntGreen(I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the int value of the green channel of the color (0-255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor int do canal verde da Cor (0-255)."
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

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->U(I)V

    return-void
.end method

.method public setIntRed(I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the int value of the red channel of the color (0-255)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor int do canal vermelho da Cor (0-255)."
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

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->b0(I)V

    return-void
.end method

.method public setInts(III)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the int values of the RGB channels (red, green, and blue) to the specified values, respectively."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os valores int dos canais RGB (vermelho, verde e azul) para os valores especificados, respectivamente."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->X(III)V

    return-void
.end method

.method public setInts(IIII)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the int values of the ARGB channels (alpha, red, green, and blue) to the specified values, respectively."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define os valores int dos canais ARGB (alfa, vermelho, verde e azul) para os valores especificados, respectivamente."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "r",
            "g",
            "b"
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
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Y(IIII)V

    return-void
.end method

.method public sub(LJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Color from the current Color and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai a Cor especificada da Cor atual e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v2

    sub-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatRed()F

    move-result v3

    sub-float/2addr v2, v3

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v4

    sub-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public sub(LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector2 from the current Color and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector2 especificado da Cor atual e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 9
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 10
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 11
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    sub-float/2addr v3, p1

    .line 12
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public sub(LJAVARuntime/Vector3;)LJAVARuntime/Color;
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector3 from the current Color and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector3 especificado da Cor atual e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 5
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 6
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 8
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public sub(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts 2 colors and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai 2 cores e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    .line 13
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, LJAVARuntime/Color;->set(LJAVARuntime/Color;)V

    .line 15
    instance-of v1, p1, LJAVARuntime/Color;

    if-eqz v1, :cond_0

    .line 16
    check-cast p1, LJAVARuntime/Color;

    .line 17
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->subLocal(LJAVARuntime/Color;)V

    return-object v0

    .line 18
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_1

    .line 19
    check-cast p1, LJAVARuntime/Vector3;

    .line 20
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->subLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 21
    :cond_1
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_2

    .line 22
    check-cast p1, LJAVARuntime/Vector2;

    .line 23
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->subLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 24
    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator - is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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
        value = "Subtracts 2 colors and modifies the current Color with the result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai 2 cores e modifica a pr\u00f3pria Cor com o resultado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    instance-of v0, p1, LJAVARuntime/Color;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Color;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->subLocal(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector3;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->subLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_2

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->subLocal(LJAVARuntime/Vector2;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator -= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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

.method public subLocal(LJAVARuntime/Color;)V
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Color from the current Color and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai a Cor especificada da Cor atual e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v2

    sub-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatRed()F

    move-result v3

    sub-float/2addr v2, v3

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v4

    sub-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    sub-float/2addr v4, p1

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public subLocal(LJAVARuntime/Vector2;)V
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector2 from the current Color and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector2 especificado da Cor atual e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 12
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 13
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    sub-float/2addr v3, p1

    .line 14
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    .line 15
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public subLocal(LJAVARuntime/Vector3;)V
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the specified Vector3 from the current Color and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o Vector3 especificado da Cor atual e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 8
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 9
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    sub-float/2addr v4, p1

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public sum(LJAVARuntime/Color;)LJAVARuntime/Color;
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the current Color to the specified Color and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma a Cor atual com a Cor especificada e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v2

    add-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatRed()F

    move-result v3

    add-float/2addr v2, v3

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v4

    add-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public sum(LJAVARuntime/Vector2;)LJAVARuntime/Color;
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the current Color to the specified Vector2 and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma a Cor atual com o Vector2 especificado e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 9
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 10
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v3

    add-float/2addr v2, v3

    .line 11
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    add-float/2addr v3, p1

    .line 12
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public sum(LJAVARuntime/Vector3;)LJAVARuntime/Color;
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the current Color to the specified Vector3 and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma a Cor atual com o Vector3 especificado e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 5
    new-instance v0, LJAVARuntime/Color;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 6
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    add-float/2addr v2, v3

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    add-float/2addr v3, v4

    .line 8
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, LJAVARuntime/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public sum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds 2 colors and returns a new Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma 2 cores e retorna uma nova Cor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    .line 13
    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0}, LJAVARuntime/Color;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, LJAVARuntime/Color;->set(LJAVARuntime/Color;)V

    .line 15
    instance-of v1, p1, LJAVARuntime/Color;

    if-eqz v1, :cond_0

    .line 16
    check-cast p1, LJAVARuntime/Color;

    .line 17
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->sumLocal(LJAVARuntime/Color;)V

    return-object v0

    .line 18
    :cond_0
    instance-of v1, p1, LJAVARuntime/Vector3;

    if-eqz v1, :cond_1

    .line 19
    check-cast p1, LJAVARuntime/Vector3;

    .line 20
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->sumLocal(LJAVARuntime/Vector3;)V

    return-object v0

    .line 21
    :cond_1
    instance-of v1, p1, LJAVARuntime/Vector2;

    if-eqz v1, :cond_2

    .line 22
    check-cast p1, LJAVARuntime/Vector2;

    .line 23
    invoke-virtual {v0, p1}, LJAVARuntime/Color;->sumLocal(LJAVARuntime/Vector2;)V

    return-object v0

    .line 24
    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator + is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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
        value = "Adds 2 colors and modifies the current Color with the result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma 2 cores e modifica a pr\u00f3pria Cor com o resultado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
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

    instance-of v0, p1, LJAVARuntime/Color;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Color;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sumLocal(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LJAVARuntime/Vector3;

    if-eqz v0, :cond_1

    check-cast p1, LJAVARuntime/Vector3;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sumLocal(LJAVARuntime/Vector3;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, LJAVARuntime/Vector2;

    if-eqz v0, :cond_2

    check-cast p1, LJAVARuntime/Vector2;

    invoke-virtual {p0, p1}, LJAVARuntime/Color;->sumLocal(LJAVARuntime/Vector2;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator += is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Color;

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

.method public sumLocal(LJAVARuntime/Color;)V
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the current Color to the specified Color and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma a Cor atual com a Cor especificada e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v2

    add-float/2addr v1, v2

    .line 2
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatRed()F

    move-result v3

    add-float/2addr v2, v3

    .line 3
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v4

    add-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    add-float/2addr v4, p1

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public sumLocal(LJAVARuntime/Vector2;)V
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the current Color to the specified Vector2 and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma a Cor atual com o Vector2 especificado e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 11
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 12
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getX()F

    move-result v3

    add-float/2addr v2, v3

    .line 13
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector2;->getY()F

    move-result p1

    add-float/2addr v3, p1

    .line 14
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result p1

    .line 15
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public sumLocal(LJAVARuntime/Vector3;)V
    .locals 5
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the current Color to the specified Vector3 and modifies the current Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Soma a Cor atual com o Vector3 especificado e modifica a Cor atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v1

    .line 7
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatRed()F

    move-result v2

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    add-float/2addr v2, v3

    .line 8
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatGreen()F

    move-result v3

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v4

    add-float/2addr v3, v4

    .line 9
    invoke-virtual {p0}, LJAVARuntime/Color;->getFloatBlue()F

    move-result v4

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    add-float/2addr v4, p1

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public toHex()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the hexadecimal code of the Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o c\u00f3digo hexadecimal da Cor."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a String of the int ARGB values (alpha, red, green, and blue) of the Color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma String dos valores int ARGB (alfa, vermelho, verde e azul) da Cor."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->f0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
