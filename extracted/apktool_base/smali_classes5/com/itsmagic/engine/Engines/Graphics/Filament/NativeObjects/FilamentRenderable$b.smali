.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;
.super LM9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;Lcom/google/android/filament/Box;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "cls",
            "val$vertexBuffer"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {p0, p2}, LM9/b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->access$600(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->j()Lcom/google/android/filament/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->removeGeometryAt(I)V

    :cond_1
    return-void
.end method
