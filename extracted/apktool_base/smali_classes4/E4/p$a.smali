.class public LE4/p$a;
.super LJAVARuntime/AOnTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE4/p;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LE4/p;


# direct methods
.method public constructor <init>(LE4/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LE4/p$a;->b:LE4/p;

    invoke-direct {p0}, LJAVARuntime/AOnTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
