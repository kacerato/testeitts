.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:I

.field public createdWithChunkSise:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public parts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x2000000

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->b:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->parts:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->createdWithChunkSise:I

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->parts:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->parts:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->parts:Ljava/util/List;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->createdWithChunkSise:I

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/high16 v0, 0x2000000

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->createdWithChunkSise:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;)V

    return-void
.end method

.method public f([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    const/high16 v0, 0x2000000

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->createdWithChunkSise:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;

    array-length v2, p1

    const/high16 v3, 0x6000000

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;)V

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method
