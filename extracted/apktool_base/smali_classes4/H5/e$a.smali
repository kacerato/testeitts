.class public LH5/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldn/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/e;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:LH5/e;


# direct methods
.method public constructor <init>(LH5/e;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$stepTV"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LH5/e$a;->b:LH5/e;

    iput-object p2, p0, LH5/e$a;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
    .locals 0
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i"
        }
    .end annotation

    return-void
.end method

.method public b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
    .locals 4
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i",
            "fromUser"
        }
    .end annotation

    if-eqz p3, :cond_9

    int-to-float p1, p2

    const/high16 p2, 0x42c60000    # 99.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p1, p2}, LNc/b;->c1(FF)F

    move-result p1

    iget-object p2, p0, LH5/e$a;->b:LH5/e;

    const/high16 p3, 0x41200000    # 10.0f

    mul-float/2addr p1, p3

    invoke-static {p2, p1}, LH5/e;->z1(LH5/e;F)F

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    const p2, 0x3c23d70a    # 0.01f

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p3

    invoke-static {p2, p3}, LNc/b;->M(FF)F

    move-result p2

    invoke-static {p1, p2}, LH5/e;->z1(LH5/e;F)F

    const/16 p1, 0xa

    :goto_0
    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    iget-object p3, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p3}, LH5/e;->y1(LH5/e;)F

    move-result p3

    int-to-float v0, p1

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p3

    invoke-static {p3, v0}, LNc/b;->J(FF)F

    move-result p3

    invoke-static {p1, p3}, LH5/e;->z1(LH5/e;F)F

    goto/16 :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p1

    const/high16 p3, 0x3fc00000    # 1.5f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result v0

    invoke-static {v0, p3}, LNc/b;->J(FF)F

    move-result p3

    invoke-static {p1, p3}, LH5/e;->z1(LH5/e;F)F

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_3

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result v0

    invoke-static {v0, p3}, LNc/b;->J(FF)F

    move-result p3

    invoke-static {p1, p3}, LH5/e;->z1(LH5/e;F)F

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_4

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p3, v0}, LNc/b;->J(FF)F

    move-result p3

    invoke-static {p1, p3}, LH5/e;->z1(LH5/e;F)F

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpl-double p1, v0, v2

    if-lez p1, :cond_5

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p3

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {p3, v0}, LNc/b;->J(FF)F

    move-result p3

    invoke-static {p1, p3}, LH5/e;->z1(LH5/e;F)F

    goto :goto_1

    :cond_5
    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpl-double p1, v0, v2

    if-lez p1, :cond_6

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p3

    const v0, 0x3e99999a    # 0.3f

    invoke-static {p3, v0}, LNc/b;->J(FF)F

    move-result p3

    invoke-static {p1, p3}, LH5/e;->z1(LH5/e;F)F

    goto :goto_1

    :cond_6
    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double p1, v0, v2

    if-lez p1, :cond_7

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p3

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p3, v0}, LNc/b;->J(FF)F

    move-result p3

    invoke-static {p1, p3}, LH5/e;->z1(LH5/e;F)F

    goto :goto_1

    :cond_7
    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_8

    iget-object p1, p0, LH5/e$a;->b:LH5/e;

    invoke-static {p1}, LH5/e;->y1(LH5/e;)F

    move-result p3

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p3, v0}, LNc/b;->J(FF)F

    move-result p3

    invoke-static {p1, p3}, LH5/e;->z1(LH5/e;F)F

    :cond_8
    :goto_1
    iget-object p1, p0, LH5/e$a;->a:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LH5/e$a;->b:LH5/e;

    invoke-static {v0}, LH5/e;->y1(LH5/e;)F

    move-result v0

    invoke-static {v0, p2}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public c(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
    .locals 0
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i"
        }
    .end annotation

    return-void
.end method
