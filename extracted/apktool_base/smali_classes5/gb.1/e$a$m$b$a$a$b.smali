.class public Lgb/e$a$m$b$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$m$b$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic d:[I

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final synthetic f:[I

.field public final synthetic g:[I

.field public final synthetic h:Lgb/e$a$m$b$a$a;


# direct methods
.method public constructor <init>(Lgb/e$a$m$b$a$a;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$4",
            "val$inverseRoot",
            "val$vertices",
            "val$verOffset",
            "val$triangles",
            "val$executed",
            "val$total"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$m$b$a$a$b;->h:Lgb/e$a$m$b$a$a;

    iput-object p2, p0, Lgb/e$a$m$b$a$a$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iput-object p3, p0, Lgb/e$a$m$b$a$a$b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p4, p0, Lgb/e$a$m$b$a$a$b;->d:[I

    iput-object p5, p0, Lgb/e$a$m$b$a$a$b;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object p6, p0, Lgb/e$a$m$b$a$a$b;->f:[I

    iput-object p7, p0, Lgb/e$a$m$b$a$a$b;->g:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getRenderMatrix()[F

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v5

    move v6, v0

    :goto_1
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v4, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v10, v7, v8, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v3, v10, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, p0, Lgb/e$a$m$b$a$a$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v7, v10, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, p0, Lgb/e$a$m$b$a$a$b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v4

    iget-object v6, p0, Lgb/e$a$m$b$a$a$b;->d:[I

    aget v6, v6, v0

    add-int/2addr v6, v4

    iget-object v4, p0, Lgb/e$a$m$b$a$a$b;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lgb/e$a$m$b$a$a$b;->d:[I

    aget v4, v3, v0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v2

    add-int/2addr v4, v2

    aput v4, v3, v0

    iget-object v2, p0, Lgb/e$a$m$b$a$a$b;->f:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    int-to-float v2, v3

    iget-object v3, p0, Lgb/e$a$m$b$a$a$b;->g:[I

    aget v3, v3, v0

    int-to-float v3, v3

    div-float/2addr v2, v3

    new-instance v3, Lgb/e$a$m$b$a$a$b$a;

    invoke-direct {v3, p0, v2}, Lgb/e$a$m$b$a$a$b$a;-><init>(Lgb/e$a$m$b$a$a$b;F)V

    invoke-static {v3}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "gameObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p1}, Lgb/e$a$m$b$a$a$b;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
