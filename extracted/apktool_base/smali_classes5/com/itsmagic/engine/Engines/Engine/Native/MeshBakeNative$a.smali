.class public final Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "matrix"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Native/MeshBakeNative$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method
