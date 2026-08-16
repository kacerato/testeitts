.class public Lcom/itsmagic/engine/Engines/Graphics/Utils/ShaderConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public compiledFragment:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public compiledVertex:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public version:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "version",
            "compiledVertex",
            "compiledFragment"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Utils/ShaderConfig;->name:Ljava/lang/String;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Utils/ShaderConfig;->version:I

    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Utils/ShaderConfig;->compiledVertex:Z

    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Utils/ShaderConfig;->compiledFragment:Z

    return-void
.end method
