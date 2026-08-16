.class public Ljpct/ae/wrapper/JInteract2D;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctInteract2D"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Interact2D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/threed/jpct/Interact2D;->project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static project3D2D2(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/threed/jpct/Interact2D;->project3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static projectCenter3D2D(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1}, Lcom/threed/jpct/Interact2D;->projectCenter3D2D(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static projectCenter3D2D2(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/threed/jpct/Interact2D;->projectCenter3D2D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;II)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;II)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3D2(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3D3(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIF)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3D4(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;II)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/threed/jpct/Interact2D;->reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;II)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method

.method public static reproject2D3DWS2(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/threed/jpct/Interact2D;->reproject2D3DWS(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p0

    return-object p0
.end method
