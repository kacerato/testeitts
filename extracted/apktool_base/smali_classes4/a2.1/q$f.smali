.class public La2/q$f;
.super La2/q$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La2/q$g;-><init>()V

    return-void
.end method

.method public static synthetic b(La2/q$f;)F
    .locals 0

    iget p0, p0, La2/q$f;->b:F

    return p0
.end method

.method public static synthetic c(La2/q$f;F)F
    .locals 0

    iput p1, p0, La2/q$f;->b:F

    return p1
.end method

.method public static synthetic d(La2/q$f;)F
    .locals 0

    iget p0, p0, La2/q$f;->c:F

    return p0
.end method

.method public static synthetic e(La2/q$f;F)F
    .locals 0

    iput p1, p0, La2/q$f;->c:F

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, La2/q$g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, p0, La2/q$f;->b:F

    iget v1, p0, La2/q$f;->c:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
