.class public final Lcom/google/android/material/timepicker/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/timepicker/f;

.field public b:I

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/timepicker/f;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/b$e;->a:Lcom/google/android/material/timepicker/f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/timepicker/b$e;->c:I

    iput v0, p0, Lcom/google/android/material/timepicker/b$e;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/timepicker/b$e;)Lcom/google/android/material/timepicker/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/b$e;->a:Lcom/google/android/material/timepicker/f;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/material/timepicker/b$e;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/timepicker/b$e;->b:I

    return p0
.end method

.method public static synthetic c(Lcom/google/android/material/timepicker/b$e;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/timepicker/b$e;->c:I

    return p0
.end method

.method public static synthetic d(Lcom/google/android/material/timepicker/b$e;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/timepicker/b$e;->e:I

    return p0
.end method

.method public static synthetic e(Lcom/google/android/material/timepicker/b$e;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/b$e;->d:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public f()Lcom/google/android/material/timepicker/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/material/timepicker/b;->f(Lcom/google/android/material/timepicker/b$e;)Lcom/google/android/material/timepicker/b;

    move-result-object v0

    return-object v0
.end method

.method public g(I)Lcom/google/android/material/timepicker/b$e;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/timepicker/b$e;->a:Lcom/google/android/material/timepicker/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/f;->i(I)V

    return-object p0
.end method

.method public h(I)Lcom/google/android/material/timepicker/b$e;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/material/timepicker/b$e;->b:I

    return-object p0
.end method

.method public i(I)Lcom/google/android/material/timepicker/b$e;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3cL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/timepicker/b$e;->a:Lcom/google/android/material/timepicker/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/f;->l(I)V

    return-object p0
.end method

.method public j(I)Lcom/google/android/material/timepicker/b$e;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/material/timepicker/b$e;->e:I

    return-object p0
.end method

.method public k(I)Lcom/google/android/material/timepicker/b$e;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/timepicker/b$e;->a:Lcom/google/android/material/timepicker/f;

    iget v1, v0, Lcom/google/android/material/timepicker/f;->e:I

    iget v0, v0, Lcom/google/android/material/timepicker/f;->f:I

    new-instance v2, Lcom/google/android/material/timepicker/f;

    invoke-direct {v2, p1}, Lcom/google/android/material/timepicker/f;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/timepicker/b$e;->a:Lcom/google/android/material/timepicker/f;

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/f;->l(I)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/b$e;->a:Lcom/google/android/material/timepicker/f;

    invoke-virtual {p1, v1}, Lcom/google/android/material/timepicker/f;->i(I)V

    return-object p0
.end method

.method public l(I)Lcom/google/android/material/timepicker/b$e;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/material/timepicker/b$e;->c:I

    return-object p0
.end method

.method public m(Ljava/lang/CharSequence;)Lcom/google/android/material/timepicker/b$e;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/timepicker/b$e;->d:Ljava/lang/CharSequence;

    return-object p0
.end method
