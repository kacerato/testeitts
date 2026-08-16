.class Lcom/threed/jpct/GLSLShader$UniformMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threed/jpct/GLSLShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniformMap"
.end annotation


# instance fields
.field private keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastName:Ljava/lang/String;

.field private lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

.field private uniforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/threed/jpct/GLSLShader$Uniform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->keys:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 5
    iput-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/threed/jpct/GLSLShader$UniformMap;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader$UniformMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;
    .locals 4

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-static {v2}, Lcom/threed/jpct/GLSLShader$Uniform;->access$0(Lcom/threed/jpct/GLSLShader$Uniform;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    iput-object p1, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->lastName:Ljava/lang/String;

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->keys:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->keys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    iget-object p1, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-static {v2}, Lcom/threed/jpct/GLSLShader$Uniform;->access$0(Lcom/threed/jpct/GLSLShader$Uniform;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {p1, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-static {v2}, Lcom/threed/jpct/GLSLShader$Uniform;->access$0(Lcom/threed/jpct/GLSLShader$Uniform;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->keys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/threed/jpct/GLSLShader$Uniform;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$UniformMap;->uniforms:Ljava/util/List;

    return-object v0
.end method
