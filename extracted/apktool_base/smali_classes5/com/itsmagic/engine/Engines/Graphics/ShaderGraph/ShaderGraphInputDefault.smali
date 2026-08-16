.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fileIPP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inputIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public w:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public x:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public z:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    return-void
.end method

.method public static a(F)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-static {p0, v0}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "cubemapFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->inputIndex:I

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method

.method public static d(IFF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "x",
            "y"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->inputIndex:I

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->y:F

    return-object v0
.end method

.method public static e(IFFF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "x",
            "y",
            "z"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->inputIndex:I

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->y:F

    iput p3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->z:F

    return-object v0
.end method

.method public static f(IFFFF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->inputIndex:I

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->y:F

    iput p3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->z:F

    iput p4, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->w:F

    return-object v0
.end method

.method public static g(IF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "v"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->inputIndex:I

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    return-object v0
.end method

.method public static h(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "textureFile"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;-><init>()V

    iput p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->inputIndex:I

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public i(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoCodeInputDefault: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault$a;->a:[I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, ", "

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "float4("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->y:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->z:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->w:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "float3("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->y:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->z:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "float2("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->x:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->y:F

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
