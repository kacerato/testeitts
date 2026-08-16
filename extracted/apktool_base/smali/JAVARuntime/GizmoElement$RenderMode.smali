.class public final enum LJAVARuntime/GizmoElement$RenderMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GizmoElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/GizmoElement$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/GizmoElement$RenderMode;

.field public static final enum Outline:LJAVARuntime/GizmoElement$RenderMode;

.field public static final enum Triangles:LJAVARuntime/GizmoElement$RenderMode;

.field public static final enum WireFrame:LJAVARuntime/GizmoElement$RenderMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/GizmoElement$RenderMode;
    .locals 3

    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    sget-object v2, LJAVARuntime/GizmoElement$RenderMode;->Outline:LJAVARuntime/GizmoElement$RenderMode;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/GizmoElement$RenderMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/GizmoElement$RenderMode;

    const-string v1, "Triangles"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/GizmoElement$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    new-instance v0, LJAVARuntime/GizmoElement$RenderMode;

    const-string v1, "WireFrame"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/GizmoElement$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    new-instance v0, LJAVARuntime/GizmoElement$RenderMode;

    const-string v1, "Outline"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/GizmoElement$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GizmoElement$RenderMode;->Outline:LJAVARuntime/GizmoElement$RenderMode;

    invoke-static {}, LJAVARuntime/GizmoElement$RenderMode;->$values()[LJAVARuntime/GizmoElement$RenderMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/GizmoElement$RenderMode;->$VALUES:[LJAVARuntime/GizmoElement$RenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/GizmoElement$RenderMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/GizmoElement$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/GizmoElement$RenderMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/GizmoElement$RenderMode;
    .locals 1

    sget-object v0, LJAVARuntime/GizmoElement$RenderMode;->$VALUES:[LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {v0}, [LJAVARuntime/GizmoElement$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/GizmoElement$RenderMode;

    return-object v0
.end method
