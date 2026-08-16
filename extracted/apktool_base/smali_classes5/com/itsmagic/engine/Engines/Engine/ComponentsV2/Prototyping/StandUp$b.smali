.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp$b;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp$b;->a()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    return-object v0
.end method
