.class public final LJAVARuntime/Matrix4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation


# instance fields
.field public transient matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 17
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "m00",
            "m01",
            "m02",
            "m03",
            "m10",
            "m11",
            "m12",
            "m13",
            "m20",
            "m21",
            "m22",
            "m23",
            "m30",
            "m31",
            "m32",
            "m33"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m00",
            "m01",
            "m02",
            "m03",
            "m10",
            "m11",
            "m12",
            "m13",
            "m20",
            "m21",
            "m22",
            "m23",
            "m30",
            "m31",
            "m32",
            "m33"
        }
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static/range {p0 .. p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v16}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>(FFFFFFFFFFFFFFFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix4"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    iput-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method


# virtual methods
.method public fillFloatArray([F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatArray"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p([FZ)V

    return-void
.end method

.method public fillFloatArray([FZ)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "array",
            "columnMajor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "floatArray",
            "columnMajor"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p([FZ)V

    return-void
.end method

.method public getRotation()LJAVARuntime/Quaternion;
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getRotation(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getScale()LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->u1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getScale(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->u1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getTranslation()LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getTranslation(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public inverse()LJAVARuntime/Matrix4;
    .locals 2

    .line 1
    new-instance v0, LJAVARuntime/Matrix4;

    iget-object v1, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->C()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/Matrix4;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-object v0
.end method

.method public inverse(LJAVARuntime/Matrix4;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p1, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 3
    iget-object p1, p1, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public mul(LJAVARuntime/Matrix4;)LJAVARuntime/Matrix4;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Matrix4;

    iget-object v1, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->K(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Matrix4;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-object v0
.end method

.method public mul(FFF)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->M(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(FFFLJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "out"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p4, p4, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->N(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->O(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(LJAVARuntime/Matrix4;LJAVARuntime/Matrix4;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p2, p2, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public mulAcross(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->W(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mulAcross(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->W(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mulNormal(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mulNormal(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public set([F)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->v0([FZ)V

    return-void
.end method

.method public setRotation(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->F0(FFFF)V

    return-void
.end method

.method public setRotation(LJAVARuntime/Quaternion;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->setScale(FFF)V

    return-void
.end method

.method public setScale(LJAVARuntime/Vector3;)V
    .locals 3
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->setScale(FFF)V

    return-void
.end method

.method public setTransform(LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p3, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public setTranslation(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j1(FFF)V

    return-void
.end method

.method public setTranslation(LJAVARuntime/Vector3;)V
    .locals 3
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j1(FFF)V

    return-void
.end method

.method public toRotationQuat()LJAVARuntime/Quaternion;
    .locals 1

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public toRotationQuat(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public toScaleVector()LJAVARuntime/Vector3;
    .locals 1

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->t1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public toScaleVector(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->u1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public toTranslationVector()LJAVARuntime/Vector3;
    .locals 1

    .line 1
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->t1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public toTranslationVector(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Matrix4;->matrix4:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->u1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method
