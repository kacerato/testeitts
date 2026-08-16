.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->b:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    const/16 v1, 0x10

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;-><init>()V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d(Z)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->removeMaterialInstanceAt(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-object p1
.end method

.method public b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "miPool",
            "ibPool"
        }
    .end annotation

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->b:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d:LRb/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->e:I

    invoke-virtual {p3, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;->d(ILRb/d;)V

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d:LRb/d;

    iput p1, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->e:I

    :cond_0
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "miPool",
            "ibPool"
        }
    .end annotation

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->b:I

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d(Z)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d:LRb/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->e:I

    invoke-virtual {p3, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;->d(ILRb/d;)V

    iput-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d:LRb/d;

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->e:I

    :cond_0
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    iput-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    :cond_1
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->removeMaterialInstanceAt(I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->b:I

    return-void
.end method
