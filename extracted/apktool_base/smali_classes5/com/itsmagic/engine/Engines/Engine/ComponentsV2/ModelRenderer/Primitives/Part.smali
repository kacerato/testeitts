.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public array:[I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public transient b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public transient c:I

.field public transient d:Z


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intBuffer"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    .line 6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->c:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->d:Z

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->array:[I

    .line 3
    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->array:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->c:I

    invoke-static {v0}, Luc/a;->q([I)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->array:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    :cond_0
    return-void
.end method
