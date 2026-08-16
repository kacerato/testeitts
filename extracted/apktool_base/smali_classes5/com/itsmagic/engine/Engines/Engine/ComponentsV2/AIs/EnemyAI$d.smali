.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$d;
.super Lfb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfb/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R8:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "EnemyAI"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "NPC"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "EnemyAI (New)"

    return-object v0
.end method
