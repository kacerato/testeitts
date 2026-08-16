.class public Lda/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[F

.field public b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>([FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "rotation",
            "vertex"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lda/m;->a:[F

    iput-object p2, p0, Lda/m;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput-object p3, p0, Lda/m;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method
