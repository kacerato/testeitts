.class public Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/environment/EnvironmentCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapshotJob"
.end annotation


# instance fields
.field callback:Lcom/jme3/environment/generation/JobProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/texture/TextureCubeMap;",
            ">;"
        }
    .end annotation
.end field

.field scene:Lcom/jme3/scene/Spatial;

.field final synthetic this$0:Lcom/jme3/environment/EnvironmentCamera;


# direct methods
.method public constructor <init>(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/environment/generation/JobProgressListener;Lcom/jme3/scene/Spatial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;->this$0:Lcom/jme3/environment/EnvironmentCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;->callback:Lcom/jme3/environment/generation/JobProgressListener;

    iput-object p3, p0, Lcom/jme3/environment/EnvironmentCamera$SnapshotJob;->scene:Lcom/jme3/scene/Spatial;

    return-void
.end method
