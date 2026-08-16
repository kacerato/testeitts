.class public LJAVARuntime/CompoundVertex$Part;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/CompoundVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# instance fields
.field public transient instance:LIb/b$a;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LIb/b$a;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJAVARuntime/CompoundVertex$Part;->instance:LIb/b$a;

    .line 3
    invoke-virtual {p1, p0}, LIb/b$a;->k(LJAVARuntime/CompoundVertex$Part;)V

    return-void
.end method


# virtual methods
.method public getMatrix4()LJAVARuntime/Matrix4;
    .locals 1

    iget-object v0, p0, LJAVARuntime/CompoundVertex$Part;->instance:LIb/b$a;

    invoke-virtual {v0}, LIb/b$a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n1()LJAVARuntime/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public getVertex()LJAVARuntime/Vertex;
    .locals 1

    iget-object v0, p0, LJAVARuntime/CompoundVertex$Part;->instance:LIb/b$a;

    invoke-virtual {v0}, LIb/b$a;->j()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    return-object v0
.end method
