.class public Lm5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lm5/b;->b:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lm5/b;->c:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lm5/b;->a:F

    return v0
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lm5/b;->a:F

    return-void
.end method
