.class public Lorg/ITsMagic/Atlas/XAtlas$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/XAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:[F

.field public final c:LAc/b;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)V
    .locals 2
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->b:[F

    .line 3
    new-instance v0, LAc/b;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->c:LAc/b;

    .line 4
    iput-object p1, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 5
    invoke-virtual {p0, p2}, Lorg/ITsMagic/Atlas/XAtlas$b;->f([F)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[FLcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertex",
            "matrix",
            "material"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 7
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->b:[F

    .line 8
    new-instance v0, LAc/b;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->c:LAc/b;

    .line 9
    iput-object p1, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 10
    invoke-virtual {p0, p2}, Lorg/ITsMagic/Atlas/XAtlas$b;->f([F)V

    .line 11
    iput-object p3, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/XAtlas$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/XAtlas$b;)[F
    .locals 0

    iget-object p0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->b:[F

    return-object p0
.end method


# virtual methods
.method public c()Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-void
.end method

.method public f([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object v0, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->b:[F

    invoke-static {p1, v0}, LNc/c;->b([F[F)V

    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/XAtlas$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method
