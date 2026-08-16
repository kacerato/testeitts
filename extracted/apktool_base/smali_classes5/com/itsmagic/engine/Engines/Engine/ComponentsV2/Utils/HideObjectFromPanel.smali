.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final E:Ljava/lang/String; = "HideObjectFromPanel"

.field public static final F:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;->F:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "HideObjectFromPanel"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "HideObjectFromPanel"

    return-object v0
.end method
