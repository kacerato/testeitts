.class public LH5/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/e;->E1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LH5/e;


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

    iput-object p1, p0, LH5/e$d;->a:LH5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, LH5/e$d;->a:LH5/e;

    sget-object p2, LH5/e$k;->X:LH5/e$k;

    invoke-static {p1, p2}, LH5/e;->p1(LH5/e;LH5/e$k;)LH5/e$k;

    iget-object p1, p0, LH5/e$d;->a:LH5/e;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, LH5/e;->h0:F

    const p2, -0x3191d80b

    iput p2, p1, LH5/e;->f0:F

    :cond_0
    return-void
.end method
