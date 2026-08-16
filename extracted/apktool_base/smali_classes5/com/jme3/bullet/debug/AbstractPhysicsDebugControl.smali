.class public abstract Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# instance fields
.field protected final debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;


# direct methods
.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    return-void
.end method

.method private static applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/scene/Spatial;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    .line 3
    invoke-virtual {p2, p1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {p1, p2, v0}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "cloneFields() isn\'t implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "jmeClone() isn\'t implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "read() isn\'t implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "write() isn\'t implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
