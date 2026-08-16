.class LJAVARuntime/GizmoPath$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GizmoPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/GizmoPath;


# direct methods
.method public constructor <init>(LJAVARuntime/GizmoPath;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/GizmoPath$Entry;->this$0:LJAVARuntime/GizmoPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public indicesCount(F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thickness"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public insertIndices(LJAVARuntime/NativeIntBuffer;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeIntBuffer",
            "offset",
            "thickness"
        }
    .end annotation

    return-void
.end method

.method public insertVertices(LJAVARuntime/NativeFloatBuffer;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeFloatBuffer",
            "offset",
            "thickness"
        }
    .end annotation

    return-void
.end method

.method public verticesCount(F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thickness"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
