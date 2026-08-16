.class Lcom/jme3/input/InputManager$Mapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mapping"
.end annotation


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/input/controls/InputListener;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager$Mapping;->triggers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager$Mapping;->listeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/jme3/input/InputManager$Mapping;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/jme3/input/InputManager$Mapping;->listeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/jme3/input/InputManager$Mapping;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/jme3/input/InputManager$Mapping;->triggers:Ljava/util/ArrayList;

    return-object p0
.end method
