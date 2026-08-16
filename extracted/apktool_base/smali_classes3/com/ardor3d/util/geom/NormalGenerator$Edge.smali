.class Lcom/ardor3d/util/geom/NormalGenerator$Edge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/geom/NormalGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Edge"
.end annotation


# instance fields
.field public connected:Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

.field public i0:I

.field public i1:I

.field public newI0:I

.field public newI1:I

.field public parent:Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

.field final synthetic this$0:Lcom/ardor3d/util/geom/NormalGenerator;


# direct methods
.method public constructor <init>(Lcom/ardor3d/util/geom/NormalGenerator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->this$0:Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    .line 3
    iput p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/util/geom/NormalGenerator;Lcom/ardor3d/util/geom/NormalGenerator$Triangle;II)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->this$0:Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    .line 6
    iput p1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    .line 7
    iput-object p2, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->parent:Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    .line 8
    iput p3, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    .line 9
    iput p4, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    return-void
.end method


# virtual methods
.method public isConnectedTo(Lcom/ardor3d/util/geom/NormalGenerator$Edge;)Z
    .locals 2

    iget v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    iget v1, p1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    iget p1, p1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    const-string v1, "Edge ("

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
