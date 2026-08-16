.class public Lic/L;
.super Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/B;


# static fields
.field public static final e:Ljava/lang/String; = "Fresnel"


# instance fields
.field public final c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

.field public final d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/L$a;

    invoke-direct {v0}, Lic/L$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    const-string v3, "Normal"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v4, "View"

    invoke-direct {v3, v4, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v5, "Power"

    invoke-direct {v1, v5, v4, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V

    filled-new-array {v0, v3, v1}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lic/L;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Out"

    invoke-direct {v0, v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lic/L;->d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v0, "Fresnel"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "1.0"

    return-object p1

    :cond_1
    const-string p1, "getWorldViewVector()"

    return-object p1

    :cond_2
    const-string p1, "getWorldGeometricNormalVector()"

    return-object p1
.end method

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

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, p0, v3, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v4, 0x2

    invoke-interface {p1, p0, v4, p2, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p0, v1, p2, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "fresnel.glsl"

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "@OUT@"

    invoke-static {v3, v5, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "@NORMAL@"

    invoke-static {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@VIEW@"

    invoke-static {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@POWER@"

    invoke-static {v0, v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    return-void
.end method

.method public m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 1

    iget-object v0, p0, Lic/L;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    return-object v0
.end method

.method public q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 1

    iget-object v0, p0, Lic/L;->d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    return-object v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

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

    const-string p1, "Fresnel"

    return-object p1
.end method
