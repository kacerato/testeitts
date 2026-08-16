.class final Lcom/ardor3d/input/logical/TriggerConditions$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/input/logical/TriggerConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/I<",
        "Lcom/ardor3d/input/logical/TwoInputStates;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/logical/TriggerConditions$2;->apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z

    move-result p1

    return p1
.end method
