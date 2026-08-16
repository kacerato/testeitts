.class public LW9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, LW9/b;->a:I

    iput v0, p0, LW9/b;->b:I

    const/high16 v0, -0x80000000

    iput v0, p0, LW9/b;->c:I

    iput v0, p0, LW9/b;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LW9/b;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LW9/b;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LW9/b;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LW9/b;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LW9/b;->b:I

    return v0
.end method

.method public e()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, LW9/b;->a:I

    iput v0, p0, LW9/b;->b:I

    const/high16 v0, -0x80000000

    iput v0, p0, LW9/b;->c:I

    iput v0, p0, LW9/b;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LW9/b;->e:Z

    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxX"
        }
    .end annotation

    iput p1, p0, LW9/b;->c:I

    return-void
.end method

.method public g(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxY"
        }
    .end annotation

    iput p1, p0, LW9/b;->d:I

    return-void
.end method

.method public h(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minX"
        }
    .end annotation

    iput p1, p0, LW9/b;->a:I

    return-void
.end method

.method public i(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minY"
        }
    .end annotation

    iput p1, p0, LW9/b;->b:I

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LW9/b;->a:I

    iput v0, p0, LW9/b;->b:I

    iput v0, p0, LW9/b;->c:I

    iput v0, p0, LW9/b;->d:I

    iput-boolean v0, p0, LW9/b;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectBounding{minX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LW9/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LW9/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LW9/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LW9/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foundAny="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LW9/b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
