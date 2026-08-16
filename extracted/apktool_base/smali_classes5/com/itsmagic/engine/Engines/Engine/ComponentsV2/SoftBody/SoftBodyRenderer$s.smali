.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:I

.field public final c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final d:Z

.field public final e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final g:Lcom/google/android/filament/Box;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZLcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/google/android/filament/Box;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "version",
            "uvs",
            "destroyUvsAfterUpload",
            "tangents",
            "bounds",
            "box"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->b:I

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->d:Z

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;->g:Lcom/google/android/filament/Box;

    return-void
.end method
