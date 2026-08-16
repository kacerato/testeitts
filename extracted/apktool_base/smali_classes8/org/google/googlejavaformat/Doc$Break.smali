.class public final Lorg/google/googlejavaformat/Doc$Break;
.super Lorg/google/googlejavaformat/Doc;
.source "SourceFile"

# interfaces
.implements Lorg/google/googlejavaformat/Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Break"
.end annotation


# instance fields
.field broken:Z

.field private final fillMode:Lorg/google/googlejavaformat/Doc$FillMode;

.field private final flat:Ljava/lang/String;

.field newIndent:I

.field private final optTag:Lw2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;"
        }
    .end annotation
.end field

.field private final plusIndent:Lorg/google/googlejavaformat/Indent;


# direct methods
.method private constructor <init>(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fillMode",
            "flat",
            "plusIndent",
            "optTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/Doc$FillMode;",
            "Ljava/lang/String;",
            "Lorg/google/googlejavaformat/Indent;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/Doc;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/Doc$Break;->fillMode:Lorg/google/googlejavaformat/Doc$FillMode;

    iput-object p2, p0, Lorg/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    iput-object p3, p0, Lorg/google/googlejavaformat/Doc$Break;->plusIndent:Lorg/google/googlejavaformat/Indent;

    iput-object p4, p0, Lorg/google/googlejavaformat/Doc$Break;->optTag:Lw2/C;

    return-void
.end method

.method public static synthetic access$100(Lorg/google/googlejavaformat/Doc$Break;)Lorg/google/googlejavaformat/Doc$FillMode;
    .locals 0

    iget-object p0, p0, Lorg/google/googlejavaformat/Doc$Break;->fillMode:Lorg/google/googlejavaformat/Doc$FillMode;

    return-object p0
.end method

.method public static make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Doc$Break;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fillMode",
            "flat",
            "plusIndent"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/google/googlejavaformat/Doc$Break;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/google/googlejavaformat/Doc$Break;-><init>(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    return-object v0
.end method

.method public static make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)Lorg/google/googlejavaformat/Doc$Break;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fillMode",
            "flat",
            "plusIndent",
            "optTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/Doc$FillMode;",
            "Ljava/lang/String;",
            "Lorg/google/googlejavaformat/Indent;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Lorg/google/googlejavaformat/Doc$Break;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/google/googlejavaformat/Doc$Break;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/google/googlejavaformat/Doc$Break;-><init>(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    return-object v0
.end method

.method public static makeForced()Lorg/google/googlejavaformat/Doc$Break;
    .locals 3

    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lorg/google/googlejavaformat/Indent$Const;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v0, v1, v2}, Lorg/google/googlejavaformat/Doc$Break;->make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Doc$Break;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lorg/google/googlejavaformat/DocBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/google/googlejavaformat/DocBuilder;->breakDoc(Lorg/google/googlejavaformat/Doc$Break;)V

    return-void
.end method

.method public computeBreaks(Lorg/google/googlejavaformat/CommentsHelper;ILorg/google/googlejavaformat/Doc$State;)Lorg/google/googlejavaformat/Doc$State;
    .locals 0
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

    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Did you mean computeBreaks(State, int, boolean)?"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public computeBreaks(Lorg/google/googlejavaformat/Doc$State;IZ)Lorg/google/googlejavaformat/Doc$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "lastIndent",
            "broken"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Break;->optTag:Lw2/C;

    invoke-virtual {v0}, Lw2/C;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Break;->optTag:Lw2/C;

    invoke-virtual {v0}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Output$BreakTag;

    invoke-virtual {v0, p3}, Lorg/google/googlejavaformat/Output$BreakTag;->recordBroken(Z)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 3
    iput-boolean p3, p0, Lorg/google/googlejavaformat/Doc$Break;->broken:Z

    .line 4
    iget-object p3, p0, Lorg/google/googlejavaformat/Doc$Break;->plusIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {p3}, Lorg/google/googlejavaformat/Indent;->eval()I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/google/googlejavaformat/Doc$Break;->newIndent:I

    .line 5
    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/Doc$State;->withColumn(I)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iput-boolean v0, p0, Lorg/google/googlejavaformat/Doc$Break;->broken:Z

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lorg/google/googlejavaformat/Doc$Break;->newIndent:I

    .line 8
    iget p2, p1, Lorg/google/googlejavaformat/Doc$State;->column:I

    iget-object p3, p0, Lorg/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/Doc$State;->withColumn(I)Lorg/google/googlejavaformat/Doc$State;

    move-result-object p1

    return-object p1
.end method

.method public computeFlat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    return-object v0
.end method

.method public computeRange()Lcom/google/common/collect/j2;
    .locals 1
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

    return-object v0
.end method

.method public computeWidth()F
    .locals 1

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc$Break;->isForced()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0
.end method

.method public getPlusIndent()I
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Break;->plusIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Indent;->eval()I

    move-result v0

    return v0
.end method

.method public isForced()Z
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Break;->fillMode:Lorg/google/googlejavaformat/Doc$FillMode;

    sget-object v1, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "fillMode"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Break;->fillMode:Lorg/google/googlejavaformat/Doc$FillMode;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "flat"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "plusIndent"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Break;->plusIndent:Lorg/google/googlejavaformat/Indent;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "optTag"

    iget-object v2, p0, Lorg/google/googlejavaformat/Doc$Break;->optTag:Lw2/C;

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

    iget-boolean v0, p0, Lorg/google/googlejavaformat/Doc$Break;->broken:Z

    if-eqz v0, :cond_0

    const-string v0, "\n"

    invoke-static {}, Lorg/google/googlejavaformat/Doc;->access$000()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/j2;)V

    iget v0, p0, Lorg/google/googlejavaformat/Doc$Break;->newIndent:I

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/Output;->indent(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/Doc$Break;->flat:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc;->range()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/google/googlejavaformat/Output;->append(Ljava/lang/String;Lcom/google/common/collect/j2;)V

    :goto_0
    return-void
.end method
