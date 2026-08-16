.class public LNb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public b:LJAVARuntime/GraphicsSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    return-void
.end method

.method public b()LJAVARuntime/GraphicsSettings;
    .locals 1

    iget-object v0, p0, LNb/a;->b:LJAVARuntime/GraphicsSettings;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GraphicsSettings;

    invoke-direct {v0, p0}, LJAVARuntime/GraphicsSettings;-><init>(LNb/a;)V

    iput-object v0, p0, LNb/a;->b:LJAVARuntime/GraphicsSettings;

    :cond_0
    return-object v0
.end method
