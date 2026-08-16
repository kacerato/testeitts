.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimGraphComponent;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final E:Ljava/lang/String; = "AnimGraphComponent"

.field public static final F:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimGraphComponent;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimGraphComponent;->F:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimGraphComponent$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimGraphComponent$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "AnimGraphComponent"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    return-void
.end method
