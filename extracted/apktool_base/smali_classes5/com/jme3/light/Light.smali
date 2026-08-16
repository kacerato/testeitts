.class public abstract Lcom/jme3/light/Light;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/light/Light$Type;
    }
.end annotation


# instance fields
.field protected color:Lcom/jme3/math/ColorRGBA;

.field protected enabled:Z

.field frustumCheckNeeded:Z

.field protected global:Z

.field intersectsFrustum:Z

.field protected transient lastDistance:F

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1}, Lcom/jme3/math/ColorRGBA;-><init>(Lcom/jme3/math/ColorRGBA;)V

    iput-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/jme3/light/Light;->lastDistance:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jme3/light/Light;->enabled:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/jme3/light/Light;->global:Z

    .line 6
    iput-boolean v0, p0, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    .line 7
    iput-boolean v1, p0, Lcom/jme3/light/Light;->intersectsFrustum:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1}, Lcom/jme3/math/ColorRGBA;-><init>(Lcom/jme3/math/ColorRGBA;)V

    iput-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    const/high16 v0, -0x40800000    # -1.0f

    .line 26
    iput v0, p0, Lcom/jme3/light/Light;->lastDistance:F

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/jme3/light/Light;->enabled:Z

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/jme3/light/Light;->global:Z

    .line 29
    iput-boolean v0, p0, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    .line 30
    iput-boolean v1, p0, Lcom/jme3/light/Light;->intersectsFrustum:Z

    .line 31
    invoke-virtual {p0, p1}, Lcom/jme3/light/Light;->setColor(Lcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/ColorRGBA;Z)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1}, Lcom/jme3/math/ColorRGBA;-><init>(Lcom/jme3/math/ColorRGBA;)V

    iput-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    iput v0, p0, Lcom/jme3/light/Light;->lastDistance:F

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/jme3/light/Light;->enabled:Z

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/jme3/light/Light;->global:Z

    .line 20
    iput-boolean v0, p0, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    .line 21
    iput-boolean v1, p0, Lcom/jme3/light/Light;->intersectsFrustum:Z

    .line 22
    invoke-virtual {p0, p1}, Lcom/jme3/light/Light;->setColor(Lcom/jme3/math/ColorRGBA;)V

    .line 23
    iput-boolean p2, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1}, Lcom/jme3/math/ColorRGBA;-><init>(Lcom/jme3/math/ColorRGBA;)V

    iput-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    iput v0, p0, Lcom/jme3/light/Light;->lastDistance:F

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/jme3/light/Light;->enabled:Z

    .line 12
    iput-boolean v0, p0, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/jme3/light/Light;->intersectsFrustum:Z

    .line 14
    iput-boolean p1, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/light/Light;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/Light;

    .line 3
    iget-object v1, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/Light;->clone()Lcom/jme3/light/Light;

    move-result-object v0

    return-object v0
.end method

.method public abstract computeLastDistance(Lcom/jme3/scene/Spatial;)V
.end method

.method public getColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/Light;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()Lcom/jme3/light/Light$Type;
.end method

.method public abstract intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z
.end method

.method public abstract intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z
.end method

.method public abstract intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/light/Light;->enabled:Z

    return v0
.end method

.method public isFrustumCheckNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/light/Light;->global:Z

    return v0
.end method

.method public isIntersectsFrustum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/light/Light;->intersectsFrustum:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "color"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    iput-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    const-string v0, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/light/Light;->enabled:Z

    const-string v0, "name"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/light/Light;->name:Ljava/lang/String;

    const-string v0, "global"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public setColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/light/Light;->enabled:Z

    return-void
.end method

.method public setFrustumCheckNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    return-void
.end method

.method public setIntersectsFrustum(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/light/Light;->intersectsFrustum:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/light/Light;->name:Ljava/lang/String;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    const-string v1, "color"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/light/Light;->enabled:Z

    const-string v1, "enabled"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/light/Light;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jme3/light/Light;->global:Z

    const-string v1, "global"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
