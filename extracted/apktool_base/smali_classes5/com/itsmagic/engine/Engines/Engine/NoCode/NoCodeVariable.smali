.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient a:Ljava/lang/Object;

.field public final transient b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final transient c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final transient d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

.field public final transient e:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final transient f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public guid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public input:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ownerNodeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public slotIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public slotName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lga/H;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lga/H;->NUMBER:Lga/H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->type:Lga/H;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->e:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeVariable;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method
