.class public LH3/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH3/g;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LH3/g$g;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:LH3/g;


# direct methods
.method public constructor <init>(LH3/g;LH3/g$g;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$group",
            "val$innerImagePadding",
            "val$borderPadding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LH3/g$e;->d:LH3/g;

    iput-object p2, p0, LH3/g$e;->a:LH3/g$g;

    iput p3, p0, LH3/g$e;->b:I

    iput p4, p0, LH3/g$e;->c:I

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

    iget-object p1, p0, LH3/g$e;->d:LH3/g;

    iget-object p2, p0, LH3/g$e;->a:LH3/g$g;

    iget p3, p0, LH3/g$e;->b:I

    iget p4, p0, LH3/g$e;->c:I

    invoke-static {p1, p2, p3, p4}, LH3/g;->u1(LH3/g;LH3/g$g;II)V

    :cond_0
    return-void
.end method
