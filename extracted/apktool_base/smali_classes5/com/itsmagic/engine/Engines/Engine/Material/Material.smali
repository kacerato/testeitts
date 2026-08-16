.class public Lcom/itsmagic/engine/Engines/Engine/Material/Material;
.super LIc/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;,
        Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;
    }
.end annotation


# instance fields
.field public A:LJAVARuntime/Material;

.field public b:Z

.field public c:Z

.field public d:Ldc/k;

.field public e:Ljava/lang/String;

.field public transient g:Z

.field public transient i:Ljava/lang/String;

.field public transient j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

.field public transient k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc9/d;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHb/b;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

.field private final serializedShaderEntries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private shaderName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public t:Z

.field public final u:LMc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/a<",
            "Lda/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, LIc/m;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->l:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->m:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->s:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->t:Z

    new-instance v0, LMc/a;

    invoke-direct {v0}, LMc/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u:LMc/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New material "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    return p1
.end method

.method public static n(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v1

    :cond_0
    :goto_1
    return-object p0
.end method

.method private p0()V
    .locals 0

    return-void
.end method

.method private reloadInspector()V
    .locals 3

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LW7/b;->i:La8/a;

    iget-object v2, v1, La8/a;->a:La8/b;

    iget-object v2, v2, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v0, v2, :cond_3

    :try_start_0
    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-ne v2, p0, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    if-ne v2, p0, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    goto :goto_2

    :cond_1
    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;->getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    if-ne v2, p0, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;Lda/g;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "materialInspectorCallbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lda/g;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    sget-object v4, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v2, "Shader"

    iput-object v2, v1, LC5/b;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    const-string v3, "Open graph editor"

    sget-object v4, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ldc/k;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v1}, Ldc/k;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v2}, Ldc/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v1}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v1}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;

    invoke-direct {v2, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lda/g;)V

    invoke-virtual {v1, p1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p1, LC5/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error:\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xc

    const v2, 0x7f050165

    invoke-direct {p1, p2, v1, v2}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    return-object v0
.end method

.method public C()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    return-object v0
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "forceTextureName"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public F()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ldc/k;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    return v0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ldc/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b:Z

    return v0
.end method

.method public I()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 3

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public K(I)Lc9/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc9/d;

    return-object p1
.end method

.method public L()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public M(I)LHb/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LHb/b;

    return-object p1
.end method

.method public N()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public O()V
    .locals 5

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->e()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->v(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->h()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->t(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ldc/k;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    if-nez v0, :cond_3

    :try_start_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->n(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->v(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->h()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->t(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->T()Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;->a:Lec/a;

    iget-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;->b:Z

    iget-boolean v4, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;->c:Z

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->i(Lec/a;ZZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-nez v0, :cond_5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->reloadInspector()V

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->V0()V

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ldc/k;->i()V

    :cond_7
    return-void
.end method

.method public P()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u:LMc/a;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u:LMc/a;

    invoke-virtual {v2}, LMc/a;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u:LMc/a;

    invoke-virtual {v2, v1}, LMc/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lda/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-interface {v2, v3}, Lda/d;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->l()V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final T()Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;
    .locals 8

    const-string v0, "Boolean"

    const-string v1, "String"

    sget-object v2, Lec/a;->OPAQUE:Lec/a;

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    :try_start_0
    const-string v4, "blendingMode"

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {v4, v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lec/a;->valueOf(Ljava/lang/String;)Lec/a;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    const-string v5, "doubleSided"

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {v5, v0, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_1
    move v5, v4

    :goto_0
    :try_start_2
    const-string v6, "drawInFront"

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {v6, v0, v7}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    :try_start_3
    const-string v0, "refractionType"

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {v0, v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;

    invoke-direct {v0, v2, v5, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;-><init>(Lec/a;ZZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)V

    return-object v0
.end method

.method public U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc9/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc9/d;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lc9/d;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "renderer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public V(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHb/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LHb/b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LHb/b;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "renderer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;->a()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "renderer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X(Lda/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u:LMc/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u:LMc/a;

    invoke-virtual {v1, p1}, LMc/a;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b:Z

    return-void
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a0(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->e0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "Color"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->l(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Color can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid entry name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editedInGame"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    return-void
.end method

.method public d0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pendingSave"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b:Z

    return-void
.end method

.method public e0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderGraphData"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->p(Ljava/lang/Runnable;)V

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc9/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc9/d;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lc9/d;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    move-result-object v2

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lc9/d;

    invoke-direct {v1, p1}, Lc9/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "renderer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f0(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    :cond_2
    if-eqz v0, :cond_3

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material$e;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-static {p1}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderName"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    return-void
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    if-eqz v3, :cond_0

    const-string v4, "Texture"

    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, LIc/k;->a:Ljava/util/List;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->i(LIc/h;)LIc/k;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, LIc/k;->a:Ljava/util/List;

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    iget-object v5, v3, LIc/k;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, v3, LIc/k;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, LIc/k;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelRenderer"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHb/b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LHb/b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LHb/b;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    move-result-object v2

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->q:Ljava/util/List;

    new-instance v2, LHb/b;

    invoke-direct {v2, p1}, LHb/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "renderer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h0(Ljava/lang/String;Lub/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r0(Ljava/lang/String;Lub/p;)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    instance-of v0, p2, Lub/g;

    const-string v1, "Texture"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    check-cast p2, Lub/g;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lub/g;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lub/g;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only textures loaded from a file can be serialized on a material that is not running on world"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid entry name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material$g;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "renderer can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "file"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->s0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "Texture"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->o(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid entry name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDrawInFront()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Q()Z

    move-result v0

    return v0
.end method

.method public j(Lda/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u:LMc/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u:LMc/a;

    invoke-virtual {v1, p1}, LMc/a;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->w0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "Vector2"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid entry name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderGraphData"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lda/e;

    invoke-direct {v0, p0}, Lda/e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->p(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public k0()LJAVARuntime/Material;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->A:LJAVARuntime/Material;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Material;

    invoke-direct {v0, p0}, LJAVARuntime/Material;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->A:LJAVARuntime/Material;

    :cond_0
    return-object v0
.end method

.method public l(Ljava/lang/String;Lub/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matcap",
            "texture"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapBinder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapBinder;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapBinder;->z0(Ljava/lang/String;Lub/p;)V

    :cond_0
    return-void
.end method

.method public l0(Ljava/lang/String;)Lub/p;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->v(Ljava/lang/String;)Lub/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ldc/k;->f(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ldc/k;->f(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o0()V

    return-void
.end method

.method public m0(Ljava/lang/String;Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "texture"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->h0(Ljava/lang/String;Lub/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public n0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->j()V

    :cond_0
    return-void
.end method

.method public o(Lda/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ldc/k;->c(Lda/b;)V

    :cond_0
    return-void
.end method

.method public o0()V
    .locals 11

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-nez v0, :cond_e

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading shader ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    if-nez v3, :cond_1

    sget-object v3, LOb/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->h()Lcc/d;

    move-result-object v3

    invoke-virtual {v3}, Lcc/d;->l()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->e()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->reloadInspector()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->k:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->c(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ldc/j;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v1, p0, v3}, Ldc/k;->e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->P()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->reloadInspector()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    :cond_3
    :goto_3
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :cond_4
    :try_start_1
    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Find in templates"

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_4

    :catch_1
    move-object v4, v2

    goto :goto_5

    :cond_5
    move-object v3, v2

    :goto_4
    sget-object v4, LOb/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->f(Ljava/lang/String;)Lcc/d;

    move-result-object v4
    :try_end_1
    .catch Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4}, Lcc/d;->l()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V
    :try_end_2
    .catch Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_c

    :catch_2
    :goto_5
    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Search shader"

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, v2

    :goto_6
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    monitor-enter v5

    const/4 v6, 0x0

    move v7, v6

    :goto_7
    :try_start_3
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->materialShaders:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lp6/d;->E1()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "Compile"

    invoke-static {v6}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v6

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_7
    move-object v6, v2

    :goto_8
    new-instance v7, Ldc/a;

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    invoke-direct {v7, p0, v9, v8}, Ldc/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;)V

    iput-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v7, p0, v8}, Ldc/k;->e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->P()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->reloadInspector()V

    invoke-static {v6}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_9

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    move v1, v6

    :goto_9
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_a

    :try_start_4
    sget-object v1, LOb/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->k(Ljava/lang/String;)Lcc/d;

    move-result-object v1

    invoke-virtual {v1}, Lcc/d;->l()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;
    :try_end_4
    .catch Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_a
    move-object v4, v1

    goto :goto_b

    :catch_3
    const-string v1, "Material"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShaderNotFound:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, LOb/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->h()Lcc/d;

    move-result-object v1

    invoke-virtual {v1}, Lcc/d;->l()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    goto :goto_a

    :cond_a
    :goto_b
    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    :goto_c
    if-eqz v4, :cond_d

    :try_start_5
    invoke-static {}, Lp6/d;->E1()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Compile"

    invoke-static {v1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v1

    goto :goto_d

    :catch_4
    move-exception v1

    goto :goto_e

    :cond_b
    move-object v1, v2

    :goto_d
    invoke-virtual {v4, p0}, Lcc/d;->f(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ldc/d;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v3, p0, v4}, Ldc/k;->e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/util/List;)V

    invoke-static {v1}, Lp6/d;->J1(Lp6/g;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->reloadInspector()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_f

    :goto_e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAILED SHADER:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ldc/k;->a()V

    :cond_c
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    :cond_d
    :goto_f
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_11

    :goto_10
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_e
    :goto_11
    return-void
.end method

.method public p(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->s(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Boolean"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result p1

    return p1

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid entry name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Color"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid entry name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->u(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Float"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result p1

    return p1

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid entry name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    if-eqz v2, :cond_1

    const-string v3, "Texture"

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Material: REPLACING "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " TO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->l(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->C(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->shaderGraphData:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->q()V

    :cond_5
    return-void
.end method

.method public s(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->v(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Int"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid entry name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-interface {p1, v0}, Ldc/k;->f(Ljava/util/List;)V

    :cond_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->d0(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "Boolean"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid entry name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i0(Ljava/lang/String;F)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "Float"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid entry name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->l0(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "Int"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid entry name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->q0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string v0, "String"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->o(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid entry name"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "String"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid entry name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(Ljava/lang/String;)Lub/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->y(Ljava/lang/String;)Lub/p;

    move-result-object p1
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Texture"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lub/g;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid entry name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Texture"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->data:Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid entry name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->A(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Vector2"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serializedShaderEntries:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->v(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/EntryNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid entry name"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Ldc/k;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    return-object v0
.end method

.method public z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ldc/k;->b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    return-object v0
.end method
