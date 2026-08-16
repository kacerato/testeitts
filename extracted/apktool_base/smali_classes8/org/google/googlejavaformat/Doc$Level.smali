.class final Lorg/google/googlejavaformat/Doc$Level;
.super Lorg/google/googlejavaformat/Doc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Level"
.end annotation


# instance fields
.field breaks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc$Break;",
            ">;"
        }
    .end annotation
.end field

.field private final docs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc;",
            ">;"
        }
    .end annotation
.end field

.field oneLine:Z

.field private final plusIndent:Lorg/google/googlejavaformat/Indent;

.field splits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/google/googlejavaformat/Indent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plusIndent"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/Doc;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/google/googlejavaformat/Doc$Level;->oneLine:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    iput-object p1, p0, Lorg/google/googlejavaformat/Doc$Level;->plusIndent:Lorg/google/googlejavaformat/Indent;

    return-void
.end method

.method private static computeBreakAndSplit(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;Lw2/C;Ljava/util/List;)Lorg/google/googlejavaformat/Doc$State;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentsHelper",
            "maxWidth",
            "state",
            "optBreakDoc",
            "split"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/CommentsHelper;",
            "I",
            "Lorg/google/googlejavaformat/Doc$State;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Doc$Break;",
            ">;",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc;",
            ">;)",
            "Lorg/google/googlejavaformat/Doc$State;"
        }
    .end annotation

    invoke-virtual {p3}, Lw2/C;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Doc$Break;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Doc;->getWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p4}, Lorg/google/googlejavaformat/Doc$Level;->getWidth(Ljava/util/List;)F

    move-result v1

    invoke-virtual {p3}, Lw2/C;->e()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Doc$Break;

    invoke-static {v2}, Lorg/google/googlejavaformat/Doc$Break;->access$100(Lorg/google/googlejavaformat/Doc$Break;)Lorg/google/googlejavaformat/Doc$FillMode;

    move-result-object v2

    sget-object v5, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    if-eq v2, v5, :cond_3

    :cond_1
    iget-boolean v2, p2, Lorg/google/googlejavaformat/Doc$State;->mustBreak:Z

    if-nez v2, :cond_3

    iget v2, p2, Lorg/google/googlejavaformat/Doc$State;->column:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    add-float/2addr v2, v1

    int-to-float v0, p1

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v3

    :goto_2
    invoke-virtual {p3}, Lw2/C;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/google/googlejavaformat/Doc$Break;

    iget v2, p2, Lorg/google/googlejavaformat/Doc$State;->lastIndent:I

    invoke-virtual {p3, p2, v2, v0}, Lorg/google/googlejavaformat/Doc$Break;->computeBreaks(Lorg/google/googlejavaformat/Doc$State;IZ)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p2

    :cond_4
    iget p3, p2, Lorg/google/googlejavaformat/Doc$State;->column:I

    int-to-float p3, p3

    add-float/2addr p3, v1

    int-to-float v0, p1

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_5

    move p3, v3

    goto :goto_3

    :cond_5
    move p3, v4

    :goto_3
    invoke-virtual {p2, v4}, Lorg/google/googlejavaformat/Doc$State;->withMustBreak(Z)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p2

    invoke-static {p0, p1, p4, p2}, Lorg/google/googlejavaformat/Doc$Level;->computeSplit(Lorg/google/googlejavaformat/CommentsHelper;ILjava/util/List;Lorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p0

    if-nez p3, :cond_6

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/Doc$State;->withMustBreak(Z)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private computeBroken(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentsHelper",
            "maxWidth",
            "state"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    iget-object v1, p0, Lorg/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lorg/google/googlejavaformat/Doc$Level;->splitByBreaks(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1, p2, p3, v0, v1}, Lorg/google/googlejavaformat/Doc$Level;->computeBreakAndSplit(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;Lw2/C;Ljava/util/List;)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Doc$Break;

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1, p2, p3, v0, v1}, Lorg/google/googlejavaformat/Doc$Level;->computeBreakAndSplit(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;Lw2/C;Ljava/util/List;)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p3

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method private static computeSplit(Lorg/google/googlejavaformat/CommentsHelper;ILjava/util/List;Lorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentsHelper",
            "maxWidth",
            "docs",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/CommentsHelper;",
            "I",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc;",
            ">;",
            "Lorg/google/googlejavaformat/Doc$State;",
            ")",
            "Lorg/google/googlejavaformat/Doc$State;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Doc;

    invoke-virtual {v0, p0, p1, p3}, Lorg/google/googlejavaformat/Doc;->computeBreaks(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p3

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static getWidth(Ljava/util/List;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "docs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc;",
            ">;)F"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Doc;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/Doc;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static make(Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Doc$Level;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plusIndent"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Doc$Level;

    invoke-direct {v0, p0}, Lorg/google/googlejavaformat/Doc$Level;-><init>(Lorg/google/googlejavaformat/Indent;)V

    return-object v0
.end method

.method private static splitByBreaks(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "docs",
            "splits",
            "breaks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc;",
            ">;>;",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Doc$Break;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Doc;

    instance-of v1, v0, Lorg/google/googlejavaformat/Doc$Break;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/google/googlejavaformat/Doc$Break;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/D1;->w(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static union(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->G(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-static {}, Lorg/google/googlejavaformat/Doc;->access$200()Lcom/google/common/collect/W;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/j2;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private writeFilled(Lorg/google/googlejavaformat/Output;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Doc;

    invoke-virtual {v2, p1}, Lorg/google/googlejavaformat/Doc;->write(Lorg/google/googlejavaformat/Output;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->breaks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Doc$Break;

    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/Doc$Break;->write(Lorg/google/googlejavaformat/Output;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->splits:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Doc;

    invoke-virtual {v2, p1}, Lorg/google/googlejavaformat/Doc;->write(Lorg/google/googlejavaformat/Output;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/google/googlejavaformat/Doc;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doc"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeBreaks(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commentsHelper",
            "maxWidth",
            "state"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->getWidth()F

    move-result v0

    iget v1, p3, Lorg/google/googlejavaformat/Doc$State;->column:I

    int-to-float v2, v1

    add-float/2addr v2, v0

    int-to-float v3, p2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/google/googlejavaformat/Doc$Level;->oneLine:Z

    float-to-int p1, v0

    add-int/2addr v1, p1

    invoke-virtual {p3, v1}, Lorg/google/googlejavaformat/Doc$State;->withColumn(I)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/google/googlejavaformat/Doc$State;

    iget v1, p3, Lorg/google/googlejavaformat/Doc$State;->indent:I

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Level;->plusIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/Indent;->eval()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p3, Lorg/google/googlejavaformat/Doc$State;->column:I

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/Doc$State;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lorg/google/googlejavaformat/Doc$Level;->computeBroken(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p1

    iget p1, p1, Lorg/google/googlejavaformat/Doc$State;->column:I

    invoke-virtual {p3, p1}, Lorg/google/googlejavaformat/Doc$State;->withColumn(I)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p1

    return-object p1
.end method

.method public computeFlat()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Doc;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/Doc;->getFlat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public computeRange()Lcom/google/common/collect/j2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/google/googlejavaformat/Doc;->access$000()Lcom/google/common/collect/j2;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Doc;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/Doc;->range()Lcom/google/common/collect/j2;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/google/googlejavaformat/Doc$Level;->union(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public computeWidth()F
    .locals 3

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Doc;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/Doc;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "plusIndent"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Level;->plusIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "docs"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Level;->docs:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/google/googlejavaformat/Output;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/google/googlejavaformat/Doc$Level;->oneLine:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->getFlat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->range()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/j2;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/Doc$Level;->writeFilled(Lorg/google/googlejavaformat/Output;)V

    :goto_0
    return-void
.end method
