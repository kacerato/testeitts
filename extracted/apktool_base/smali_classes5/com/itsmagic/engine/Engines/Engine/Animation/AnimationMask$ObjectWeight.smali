.class public Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectWeight"
.end annotation


# instance fields
.field private objectUID:LAc/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private weight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->weight:F

    return-void
.end method

.method public constructor <init>(LAc/b;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "weight"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->weight:F

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->objectUID:LAc/b;

    .line 6
    invoke-static {p2}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->weight:F

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;)LAc/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->objectUID:LAc/b;

    return-object p0
.end method


# virtual methods
.method public b()LAc/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->objectUID:LAc/b;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->weight:F

    return v0
.end method

.method public d(LAc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectUID"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->objectUID:LAc/b;

    return-void
.end method

.method public e(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask$ObjectWeight;->weight:F

    return-void
.end method
