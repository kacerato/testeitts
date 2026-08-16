.class public Lif/a;
.super Lcom/jme3/post/Filter;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Ljava/lang/String; = "MatDefs/filter/ContrastAdjustment.j3md"

.field public static final synthetic e:Z


# instance fields
.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/a;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "ContrastAdjustmentFilter"

    invoke-direct {p0, v0}, Lcom/jme3/post/Filter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 2
    const-string v0, "ContrastAdjustmentFilter"

    invoke-direct {p0, v0}, Lcom/jme3/post/Filter;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v0, "exponent"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 4
    invoke-virtual {p0, p1}, Lif/a;->b(F)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lif/a;->b:F

    return v0
.end method

.method public final b(F)V
    .locals 2

    const-string v0, "exponent"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    if-eqz v0, :cond_0

    const-string v1, "Exponent"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    :cond_0
    iput p1, p0, Lif/a;->b:F

    return-void
.end method

.method public getMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public initFilter(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V
    .locals 1

    const-string v0, "asset manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "render manager"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p2, "view port"

    invoke-static {p3, p2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p2, "width"

    invoke-static {p4, p2}, Lif/E;->F(ILjava/lang/String;)Z

    const-string p2, "height"

    invoke-static {p5, p2}, Lif/E;->F(ILjava/lang/String;)Z

    new-instance p2, Lcom/jme3/material/Material;

    const-string p3, "MatDefs/filter/ContrastAdjustment.j3md"

    invoke-direct {p2, p1, p3}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    const-string p1, "Exponent"

    iget p3, p0, Lif/a;->b:F

    invoke-virtual {p2, p1, p3}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "exponent"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lif/a;->b:F

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lif/a;->b:F

    const-string v1, "exponent"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
