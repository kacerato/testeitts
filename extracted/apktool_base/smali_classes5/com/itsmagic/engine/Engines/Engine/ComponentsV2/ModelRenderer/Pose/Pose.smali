.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rootBone:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;->rootBone:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/Pose;->name:Ljava/lang/String;

    return-void
.end method
