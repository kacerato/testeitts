.class public Lf9/b;
.super LLb/c;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    invoke-direct {p0}, LLb/c;-><init>()V

    iput-object p1, p0, Lf9/b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
    .locals 1

    iget-object v0, p0, Lf9/b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lf9/b;->b:I

    return v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    iput-object p1, p0, Lf9/b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    iput p1, p0, Lf9/b;->b:I

    return-void
.end method
