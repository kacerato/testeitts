.class public Lkn/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3ecccccd    # 0.4f

    .line 2
    iput v0, p0, Lkn/n$a;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    iput v0, p0, Lkn/n$a;->b:F

    const/high16 v0, 0x3f400000    # 0.75f

    .line 4
    iput v0, p0, Lkn/n$a;->c:F

    .line 5
    iput v0, p0, Lkn/n$a;->d:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 6
    iput v0, p0, Lkn/n$a;->e:F

    .line 7
    iput v0, p0, Lkn/n$a;->f:F

    const/16 v0, 0x21

    .line 8
    iput v0, p0, Lkn/n$a;->g:I

    const/4 v0, 0x7

    .line 9
    iput v0, p0, Lkn/n$a;->h:I

    const/4 v0, 0x2

    .line 10
    iput v0, p0, Lkn/n$a;->i:I

    const/4 v0, 0x5

    .line 11
    iput v0, p0, Lkn/n$a;->j:I

    return-void
.end method

.method public constructor <init>(Lkn/n$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget v0, p1, Lkn/n$a;->a:F

    iput v0, p0, Lkn/n$a;->a:F

    .line 14
    iget v0, p1, Lkn/n$a;->b:F

    iput v0, p0, Lkn/n$a;->b:F

    .line 15
    iget v0, p1, Lkn/n$a;->c:F

    iput v0, p0, Lkn/n$a;->c:F

    .line 16
    iget v0, p1, Lkn/n$a;->d:F

    iput v0, p0, Lkn/n$a;->d:F

    .line 17
    iget v0, p1, Lkn/n$a;->e:F

    iput v0, p0, Lkn/n$a;->e:F

    .line 18
    iget v0, p1, Lkn/n$a;->f:F

    iput v0, p0, Lkn/n$a;->f:F

    .line 19
    iget v0, p1, Lkn/n$a;->g:I

    iput v0, p0, Lkn/n$a;->g:I

    .line 20
    iget v0, p1, Lkn/n$a;->h:I

    iput v0, p0, Lkn/n$a;->h:I

    .line 21
    iget v0, p1, Lkn/n$a;->i:I

    iput v0, p0, Lkn/n$a;->i:I

    .line 22
    iget p1, p1, Lkn/n$a;->j:I

    iput p1, p0, Lkn/n$a;->j:I

    return-void
.end method
