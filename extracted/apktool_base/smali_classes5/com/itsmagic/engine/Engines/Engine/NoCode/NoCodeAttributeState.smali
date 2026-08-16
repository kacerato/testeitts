.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;
.source "SourceFile"


# instance fields
.field public attributeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;->attributeId:Ljava/lang/String;

    return-void
.end method

.method public static x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;->attributeId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;)V

    return-object v0
.end method
