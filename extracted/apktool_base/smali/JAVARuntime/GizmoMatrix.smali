.class public LJAVARuntime/GizmoMatrix;
.super LJAVARuntime/GizmoElement;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Debug"
    }
.end annotation


# instance fields
.field private transient matrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJAVARuntime/GizmoElement;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, LJAVARuntime/GizmoMatrix;->matrix:[F

    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoMatrix;->matrix:[F

    return-object v0
.end method

.method public setMatrix([F)V
    .locals 3
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "matrix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoMatrix;->matrix:[F

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
