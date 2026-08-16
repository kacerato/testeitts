.class Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field faceIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field nrFaces:I

.field orientationPreserving:Z

.field vertexRepresentative:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;->faceIndices:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;-><init>()V

    return-void
.end method
