.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter;->cleanupAnimation(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Animation/c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$l;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/ITsMagic/ModelImporter/NativeModelImporter$m;->a:[I

    iget-object v2, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$l;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    if-eq v1, v0, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->e()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->l()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0

    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->n()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    return v0

    :cond_7
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frame"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$l;->a(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Z

    move-result p1

    return p1
.end method
