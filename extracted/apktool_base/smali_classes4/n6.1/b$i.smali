.class public final Ln6/b$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final a:[F

.field public b:I

.field public c:I

.field public d:F


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowSize"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [F

    iput-object p1, p0, Ln6/b$i;->a:[F

    return-void
.end method

.method public synthetic constructor <init>(ILn6/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln6/b$i;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Ln6/b$i;F)F
    .locals 0

    invoke-virtual {p0, p1}, Ln6/b$i;->b(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Ln6/b$i;->c:I

    iget-object v1, p0, Ln6/b$i;->a:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln6/b$i;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Ln6/b$i;->d:F

    iget v2, p0, Ln6/b$i;->b:I

    aget v2, v1, v2

    sub-float/2addr v0, v2

    iput v0, p0, Ln6/b$i;->d:F

    :goto_0
    iget v0, p0, Ln6/b$i;->b:I

    aput p1, v1, v0

    iget v2, p0, Ln6/b$i;->d:F

    add-float/2addr v2, p1

    iput v2, p0, Ln6/b$i;->d:F

    add-int/lit8 v0, v0, 0x1

    array-length p1, v1

    rem-int/2addr v0, p1

    iput v0, p0, Ln6/b$i;->b:I

    iget p1, p0, Ln6/b$i;->c:I

    int-to-float p1, p1

    div-float/2addr v2, p1

    return v2
.end method
