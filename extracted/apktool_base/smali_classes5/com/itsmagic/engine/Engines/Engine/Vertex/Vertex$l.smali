.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Z

.field public final synthetic k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic l:Z

.field public final synthetic m:I

.field public final synthetic n:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final synthetic o:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final synthetic p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;IIIZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$generatedUvBuffer",
            "val$uvBufferSnapshot",
            "val$boundsBufferSnapshot",
            "val$skinBufferSnapshot",
            "val$quatS4BufferSnapshot",
            "val$vertexCount",
            "val$bufferCount",
            "val$boundsBufferIndex",
            "val$hasSkin",
            "val$positionsBufferSnapshot",
            "val$useUshort",
            "val$indexCount",
            "val$ushortIndexBufferSnapshot",
            "val$trianglesBufferSnapshot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->b:Z

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->g:I

    iput p8, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->h:I

    iput p9, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->i:I

    iput-boolean p10, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->j:Z

    iput-object p11, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-boolean p12, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->l:Z

    iput p13, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->m:I

    iput-object p14, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->n:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iput-object p15, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;)V

    new-instance v2, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v2}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->g:I

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->h:I

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v4

    sget-object v5, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v10

    sget-object v11, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT16:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/google/android/filament/VertexBuffer$a;->HALF2:Lcom/google/android/filament/VertexBuffer$a;

    :goto_0
    move-object v13, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    sget-object v3, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    goto :goto_0

    :goto_1
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x4

    :goto_2
    move v15, v3

    goto :goto_3

    :cond_1
    const/16 v3, 0x8

    goto :goto_2

    :goto_3
    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v3

    sget-object v9, Lcom/google/android/filament/VertexBuffer$c;->TANGENTS:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v6, Lcom/google/android/filament/VertexBuffer$a;->SHORT4:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x2

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v6

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v7, v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->i:I

    const/4 v10, 0x0

    const/16 v11, 0x18

    move-object v9, v2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v6

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v7, v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->i:I

    const/16 v10, 0xc

    const/16 v11, 0x18

    move-object v9, v2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    iget-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->j:Z

    if-eqz v3, :cond_2

    sget-object v13, Lcom/google/android/filament/VertexBuffer$c;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v3, Lcom/google/android/filament/VertexBuffer$a;->UBYTE4:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/4 v14, 0x3

    move-object v12, v2

    move-object v15, v3

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    sget-object v4, Lcom/google/android/filament/VertexBuffer$c;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v16, 0x4

    const/16 v17, 0x8

    const/4 v14, 0x3

    move-object v12, v2

    move-object v13, v4

    move-object v15, v3

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    :cond_2
    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->m(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->m(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->o(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->j:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->k(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    :cond_3
    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->i:I

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3, v2, v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->n(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Ljava/lang/Runnable;)V

    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->l:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/google/android/filament/IndexBuffer$a$b;->UINT:Lcom/google/android/filament/IndexBuffer$a$b;

    :goto_4
    new-instance v2, LRb/d;

    new-instance v4, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v4}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->m:I

    invoke-virtual {v4, v5}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    invoke-direct {v2, v0}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->l:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->n:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$b;

    invoke-direct {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;)V

    invoke-virtual {v2, v0, v4}, LRb/d;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_5
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->o:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$c;

    invoke-direct {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;)V

    invoke-virtual {v2, v0, v4}, LRb/d;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Ljava/lang/Runnable;)V

    :goto_5
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LRb/d;)LRb/d;

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->t1()V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s1()V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void

    :goto_6
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    throw v0
.end method
