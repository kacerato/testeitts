.class public Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:F

.field public final b:[J

.field public final c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;


# direct methods
.method public constructor <init>(F[JLcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cellSize",
            "cellKeys",
            "cellStarts",
            "cellCounts",
            "cellIndices"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->a:F

    iput-object p2, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->b:[J

    iput-object p3, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object p4, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object p5, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method

.method public static b(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;)Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;->a(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-static {p0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;->a(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v7, v1, [J

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v8, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    new-instance v9, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v9, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    new-instance v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v10, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v7, v3

    invoke-static {p0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;->a(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-virtual {v8, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    invoke-virtual {v9, v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    if-eqz v5, :cond_3

    move v11, v2

    :goto_3
    if-ge v11, v6, :cond_3

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v4, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v11, v11, 0x1

    move v4, v12

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;

    invoke-static {p0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;->b(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;)F

    move-result v6

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;-><init>(F[JLcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    return-void
.end method
