.class public abstract Lah/b;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lah/b$a;,
        Lah/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lah/b<",
        "+TI;>;>",
        "Ljava/util/Observable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indicator.kt\norg/anastr/speedviewlib/components/indicators/Indicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indicator.kt\norg/anastr/speedviewlib/components/indicators/Indicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lah/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:F

.field public c:LYg/v;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:F

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lah/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lah/b$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lah/b;->f:Lah/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lah/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lah/b;->b:F

    const p1, -0xde690d

    iput p1, p0, Lah/b;->e:I

    iget-object v0, p0, Lah/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    iget v0, p0, Lah/b;->b:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public abstract b(Landroid/graphics/Canvas;)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public c()F
    .locals 1

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v0

    return v0
.end method

.method public final d()F
    .locals 2

    iget-object v0, p0, Lah/b;->c:LYg/v;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()F
    .locals 2

    iget-object v0, p0, Lah/b;->c:LYg/v;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lah/b;->e:I

    return v0
.end method

.method public final g()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lah/b;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final h()F
    .locals 2

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v0

    invoke-virtual {p0}, Lah/b;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lah/b;->c()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lah/b;->e()F

    move-result v0

    :goto_0
    return v0
.end method

.method public final i()LYg/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lah/b;->c:LYg/v;

    return-object v0
.end method

.method public j()F
    .locals 1

    iget-object v0, p0, Lah/b;->c:LYg/v;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, LYg/j;->getPadding()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()F
    .locals 3

    iget-object v0, p0, Lah/b;->c:LYg/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, LYg/j;->getPadding()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()F
    .locals 1

    iget v0, p0, Lah/b;->d:F

    return v0
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lah/b;->e:I

    iget-object p1, p0, Lah/b;->c:LYg/v;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lah/b;->s()V

    :cond_0
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lah/b;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public final o(LYg/v;)V
    .locals 0
    .param p1    # LYg/v;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lah/b;->c:LYg/v;

    return-void
.end method

.method public final p(LYg/v;)Lah/b;
    .locals 1
    .param p1    # LYg/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYg/v;",
            ")TI;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "speedometer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Observable;->deleteObservers()V

    invoke-virtual {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iput-object p1, p0, Lah/b;->c:LYg/v;

    invoke-virtual {p0}, Lah/b;->s()V

    const-string p1, "null cannot be cast to non-null type I of org.anastr.speedviewlib.components.indicators.Indicator"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(F)V
    .locals 0

    iput p1, p0, Lah/b;->d:F

    iget-object p1, p0, Lah/b;->c:LYg/v;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lah/b;->s()V

    :cond_0
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract r(Z)V
.end method

.method public abstract s()V
.end method

.method public final t(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lah/b;->r(Z)V

    iget-object p1, p0, Lah/b;->c:LYg/v;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lah/b;->s()V

    :cond_0
    return-void
.end method
