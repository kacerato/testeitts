.class public LH5/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/c;->C1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LH5/c;


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

    iput-object p1, p0, LH5/c$d;->a:LH5/c;

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

    iget-object p1, p0, LH5/c$d;->a:LH5/c;

    sget-object p2, LH5/c$k;->X:LH5/c$k;

    invoke-static {p1, p2}, LH5/c;->p1(LH5/c;LH5/c$k;)LH5/c$k;

    iget-object p1, p0, LH5/c$d;->a:LH5/c;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, LH5/c;->f0:F

    :cond_0
    return-void
.end method
