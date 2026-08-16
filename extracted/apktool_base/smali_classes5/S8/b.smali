.class public LS8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bone"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :goto_0
    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, LS8/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;->f()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    :goto_1
    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iput-object v0, p0, LS8/b;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/Bone;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    :goto_2
    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iput-object v0, p0, LS8/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method
