.class public Lic/i0;
.super Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/B;


# static fields
.field public static final e:Ljava/lang/String; = "Lerp"


# instance fields
.field public final c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

.field public final d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/i0$a;

    invoke-direct {v0}, Lic/i0$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v2, "A"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v3, "B"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v4, "T"

    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array {v0, v2, v3}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lic/i0;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v2, "Out"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lic/i0;->d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v0, "Lerp"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "resolver"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;->b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2, p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;->b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    return-object p1
.end method

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

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, "0.5"

    return-object p1

    :cond_0
    const/4 p1, 0x0

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

    move-object v0, p1

    check-cast v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lic/i0;->D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v0

    invoke-interface {p1, p0, v1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, p0, v3, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-interface {p1, p0, v4, p2, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p0, v1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mix.glsl"

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "@OUT@"

    invoke-static {v1, v5, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@A@"

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@B@"

    invoke-static {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@T@"

    invoke-static {v0, v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    return-void
.end method

.method public m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 1

    iget-object v0, p0, Lic/i0;->c:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    return-object v0
.end method

.method public q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 1

    iget-object v0, p0, Lic/i0;->d:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

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

    const-string p1, "Lerp"

    return-object p1
.end method
