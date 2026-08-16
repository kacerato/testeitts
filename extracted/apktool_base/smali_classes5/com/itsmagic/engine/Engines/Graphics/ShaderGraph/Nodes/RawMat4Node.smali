.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;
.super Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "RawMat4"


# instance fields
.field public final c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

.field public c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Mat4"

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v0, "RawMat4"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->exposeInInspector:Z

    return-void
.end method

.method private static H(F)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-static {p0, v0}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private I()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mat4("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static J(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "float4(0.0)"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "float4("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->H(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->H(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->H(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->H(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "stage"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->I()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    return-void
.end method

.method public q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawMat4Node;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    return-object v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    return-object v0
.end method

.method public v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "Mat4"

    return-object p1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
