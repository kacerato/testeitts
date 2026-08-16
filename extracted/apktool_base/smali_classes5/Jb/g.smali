.class public LJb/g;
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
            "uvsBuffer",
            "normalsBuffer",
            "trianglesBuffer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJb/g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, LJb/g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p4, p0, LJb/g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0}, LJb/g;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-virtual {p0}, LJb/g;->c()I

    move-result v0

    iget-object v1, p0, LJb/g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-eqz v0, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v3

    goto/16 :goto_4

    :cond_2
    :goto_0
    new-instance v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v5, v0, 0x2

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_3
    move v5, v6

    :goto_1
    iget-object v7, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v7, :cond_4

    if-lez v5, :cond_4

    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v4, v7, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    :cond_4
    :goto_2
    if-ge v5, v0, :cond_5

    iget-object v7, p0, LJb/g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v8, v5, 0x3

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    iget-object v9, p0, LJb/g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v9, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    mul-int/lit8 v9, v5, 0x2

    invoke-virtual {v4, v9, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    iput-object v4, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :goto_3
    new-instance v5, Lcom/google/android/filament/SurfaceOrientation$a;

    invoke-direct {v5}, Lcom/google/android/filament/SurfaceOrientation$a;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/android/filament/SurfaceOrientation$a;->o(I)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/filament/SurfaceOrientation$a;->h(I)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    iget-object v5, p0, LJb/g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v5

    iget-object v7, p0, LJb/g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/filament/SurfaceOrientation$a;->d(JI)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    iget-object v5, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v5

    iget-object v7, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/filament/SurfaceOrientation$a;->m(JI)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    iget-object v5, p0, LJb/g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getNativeAllocationPointer()J

    move-result-wide v5

    iget-object v7, p0, LJb/g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/filament/SurfaceOrientation$a;->k(JI)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    iget-object v5, p0, LJb/g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v5

    iget-object v6, p0, LJb/g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v6

    if-lt v5, v6, :cond_6

    iget-object v5, p0, LJb/g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v5

    iget-object v7, p0, LJb/g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/filament/SurfaceOrientation$a;->b(JI)Lcom/google/android/filament/SurfaceOrientation$a;

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/filament/SurfaceOrientation$a;->a()Lcom/google/android/filament/SurfaceOrientation;

    move-result-object v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iput-object v1, p0, LJb/g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getNativeAllocationPointer()J

    move-result-wide v0

    iget-object v5, p0, LJb/g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v0, v1, v5}, Lcom/google/android/filament/SurfaceOrientation;->v(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v3}, Lcom/google/android/filament/SurfaceOrientation;->r()V

    if-eqz v4, :cond_7

    iput-object v2, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_7
    return-void

    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/google/android/filament/SurfaceOrientation;->r()V

    :cond_8
    if-eqz v4, :cond_9

    iput-object v2, p0, LJb/g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_9
    throw v0

    :cond_a
    :goto_5
    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, LJb/g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, LJb/g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
