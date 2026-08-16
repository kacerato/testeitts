.class Lcom/ardor3d/util/geom/NormalGenerator$Triangle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/geom/NormalGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Triangle"
.end annotation


# instance fields
.field public edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

.field public normal:Lcom/ardor3d/math/Vector3;

.field final synthetic this$0:Lcom/ardor3d/util/geom/NormalGenerator;


# direct methods
.method public constructor <init>(Lcom/ardor3d/util/geom/NormalGenerator;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->this$0:Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 2
    new-array p1, p1, [Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    iput-object p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    .line 3
    new-instance p1, Lcom/ardor3d/math/Vector3;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->normal:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/util/geom/NormalGenerator;III)V
    .locals 8

    .line 4
    iput-object p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->this$0:Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    .line 6
    new-instance v0, Lcom/ardor3d/math/Vector3;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->normal:Lcom/ardor3d/math/Vector3;

    .line 7
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    new-instance v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/ardor3d/util/geom/NormalGenerator$Edge;-><init>(Lcom/ardor3d/util/geom/NormalGenerator;Lcom/ardor3d/util/geom/NormalGenerator$Triangle;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 8
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    new-instance v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    invoke-direct {v1, p1, p0, p3, p4}, Lcom/ardor3d/util/geom/NormalGenerator$Edge;-><init>(Lcom/ardor3d/util/geom/NormalGenerator;Lcom/ardor3d/util/geom/NormalGenerator$Triangle;II)V

    const/4 p3, 0x1

    aput-object v1, v0, p3

    .line 9
    iget-object p3, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    new-instance v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    invoke-direct {v0, p1, p0, p4, p2}, Lcom/ardor3d/util/geom/NormalGenerator$Edge;-><init>(Lcom/ardor3d/util/geom/NormalGenerator;Lcom/ardor3d/util/geom/NormalGenerator$Triangle;II)V

    const/4 p1, 0x2

    aput-object v0, p3, p1

    return-void
.end method


# virtual methods
.method public computeNormal([Lcom/ardor3d/math/Vector3;)V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget v1, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v2, v2, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    const/4 v3, 0x2

    aget-object v0, v0, v3

    iget v0, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    aget-object v0, p1, v0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->this$0:Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-static {v4}, Lcom/ardor3d/util/geom/NormalGenerator;->access$000(Lcom/ardor3d/util/geom/NormalGenerator;)Lcom/ardor3d/math/Vector3;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    aget-object v0, p1, v1

    aget-object p1, p1, v2

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->this$0:Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-static {v1}, Lcom/ardor3d/util/geom/NormalGenerator;->access$100(Lcom/ardor3d/util/geom/NormalGenerator;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->normal:Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->this$0:Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-static {v0}, Lcom/ardor3d/util/geom/NormalGenerator;->access$000(Lcom/ardor3d/util/geom/NormalGenerator;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->this$0:Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-static {v1}, Lcom/ardor3d/util/geom/NormalGenerator;->access$100(Lcom/ardor3d/util/geom/NormalGenerator;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->crossLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public indexOf(Lcom/ardor3d/util/geom/NormalGenerator$Edge;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Triangle ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget v2, v2, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
