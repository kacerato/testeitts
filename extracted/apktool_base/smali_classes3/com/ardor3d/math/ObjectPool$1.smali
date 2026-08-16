.class Lcom/ardor3d/math/ObjectPool$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/math/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ardor3d/math/ObjectPool;


# direct methods
.method public constructor <init>(Lcom/ardor3d/math/ObjectPool;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/math/ObjectPool$1;->this$0:Lcom/ardor3d/math/ObjectPool;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/ObjectPool$1;->initialValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ardor3d/math/ObjectPool$1;->this$0:Lcom/ardor3d/math/ObjectPool;

    invoke-static {v1}, Lcom/ardor3d/math/ObjectPool;->access$000(Lcom/ardor3d/math/ObjectPool;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
