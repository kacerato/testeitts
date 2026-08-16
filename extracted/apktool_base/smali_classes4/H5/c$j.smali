.class public LH5/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldn/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/c;->H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:LJAVARuntime/Runnable;

.field public final synthetic c:LH5/c;


# direct methods
.method public constructor <init>(LH5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/c$j;->c:LH5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, LH5/c$j;->a:F

    const/4 p1, 0x0

    iput-object p1, p0, LH5/c$j;->b:LJAVARuntime/Runnable;

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

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    const/4 p1, 0x0

    iput-object p1, p0, LH5/c$j;->b:LJAVARuntime/Runnable;

    return-void
.end method

.method public b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
    .locals 0
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

    if-eqz p3, :cond_0

    int-to-float p1, p2

    iput p1, p0, LH5/c$j;->a:F

    :cond_0
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

    new-instance p1, LH5/c$j$a;

    invoke-direct {p1, p0}, LH5/c$j$a;-><init>(LH5/c$j;)V

    iput-object p1, p0, LH5/c$j;->b:LJAVARuntime/Runnable;

    invoke-static {p1}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method
