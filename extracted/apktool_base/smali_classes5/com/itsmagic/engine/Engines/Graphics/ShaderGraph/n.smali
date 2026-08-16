.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

.field public final b:Lec/h;

.field public final c:Lcc/b;

.field public final d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lec/h;Lcc/b;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "compilation",
            "varianceHandler",
            "renderPassTemplate",
            "graphData"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->b:Lec/h;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->c:Lcc/b;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-void
.end method

.method public static synthetic a(ZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;LSb/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->g(ZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;LSb/b;)V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Z)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "compilation",
            "graphData",
            "forcePreviewUnlit"
        }
    .end annotation

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    invoke-direct {v6, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->isPostProcessing:Z

    if-nez v2, :cond_0

    move v8, v11

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a:Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v4, "Base/easy_frag.glsl"

    invoke-static {v4}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[INSERT_EASY_CODE]"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Base/easy_vertex.glsl"

    invoke-static {v4}, Lcc/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/m;

    invoke-direct {v4, p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/m;-><init>(ZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v7, Lgc/e;

    new-instance v9, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-direct {v7, v5, v9, v2}, Lgc/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;->UNLIT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    if-eq p2, v2, :cond_2

    move v9, v11

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    if-eqz v9, :cond_3

    if-eqz p1, :cond_3

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    if-eq p2, v2, :cond_3

    move v10, v11

    goto :goto_2

    :cond_3
    move v10, v1

    :goto_2
    if-eqz v8, :cond_4

    new-instance p2, Lec/h;

    const/4 v12, 0x1

    move-object v1, p2

    move-object v2, v7

    move-object v5, v0

    move v7, v12

    invoke-direct/range {v1 .. v10}, Lec/h;-><init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;ZZZZ)V

    goto :goto_3

    :cond_4
    new-instance p2, Lec/h;

    const/4 v9, 0x1

    move-object v1, p2

    move-object v2, v7

    move-object v5, v0

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lec/h;-><init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;ZZ)V

    :goto_3
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    if-eqz v2, :cond_5

    move-object v1, v2

    :cond_5
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v11, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$k;->THIN:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    :goto_4
    move-object v7, v1

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$k;->SOLID:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :goto_5
    new-instance v1, Lec/i;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    new-instance v2, Lcc/b;

    invoke-direct {v2, p2, v0, v1}, Lcc/b;-><init>(Lec/h;Ljava/util/List;Lec/i;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    invoke-direct {v0, p0, p2, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lec/h;Lcc/b;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    return-object v0

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shader graph compile errors: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->e:Ljava/util/List;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "compilation"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "graphData"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->h()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Z)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Shader graph output node not found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "graphData"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "targetNode"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Z)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compilation",
            "graphData"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Z)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(ZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;LSb/b;)V
    .locals 2

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$e;->SURFACE:Lcom/google/android/filament/filamat/MaterialBuilder$e;

    invoke-virtual {p2, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->s(Lcom/google/android/filament/filamat/MaterialBuilder$e;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$s;->CUSTOM0:Lcom/google/android/filament/filamat/MaterialBuilder$s;

    const-string v1, "worldPos"

    invoke-virtual {p2, v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->T(Lcom/google/android/filament/filamat/MaterialBuilder$s;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {p2, p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;->UNLIT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->LIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    :goto_0
    invoke-virtual {p2, p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->E(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    :goto_1
    iget-object p0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    if-eq p0, p1, :cond_2

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$k;->THIN:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    invoke-virtual {p2, p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$k;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$j;->SCREEN_SPACE:Lcom/google/android/filament/filamat/MaterialBuilder$j;

    invoke-virtual {p2, p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->A(Lcom/google/android/filament/filamat/MaterialBuilder$j;)Lcom/google/android/filament/filamat/MaterialBuilder;

    :cond_2
    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p2, p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$t;->TANGENTS:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p2, p0}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    return-void
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ldc/j;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->d1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->a1(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->isPostProcessing:Z

    if-nez v0, :cond_1

    new-instance v0, Lnc/h;

    invoke-direct {v0}, Lnc/h;-><init>()V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->k0(Lnc/h;)V

    new-instance v0, Lnc/b;

    invoke-direct {v0}, Lnc/b;-><init>()V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->g0(Lnc/b;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->c:Lcc/b;

    invoke-static {v0}, Lcc/b;->b(Lcc/b;)Lcc/b;

    move-result-object v3

    new-instance v6, Ldc/j;

    const-string v1, "Node graph"

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ldc/j;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)V

    return-object v6
.end method

.method public h()V
    .locals 9

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->c:Lcc/b;

    invoke-virtual {v0}, Lcc/b;->g()Lec/i;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lec/i;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$k;->THIN:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->b:Lec/h;

    invoke-virtual {v1, v0}, Lec/h;->C(Lec/i;)Z

    return-void
.end method

.method public i(Lec/a;ZZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blendingMode",
            "doubleSided",
            "drawInFront",
            "refractionType"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lec/a;->OPAQUE:Lec/a;

    :goto_0
    sget-object p4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    if-eqz v0, :cond_1

    move-object p4, v0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2

    sget-object p4, Lcom/google/android/filament/filamat/MaterialBuilder$k;->THIN:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    :goto_1
    move-object v6, p4

    goto :goto_2

    :cond_2
    sget-object p4, Lcom/google/android/filament/filamat/MaterialBuilder$k;->SOLID:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    goto :goto_1

    :goto_2
    new-instance p4, Lec/i;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v2

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    xor-int/lit8 v7, p3, 0x1

    xor-int/lit8 v8, p3, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    move-object v1, p4

    move v5, p2

    invoke-direct/range {v1 .. v8}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->b:Lec/h;

    invoke-virtual {p1, p4}, Lec/h;->C(Lec/i;)Z

    return-void
.end method
