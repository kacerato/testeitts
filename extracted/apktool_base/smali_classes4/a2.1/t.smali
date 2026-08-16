.class public La2/t;
.super La2/g;
.source "SourceFile"


# instance fields
.field public final b:F

.field public final c:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    invoke-direct {p0}, La2/g;-><init>()V

    iput p1, p0, La2/t;->b:F

    iput-boolean p2, p0, La2/t;->c:Z

    return-void
.end method


# virtual methods
.method public b(FFFLa2/q;)V
    .locals 2
    .param p4    # La2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, La2/t;->b:F

    mul-float/2addr v0, p3

    sub-float v0, p2, v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, La2/q;->n(FF)V

    iget-boolean v0, p0, La2/t;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, La2/t;->b:F

    :goto_0
    mul-float/2addr v0, p3

    goto :goto_1

    :cond_0
    iget v0, p0, La2/t;->b:F

    neg-float v0, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p4, p2, v0}, La2/q;->n(FF)V

    iget v0, p0, La2/t;->b:F

    mul-float/2addr v0, p3

    add-float/2addr p2, v0

    invoke-virtual {p4, p2, v1}, La2/q;->n(FF)V

    invoke-virtual {p4, p1, v1}, La2/q;->n(FF)V

    return-void
.end method
