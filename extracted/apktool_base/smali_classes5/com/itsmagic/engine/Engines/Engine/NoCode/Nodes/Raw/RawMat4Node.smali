.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String; = "RawMat4"


# instance fields
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

.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Mat4"

    sget-object v2, Lga/H;->MAT4:Lga/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_MAT4:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "RawMat4"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->exposeInInspector:Z

    return-void
.end method

.method private static G0(F)Ljava/lang/String;
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

.method private H0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mat4("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Ljava/lang/String;
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

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->G0(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->G0(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->G0(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->G0(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "Matrix 4"

    return-object p1
.end method

.method public c0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m0()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v4, v3, v2, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    :goto_1
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v5, v3, v3, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    :goto_2
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Raw/RawMat4Node;->c3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object v2

    goto :goto_3

    :cond_3
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v6, v3, v3, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    move-object v2, v6

    :goto_3
    filled-new-array {v1, v4, v5, v2}, [Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_RAW_MAT_4:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
