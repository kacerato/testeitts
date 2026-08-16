.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LRb/c;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public d:LRb/d;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LRb/c;

    invoke-direct {v0}, LRb/c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a:LRb/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->e:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "engine",
            "vb",
            "ib",
            "mi"
        }
    .end annotation

    new-instance v7, Lcom/google/android/filament/Box;

    const/4 p1, 0x3

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-direct {v7, v0, p1}, Lcom/google/android/filament/Box;-><init>([F[F)V

    new-instance p1, Lcom/google/android/filament/RenderableManager$a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v1

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a:LRb/c;

    sget-object v6, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    move-object v0, p1

    move-object v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d(Z)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Lcom/google/android/filament/TransformManager;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tm"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/TransformManager;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/TransformManager;->b(I)I

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a:LRb/c;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->showAllLayers()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->hideFromAllLayers()V

    :cond_1
    :goto_0
    return-void
.end method
