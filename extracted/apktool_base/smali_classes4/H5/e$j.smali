.class public LH5/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldn/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/e;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:LJAVARuntime/Runnable;

.field public b:I

.field public final synthetic c:LH5/e;


# direct methods
.method public constructor <init>(LH5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH5/e$j;->c:LH5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, LH5/e$j;->a:LJAVARuntime/Runnable;

    const/4 p1, 0x0

    iput p1, p0, LH5/e$j;->b:I

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

    iput-object p1, p0, LH5/e$j;->a:LJAVARuntime/Runnable;

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

    iput p2, p0, LH5/e$j;->b:I

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

    new-instance p1, LH5/e$j$a;

    invoke-direct {p1, p0}, LH5/e$j$a;-><init>(LH5/e$j;)V

    iput-object p1, p0, LH5/e$j;->a:LJAVARuntime/Runnable;

    invoke-static {p1}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method
