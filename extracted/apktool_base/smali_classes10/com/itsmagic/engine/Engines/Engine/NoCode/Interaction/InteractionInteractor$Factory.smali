.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor$Factory;
.super Lfb/AbstractC13203c;
.source "InteractionInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lfb/AbstractC13203c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1

    .line 39
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->COMPONENT_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "InteractionInteractor"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "NoCode / Interaction"

    return-object v0
.end method

.method public h(Z)Ljava/lang/String;
    .locals 0

    .line 54
    const-string p1, "Interaction Interactor"

    return-object p1
.end method
