.class public Lue/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lue/h$a;
    }
.end annotation


# static fields
.field public static final g:I = 0x4b

.field public static final h:I = 0x16


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lue/h$a;)V
    .locals 1
    .param p1    # Lue/h$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lue/h$a;->a(Lue/h$a;)I

    move-result v0

    iput v0, p0, Lue/h;->a:I

    invoke-static {p1}, Lue/h$a;->b(Lue/h$a;)I

    move-result v0

    iput v0, p0, Lue/h;->b:I

    invoke-static {p1}, Lue/h$a;->c(Lue/h$a;)I

    move-result v0

    iput v0, p0, Lue/h;->c:I

    invoke-static {p1}, Lue/h$a;->d(Lue/h$a;)I

    move-result v0

    iput v0, p0, Lue/h;->d:I

    invoke-static {p1}, Lue/h$a;->e(Lue/h$a;)I

    move-result v0

    iput v0, p0, Lue/h;->e:I

    invoke-static {p1}, Lue/h$a;->f(Lue/h$a;)I

    move-result p1

    iput p1, p0, Lue/h;->f:I

    return-void
.end method

.method public static f(Landroid/content/Context;)Lue/h$a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LAe/b;->b(Landroid/content/Context;)LAe/b;

    move-result-object p0

    invoke-static {}, Lue/h;->h()Lue/h$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, LAe/b;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lue/h$a;->j(I)Lue/h$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LAe/b;->c(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lue/h$a;->i(I)Lue/h$a;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Lue/h;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lue/h;->f(Landroid/content/Context;)Lue/h$a;

    move-result-object p0

    invoke-virtual {p0}, Lue/h$a;->g()Lue/h;

    move-result-object p0

    return-object p0
.end method

.method public static h()Lue/h$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lue/h$a;

    invoke-direct {v0}, Lue/h$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lue/h;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x4b

    invoke-static {v0, v1}, LAe/a;->a(II)I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public b(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lue/h;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public c(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lue/h;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public d(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lue/h;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, LAe/a;->a(II)I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public e()Lue/h$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lue/h$a;

    invoke-direct {v0}, Lue/h$a;-><init>()V

    iget v1, p0, Lue/h;->a:I

    invoke-virtual {v0, v1}, Lue/h$a;->j(I)Lue/h$a;

    move-result-object v0

    iget v1, p0, Lue/h;->b:I

    invoke-virtual {v0, v1}, Lue/h$a;->h(I)Lue/h$a;

    move-result-object v0

    iget v1, p0, Lue/h;->c:I

    invoke-virtual {v0, v1}, Lue/h$a;->i(I)Lue/h$a;

    move-result-object v0

    iget v1, p0, Lue/h;->d:I

    invoke-virtual {v0, v1}, Lue/h$a;->m(I)Lue/h$a;

    move-result-object v0

    iget v1, p0, Lue/h;->e:I

    invoke-virtual {v0, v1}, Lue/h$a;->k(I)Lue/h$a;

    move-result-object v0

    iget v1, p0, Lue/h;->f:I

    invoke-virtual {v0, v1}, Lue/h$a;->l(I)Lue/h$a;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/graphics/Paint;)I
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lue/h;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int v0, p1

    :cond_0
    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lue/h;->a:I

    return v0
.end method
