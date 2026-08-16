.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$finalClosestHit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Cursor3D$a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    return-void
.end method
