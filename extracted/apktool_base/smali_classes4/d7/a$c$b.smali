.class public Ld7/a$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$c;->a(Landroid/view/View;Landroid/content/Context;LM7/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$c;


# direct methods
.method public constructor <init>(Ld7/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$c$b;->a:Ld7/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Ln/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v2, 0x43e10000    # 450.0f

    const-string v3, "https://itsmagic.com.br/index.html"

    invoke-static {v3, p1, v0, v1, v2}, LZ6/k;->w1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    new-instance p1, Ld7/a$c$b$a;

    invoke-direct {p1, p0}, Ld7/a$c$b$a;-><init>(Ld7/a$c$b;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ld7/a$c$b$b;

    invoke-direct {p1, p0}, Ld7/a$c$b$b;-><init>(Ld7/a$c$b;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
