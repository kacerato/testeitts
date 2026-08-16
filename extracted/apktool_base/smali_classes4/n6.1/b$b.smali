.class public final Ln6/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[F

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [F

    iput-object p1, p0, Ln6/b$b;->a:[F

    return-void
.end method

.method public synthetic constructor <init>(ILn6/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln6/b$b;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Ln6/b$b;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ln6/b$b;->c(F)V

    return-void
.end method

.method public static synthetic b(Ln6/b$b;)[F
    .locals 0

    invoke-virtual {p0}, Ln6/b$b;->d()[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Ln6/b$b;->a:[F

    iget v1, p0, Ln6/b$b;->b:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Ln6/b$b;->b:I

    iget p1, p0, Ln6/b$b;->c:I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln6/b$b;->c:I

    :cond_0
    return-void
.end method

.method public final d()[F
    .locals 6

    iget-object v0, p0, Ln6/b$b;->a:[F

    array-length v1, v0

    new-array v1, v1, [F

    iget v2, p0, Ln6/b$b;->c:I

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    array-length v3, v0

    sub-int/2addr v3, v2

    array-length v0, v0

    const/4 v4, 0x0

    if-ge v2, v0, :cond_2

    :goto_0
    iget v0, p0, Ln6/b$b;->c:I

    if-ge v4, v0, :cond_1

    add-int v0, v3, v4

    iget-object v2, p0, Ln6/b$b;->a:[F

    aget v2, v2, v4

    aput v2, v1, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    iget v0, p0, Ln6/b$b;->b:I

    :goto_1
    iget-object v2, p0, Ln6/b$b;->a:[F

    array-length v3, v2

    if-ge v4, v3, :cond_3

    add-int v3, v0, v4

    array-length v5, v2

    rem-int/2addr v3, v5

    aget v2, v2, v3

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method
