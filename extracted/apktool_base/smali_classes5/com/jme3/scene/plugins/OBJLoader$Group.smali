.class Lcom/jme3/scene/plugins/OBJLoader$Group;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/plugins/OBJLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field private final faces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/scene/plugins/OBJLoader$Face;",
            ">;"
        }
    .end annotation
.end field

.field private final matFaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/scene/plugins/OBJLoader$Face;",
            ">;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader$Group;->faces:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader$Group;->matFaces:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/jme3/scene/plugins/OBJLoader$Group;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/plugins/OBJLoader$Group;->matFaces:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/plugins/OBJLoader$Group;->faces:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/plugins/OBJLoader$Group;->name:Ljava/lang/String;

    return-object p0
.end method
