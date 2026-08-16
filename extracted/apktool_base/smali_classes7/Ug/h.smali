.class public LUg/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public b:LUg/g;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldVertex",
            "renderMatrix"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, LUg/h;->a:[F

    iput-object p1, p0, LUg/h;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p0, p2}, LUg/h;->g([F)V

    return-void
.end method


# virtual methods
.method public a()LUg/g;
    .locals 1

    iget-object v0, p0, LUg/h;->b:LUg/g;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 1

    iget-object v0, p0, LUg/h;->d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object v0
.end method

.method public c()[F
    .locals 1

    iget-object v0, p0, LUg/h;->a:[F

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LUg/h;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public e(LUg/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlasVertex"
        }
    .end annotation

    iput-object p1, p0, LUg/h;->b:LUg/g;

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iput-object p1, p0, LUg/h;->d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-void
.end method

.method public g([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object v0, p0, LUg/h;->a:[F

    invoke-static {p1, v0}, LNc/c;->b([F[F)V

    return-void
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldVertex"
        }
    .end annotation

    iput-object p1, p0, LUg/h;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method
