.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v0",
            "v1",
            "v2",
            "normal"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 8
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 9
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 10
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Triangle;->normal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
