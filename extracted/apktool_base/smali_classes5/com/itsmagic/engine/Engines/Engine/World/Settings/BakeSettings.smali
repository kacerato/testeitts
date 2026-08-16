.class public Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public clearColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public options:Lorg/ITsMagic/Atlas/BakeOptions;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xcb

    const/16 v2, 0xff

    const/16 v3, 0x94

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;->clearColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {v0}, Lorg/ITsMagic/Atlas/BakeOptions;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/BakeSettings;->options:Lorg/ITsMagic/Atlas/BakeOptions;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    return-void
.end method
