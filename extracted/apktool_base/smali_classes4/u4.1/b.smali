.class public Lu4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "transform"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lu4/b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    return-void
.end method
