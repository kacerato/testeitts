.class public Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field private element:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation
.end field

.field private skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object p3, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Ljava/lang/Comparable;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    return-object p0
.end method

.method private rebalanceLeftGrown()Z
    .locals 7

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v4

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v5, v6, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    :cond_2
    iget-object v5, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v5, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v6, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_1
    return v2
.end method

.method private rebalanceLeftShrunk()Z
    .locals 8

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v5, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    :cond_1
    sget-object v7, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v5, v7, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v6, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    :cond_2
    iget-object v3, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v3, v3, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v6, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_0
    iput-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    :cond_5
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2
.end method

.method private rebalanceRightGrown()Z
    .locals 7

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v3

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v5, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_1

    :cond_1
    iget-object v5, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v5, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v6, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_1
    return v2

    :cond_4
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2
.end method

.method private rebalanceRightShrunk()Z
    .locals 8

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew:[I

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v4

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v5, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    sget-object v6, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->LEFT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v5, v6, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v4

    :cond_2
    sget-object v7, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->BALANCED:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    if-ne v5, v7, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v6, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v2

    :cond_3
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCCW()V

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rotateCW()V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v6, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;->RIGHT_HIGH:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    :goto_0
    iput-object v7, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->skew:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Skew;

    return v4
.end method

.method private rotateCCW()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    iput-object p0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_0
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_1

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_1
    return-void
.end method

.method private rotateCW()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    iput-object p0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_0
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_1

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_0

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;->access$302(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto/16 :goto_8

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v5, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v5, :cond_2

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne p0, v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    move-object v2, v1

    move v1, v0

    move-object v0, p0

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    :goto_1
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v0, v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :goto_3
    iget-object v0, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_6

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    goto :goto_4

    :cond_6
    iput-object v2, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :goto_4
    if-eqz v2, :cond_7

    iput-object v0, v2, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftShrunk()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_8
    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightShrunk()Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_6
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-ne v0, v2, :cond_a

    move v0, v4

    goto :goto_7

    :cond_a
    move v0, v3

    :goto_7
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_5

    :cond_b
    :goto_8
    return-void
.end method

.method public getElement()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNext()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevious()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->getLargest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->parent:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmallest()Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree<",
            "TT;>.Node;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public insert(Ljava/lang/Comparable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->element:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftGrown()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceLeftGrown()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->this$0:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;-><init>(Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree;Ljava/lang/Comparable;Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightGrown()Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->insert(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->rebalanceRightGrown()Z

    move-result v1

    :cond_4
    return v1
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->left:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->right:Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/utilities/AVLTree$Node;->size()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
