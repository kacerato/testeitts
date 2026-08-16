.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/q;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;
    }
.end annotation


# instance fields
.field private final carPaintCarbonFiber:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0xa
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final dictionary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LG8/a;",
            ">;"
        }
    .end annotation
.end field

.field private final displayableShadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcc/d;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private final litLightMap:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x4
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final litMatcap:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x8
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final litORM:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x2
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final litPBR:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x0
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final litPS1:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x6
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final litRefractive:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x3
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final litUltra:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x1
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final shadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcc/d;",
            ">;"
        }
    .end annotation
.end field

.field private final unlitMatcap:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x9
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final unlitPS1:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x7
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field

.field private final unlitSimple:Lcc/d;
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x5
        }
    .end annotation

    .annotation runtime Lbc/a;
    .end annotation

    .annotation runtime Lbc/b;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LXb/b;->b()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->litPBR:Lcc/d;

    invoke-static {}, LXb/b;->d()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->litUltra:Lcc/d;

    invoke-static {}, LXb/B;->a()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->litORM:Lcc/d;

    invoke-static {}, LXb/b;->c()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->litRefractive:Lcc/d;

    invoke-static {}, LXb/b;->a()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->litLightMap:Lcc/d;

    invoke-static {}, Lac/a;->b()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->unlitSimple:Lcc/d;

    invoke-static {}, LZb/a;->b()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->litPS1:Lcc/d;

    invoke-static {}, LZb/a;->c()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->unlitPS1:Lcc/d;

    invoke-static {}, LYb/a;->a()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->litMatcap:Lcc/d;

    invoke-static {}, LYb/a;->b()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->unlitMatcap:Lcc/d;

    invoke-static {}, LWb/a;->b()Lcc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->carPaintCarbonFiber:Lcc/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->initialized:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "totalName"
        }
    .end annotation

    array-length v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_6

    aget-object v3, p1, v2

    if-nez v1, :cond_2

    move v5, v0

    :goto_1
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG8/a;

    invoke-virtual {v6}, LG8/a;->j()LG8/a$a;

    move-result-object v7

    sget-object v8, LG8/a$a;->Folder:LG8/a$a;

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, LG8/a;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_2
    if-nez v4, :cond_5

    new-instance v1, LG8/a;

    sget-object v4, LG8/a$a;->Folder:LG8/a$a;

    invoke-direct {v1, v4, v3}, LG8/a;-><init>(LG8/a$a;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    move v5, v0

    move v6, v5

    :goto_3
    invoke-virtual {v1}, LG8/a;->d()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {v1, v5}, LG8/a;->c(I)LG8/a;

    move-result-object v7

    invoke-virtual {v7}, LG8/a;->j()LG8/a$a;

    move-result-object v8

    sget-object v9, LG8/a$a;->Folder:LG8/a$a;

    if-ne v8, v9, :cond_3

    invoke-virtual {v7}, LG8/a;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v4

    move-object v1, v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    new-instance v4, LG8/a;

    sget-object v5, LG8/a$a;->Folder:LG8/a$a;

    invoke-direct {v4, v5, v3}, LG8/a;-><init>(LG8/a$a;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, LG8/a;->a(LG8/a;)LG8/a;

    move-object v1, v4

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object p1, p1, v0

    if-eqz v1, :cond_7

    new-instance v0, LG8/a;

    invoke-direct {v0, p1, p2}, LG8/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LG8/a;->a(LG8/a;)LG8/a;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    new-instance v1, LG8/a;

    invoke-direct {v1, p1, p2}, LG8/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)LG8/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->j()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG8/a;

    return-object p1
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->j()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)Lcc/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->j()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcc/d;

    return-object p1
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->j()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Lcc/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->j()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/d;

    invoke-virtual {v1}, Lcc/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()LO9/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LO9/a<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->j()V

    new-instance v0, LO9/a;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, LO9/a;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/d;

    invoke-virtual {v2, v0}, Lcc/d;->k(LO9/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public h()Lcc/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->litPBR:Lcc/d;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LG8/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG8/a;

    invoke-virtual {v2}, LG8/a;->e()LG8/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final j()V
    .locals 7

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->initialized:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-class v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget-object v3, v0, v2

    const-class v4, Lbc/b;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    const-class v5, Lcc/d;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v5, :cond_0

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcc/d;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    const-class v4, Lbc/a;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v5, :cond_3

    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcc/d;

    const-class v5, LJAVARuntime/Order;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, LJAVARuntime/Order;

    if-eqz v3, :cond_2

    invoke-interface {v3}, LJAVARuntime/Order;->idx()[I

    move-result-object v3

    aget v3, v3, v1

    :goto_2
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v3, :cond_1

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_1
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    new-instance v2, Lbc/c;

    invoke-direct {v2}, Lbc/c;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->dictionary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->displayableShadersList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/d;

    invoke-virtual {v0}, Lcc/d;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->a([Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->initialized:Z

    :cond_6
    return-void
.end method

.method public k(Ljava/lang/String;)Lcc/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->j()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->shadersList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/d;

    invoke-virtual {v1}, Lcc/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
