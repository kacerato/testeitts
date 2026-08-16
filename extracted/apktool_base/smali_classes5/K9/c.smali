.class public LK9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:Ljava/lang/String;

.field public d:F

.field public e:I


# direct methods
.method public constructor <init>(FF)V
    .locals 0
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LK9/c;->a:F

    .line 3
    iput p2, p0, LK9/c;->b:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "data",
            "color"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p3, p0, LK9/c;->e:I

    .line 6
    iput p2, p0, LK9/c;->d:F

    .line 7
    iput-object p1, p0, LK9/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LK9/c;->e:I

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, LK9/c;->d:F

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LK9/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, LK9/c;->a:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, LK9/c;->b:F

    return v0
.end method
