.class public LIb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public c:I

.field public d:I

.field public e:I

.field public f:LJAVARuntime/CompoundVertex$Part;


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
            "matrix4"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIb/b$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object p2, p0, LIb/b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public static synthetic a(LIb/b$a;)I
    .locals 0

    iget p0, p0, LIb/b$a;->c:I

    return p0
.end method

.method public static synthetic b(LIb/b$a;I)I
    .locals 0

    iput p1, p0, LIb/b$a;->c:I

    return p1
.end method

.method public static synthetic c(LIb/b$a;)I
    .locals 0

    iget p0, p0, LIb/b$a;->d:I

    return p0
.end method

.method public static synthetic d(LIb/b$a;I)I
    .locals 0

    iput p1, p0, LIb/b$a;->d:I

    return p1
.end method

.method public static synthetic e(LIb/b$a;)I
    .locals 0

    iget p0, p0, LIb/b$a;->e:I

    return p0
.end method

.method public static synthetic f(LIb/b$a;I)I
    .locals 0

    iput p1, p0, LIb/b$a;->e:I

    return p1
.end method

.method public static synthetic g(LIb/b$a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iget-object p0, p0, LIb/b$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p0
.end method

.method public static synthetic h(LIb/b$a;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 0

    iget-object p0, p0, LIb/b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-object p0
.end method


# virtual methods
.method public i()Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 1

    iget-object v0, p0, LIb/b$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-object v0
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LIb/b$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public k(LJAVARuntime/CompoundVertex$Part;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, LIb/b$a;->f:LJAVARuntime/CompoundVertex$Part;

    return-void
.end method

.method public l()LJAVARuntime/CompoundVertex$Part;
    .locals 1

    iget-object v0, p0, LIb/b$a;->f:LJAVARuntime/CompoundVertex$Part;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/CompoundVertex$Part;

    invoke-direct {v0, p0}, LJAVARuntime/CompoundVertex$Part;-><init>(LIb/b$a;)V

    iput-object v0, p0, LIb/b$a;->f:LJAVARuntime/CompoundVertex$Part;

    :cond_0
    return-object v0
.end method
