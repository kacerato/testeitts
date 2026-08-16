.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;
.super Lob/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$b;
    }
.end annotation


# instance fields
.field public e:LJAVARuntime/GizmoObject;

.field public g:Z


# direct methods
.method public constructor <init>(LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gizmoObject",
            "runnable"
        }
    .end annotation

    invoke-direct {p0}, Lob/b;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;->e:LJAVARuntime/GizmoObject;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$b;LJAVARuntime/GizmoObject;)V

    invoke-super {p0, v0}, Lob/b;->i(Lob/b$a;)V

    return-void
.end method
