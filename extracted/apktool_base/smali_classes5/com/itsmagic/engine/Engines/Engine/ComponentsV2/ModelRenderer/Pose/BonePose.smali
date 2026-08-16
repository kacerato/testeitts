.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public children:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;",
            ">;"
        }
    .end annotation
.end field

.field public objectGUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectGUID",
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;->children:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;->objectGUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;->position:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;->rotation:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Pose/BonePose;->scale:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
