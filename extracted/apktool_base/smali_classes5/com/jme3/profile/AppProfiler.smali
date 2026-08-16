.class public interface abstract Lcom/jme3/profile/AppProfiler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract appStep(Lcom/jme3/profile/AppStep;)V
.end method

.method public varargs abstract appSubStep([Ljava/lang/String;)V
.end method

.method public varargs abstract spStep(Lcom/jme3/profile/SpStep;[Ljava/lang/String;)V
.end method

.method public abstract vpStep(Lcom/jme3/profile/VpStep;Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V
.end method
