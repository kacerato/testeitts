.class public final Lorg/google/googlejavaformat/Doc$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field final column:I

.field final indent:I

.field final lastIndent:I

.field final mustBreak:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indent0",
            "column0"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p1, p2, v0}, Lorg/google/googlejavaformat/Doc$State;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lastIndent",
            "indent",
            "column",
            "mustBreak"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/google/googlejavaformat/Doc$State;->lastIndent:I

    .line 3
    iput p2, p0, Lorg/google/googlejavaformat/Doc$State;->indent:I

    .line 4
    iput p3, p0, Lorg/google/googlejavaformat/Doc$State;->column:I

    .line 5
    iput-boolean p4, p0, Lorg/google/googlejavaformat/Doc$State;->mustBreak:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "lastIndent"

    iget v2, p0, Lorg/google/googlejavaformat/Doc$State;->lastIndent:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "indent"

    iget v2, p0, Lorg/google/googlejavaformat/Doc$State;->indent:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "column"

    iget v2, p0, Lorg/google/googlejavaformat/Doc$State;->column:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "mustBreak"

    iget-boolean v2, p0, Lorg/google/googlejavaformat/Doc$State;->mustBreak:Z

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->g(Ljava/lang/String;Z)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withColumn(I)Lorg/google/googlejavaformat/Doc$State;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Doc$State;

    iget v1, p0, Lorg/google/googlejavaformat/Doc$State;->lastIndent:I

    iget v2, p0, Lorg/google/googlejavaformat/Doc$State;->indent:I

    iget-boolean v3, p0, Lorg/google/googlejavaformat/Doc$State;->mustBreak:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/google/googlejavaformat/Doc$State;-><init>(IIIZ)V

    return-object v0
.end method

.method public withMustBreak(Z)Lorg/google/googlejavaformat/Doc$State;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mustBreak"
        }
    .end annotation

    new-instance v0, Lorg/google/googlejavaformat/Doc$State;

    iget v1, p0, Lorg/google/googlejavaformat/Doc$State;->lastIndent:I

    iget v2, p0, Lorg/google/googlejavaformat/Doc$State;->indent:I

    iget v3, p0, Lorg/google/googlejavaformat/Doc$State;->column:I

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/google/googlejavaformat/Doc$State;-><init>(IIIZ)V

    return-object v0
.end method
