.class public LG7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG7/b;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG7/b;


# direct methods
.method public constructor <init>(LG7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG7/b$a;->a:LG7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "fromUser"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-object p2, p0, LG7/b$a;->a:LG7/b;

    invoke-static {p2}, LG7/b;->b(LG7/b;)LG7/b$b;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, LG7/b$a;->a:LG7/b;

    invoke-static {p2}, LG7/b;->b(LG7/b;)LG7/b$b;

    move-result-object p2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, LNc/b;->E(FFF)F

    move-result p1

    invoke-interface {p2, p1}, LG7/b$b;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method
