.class public LH5/e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/e;->I1()V
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

    iput-object p1, p0, LH5/e$h;->a:LH5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    iget-object p1, p0, LH5/e$h;->a:LH5/e;

    invoke-static {p1}, LH5/e;->w1(LH5/e;)F

    move-result p1

    iget-object p2, p0, LH5/e$h;->a:LH5/e;

    invoke-static {p2}, LH5/e;->y1(LH5/e;)F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, LH5/e$h;->a:LH5/e;

    invoke-static {p2, p1}, LH5/e;->x1(LH5/e;F)V

    return-void
.end method
