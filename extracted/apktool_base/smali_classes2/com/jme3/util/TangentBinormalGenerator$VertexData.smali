.class Lcom/jme3/util/TangentBinormalGenerator$VertexData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/TangentBinormalGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VertexData"
.end annotation


# instance fields
.field public final triangles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/util/TangentBinormalGenerator$TriangleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TangentBinormalGenerator$VertexData;->triangles:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/util/TangentBinormalGenerator$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jme3/util/TangentBinormalGenerator$VertexData;-><init>()V

    return-void
.end method
