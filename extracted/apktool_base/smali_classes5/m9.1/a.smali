.class public Lm9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v0, p0, Lm9/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lm9/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, p0, Lm9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 1

    iget-object v0, p0, Lm9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lm9/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method
