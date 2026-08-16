.class public Lic/L1;
.super Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "WorldFromModelMatrix"


# instance fields
.field public final c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/L1$a;

    invoke-direct {v0}, Lic/L1$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "World From Model"

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lic/L1;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v0, "WorldFromModelMatrix"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    return-void
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

    const-string v4, "getWorldFromModelMatrix()"

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

    iget-object v0, p0, Lic/L1;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    return-object v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

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

    const-string p1, "World From Model"

    return-object p1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
