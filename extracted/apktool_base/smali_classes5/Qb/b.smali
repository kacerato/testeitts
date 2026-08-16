.class public final LQb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/filament/BatchOperators;

.field public b:Lcom/google/android/filament/Engine;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entityCount",
            "entities",
            "layers",
            "layersPerEntity"
        }
    .end annotation

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK8/a;->G()V

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    if-lez p4, :cond_5

    const/16 v0, 0x8

    if-gt p4, v0, :cond_5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    if-lt v0, p1, :cond_5

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p1

    int-to-long v4, p4

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    iget-object v1, p0, LQb/b;->a:Lcom/google/android/filament/BatchOperators;

    if-eqz v1, :cond_1

    iget-object v1, p0, LQb/b;->b:Lcom/google/android/filament/Engine;

    if-eq v1, v0, :cond_2

    :cond_1
    iput-object v0, p0, LQb/b;->b:Lcom/google/android/filament/Engine;

    new-instance v1, Lcom/google/android/filament/BatchOperators;

    invoke-direct {v1, v0}, Lcom/google/android/filament/BatchOperators;-><init>(Lcom/google/android/filament/Engine;)V

    iput-object v1, p0, LQb/b;->a:Lcom/google/android/filament/BatchOperators;

    :cond_2
    iget-object v0, p0, LQb/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eq v0, p2, :cond_3

    iput-object p2, p0, LQb/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getNativeAllocationPointer()J

    move-result-wide v0

    iput-wide v0, p0, LQb/b;->e:J

    :cond_3
    iget-object p2, p0, LQb/b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eq p2, p3, :cond_4

    iput-object p3, p0, LQb/b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getNativeAllocationPointer()J

    move-result-wide p2

    iput-wide p2, p0, LQb/b;->f:J

    :cond_4
    iget-object v0, p0, LQb/b;->a:Lcom/google/android/filament/BatchOperators;

    iget-wide v2, p0, LQb/b;->e:J

    iget-wide v4, p0, LQb/b;->f:J

    move v1, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/filament/BatchOperators;->changeVisibility(IJJI)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "visibility buffer range is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "visibility buffers cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
