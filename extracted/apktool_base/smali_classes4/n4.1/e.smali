.class public Ln4/e;
.super Ln4/f;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln4/f;-><init>()V

    .line 2
    iput-object p1, p0, Ln4/e;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ln4/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphFile"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ln4/f;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ln4/e;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    .line 6
    iput-object p1, p0, Ln4/e;->b:Ljava/lang/String;

    return-void
.end method
