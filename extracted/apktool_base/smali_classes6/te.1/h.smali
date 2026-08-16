.class public Lte/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lte/h;->b:I

    return-void
.end method

.method public static a(I)Lte/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lte/h;

    invoke-direct {v0, p0}, Lte/h;-><init>(I)V

    return-object v0
.end method

.method public static b(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p0, :cond_1

    sub-int/2addr p0, p2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    invoke-static {p3, p1, p0}, Lte/h;->b(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p0, Lte/h;->b:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    return-void
.end method
