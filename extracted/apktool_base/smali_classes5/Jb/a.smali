.class public LJb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesBuffer",
            "normalsBuffer",
            "tangentsBuffer",
            "trianglesBuffer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, LJb/a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, LJb/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p4, p0, LJb/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0}, LJb/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-virtual {p0}, LJb/a;->c()I

    move-result v0

    iget-object v1, p0, LJb/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/filament/SurfaceOrientation$a;

    invoke-direct {v2}, Lcom/google/android/filament/SurfaceOrientation$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/filament/SurfaceOrientation$a;->o(I)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/filament/SurfaceOrientation$a;->h(I)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    iget-object v2, p0, LJb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    iget-object v4, p0, LJb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation$a;->d(JI)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    iget-object v2, p0, LJb/a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    iget-object v4, p0, LJb/a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation$a;->b(JI)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    iget-object v2, p0, LJb/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    iget-object v4, p0, LJb/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation$a;->f(JI)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    iget-object v2, p0, LJb/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    iget-object v4, p0, LJb/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/SurfaceOrientation$a;->k(JI)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/SurfaceOrientation$a;->a()Lcom/google/android/filament/SurfaceOrientation;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iput-object v2, p0, LJb/a;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    iget-object v0, p0, LJb/a;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/filament/SurfaceOrientation;->v(JI)V

    invoke-virtual {v1}, Lcom/google/android/filament/SurfaceOrientation;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, LJb/a;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, LJb/a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
