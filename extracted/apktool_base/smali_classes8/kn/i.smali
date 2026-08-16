.class public Lkn/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:F

.field public h:I

.field public i:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxAgentRadius"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lkn/i;->b:I

    const/16 v1, 0x64

    iput v1, p0, Lkn/i;->c:I

    const/16 v1, 0x14

    iput v1, p0, Lkn/i;->d:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lkn/i;->e:F

    const/16 v1, 0xa

    iput v1, p0, Lkn/i;->f:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lkn/i;->g:F

    iput v0, p0, Lkn/i;->h:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lkn/i;->i:F

    iput p1, p0, Lkn/i;->a:F

    return-void
.end method
