.class public Lon/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lon/j;

.field public final b:[I

.field public final c:[Lon/m;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lon/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lon/e;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[I>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lon/j;[I[Lon/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "meta",
            "indexToNode",
            "nodeLinks2",
            "graphMeta",
            "graphMeshData",
            "graphConnections"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lon/j;",
            "[I[",
            "Lon/m;",
            "Ljava/util/List<",
            "Lon/g;",
            ">;",
            "Ljava/util/List<",
            "Lon/e;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[I>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lon/d;->a:Lon/j;

    iput-object p2, p0, Lon/d;->b:[I

    iput-object p3, p0, Lon/d;->c:[Lon/m;

    iput-object p4, p0, Lon/d;->d:Ljava/util/List;

    iput-object p5, p0, Lon/d;->e:Ljava/util/List;

    iput-object p6, p0, Lon/d;->f:Ljava/util/List;

    return-void
.end method
