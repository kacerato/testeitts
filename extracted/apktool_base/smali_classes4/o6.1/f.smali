.class public Lo6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public c:D

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo6/f;->e:Z

    invoke-virtual {p0, p1, p2}, Lo6/f;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    iget v0, p0, Lo6/f;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lo6/f;->d:I

    return-void
.end method

.method public b(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elapsedNanos"
        }
    .end annotation

    iget-wide v0, p0, Lo6/f;->c:D

    long-to-double p1, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lo6/f;->c:D

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lo6/f;->d:I

    return v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lo6/f;->c:D

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo6/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo6/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lo6/f;->e:Z

    return v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    iput-object p1, p0, Lo6/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lo6/f;->b:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lo6/f;->c:D

    const/4 p1, 0x0

    iput p1, p0, Lo6/f;->d:I

    iput-boolean p1, p0, Lo6/f;->e:Z

    return-void
.end method

.method public j(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "UIOpen"
        }
    .end annotation

    iput-boolean p1, p0, Lo6/f;->e:Z

    return-void
.end method
