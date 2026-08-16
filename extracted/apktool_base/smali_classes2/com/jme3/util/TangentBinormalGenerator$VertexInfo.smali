.class Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/TangentBinormalGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VertexInfo"
.end annotation


# instance fields
.field public final indices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final normal:Lcom/jme3/math/Vector3f;

.field public final position:Lcom/jme3/math/Vector3f;

.field public final texCoord:Lcom/jme3/math/Vector2f;


# direct methods
.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->indices:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->position:Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->normal:Lcom/jme3/math/Vector3f;

    iput-object p3, p0, Lcom/jme3/util/TangentBinormalGenerator$VertexInfo;->texCoord:Lcom/jme3/math/Vector2f;

    return-void
.end method
