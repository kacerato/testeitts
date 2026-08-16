.class public Lue/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lue/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lue/h$a;->c:I

    return-void
.end method

.method public static synthetic a(Lue/h$a;)I
    .locals 0

    iget p0, p0, Lue/h$a;->a:I

    return p0
.end method

.method public static synthetic b(Lue/h$a;)I
    .locals 0

    iget p0, p0, Lue/h$a;->b:I

    return p0
.end method

.method public static synthetic c(Lue/h$a;)I
    .locals 0

    iget p0, p0, Lue/h$a;->c:I

    return p0
.end method

.method public static synthetic d(Lue/h$a;)I
    .locals 0

    iget p0, p0, Lue/h$a;->d:I

    return p0
.end method

.method public static synthetic e(Lue/h$a;)I
    .locals 0

    iget p0, p0, Lue/h$a;->e:I

    return p0
.end method

.method public static synthetic f(Lue/h$a;)I
    .locals 0

    iget p0, p0, Lue/h$a;->f:I

    return p0
.end method


# virtual methods
.method public g()Lue/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lue/h;

    invoke-direct {v0, p0}, Lue/h;-><init>(Lue/h$a;)V

    return-object v0
.end method

.method public h(I)Lue/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lue/h$a;->b:I

    return-object p0
.end method

.method public i(I)Lue/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lue/h$a;->c:I

    return-object p0
.end method

.method public j(I)Lue/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lue/h$a;->a:I

    return-object p0
.end method

.method public k(I)Lue/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lue/h$a;->e:I

    return-object p0
.end method

.method public l(I)Lue/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lue/h$a;->f:I

    return-object p0
.end method

.method public m(I)Lue/h$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lue/h$a;->d:I

    return-object p0
.end method
