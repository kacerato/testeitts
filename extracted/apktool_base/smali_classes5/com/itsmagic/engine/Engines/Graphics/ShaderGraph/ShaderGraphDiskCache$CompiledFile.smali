.class Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompiledFile"
.end annotation


# instance fields
.field fragmentCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field params:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$ParamRecord;",
            ">;"
        }
    .end annotation
.end field

.field samplers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$SamplerRecord;",
            ">;"
        }
    .end annotation
.end field

.field version:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field vertexCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache$CompiledFile;-><init>()V

    return-void
.end method
