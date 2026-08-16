.class public Lu5/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu5/d$a;


# direct methods
.method public constructor <init>(Lu5/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$a$a;->a:Lu5/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, Lu5/d$a$a;->a:Lu5/d$a;

    iget-object v0, v0, Lu5/d$a;->b:Lu5/d;

    invoke-static {v0, p1}, Lu5/d;->K1(Lu5/d;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;Lw3/e$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "files",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Lw3/e$c;",
            ")V"
        }
    .end annotation

    new-instance v0, Lu5/d$a$a$a;

    invoke-direct {v0, p0, p1, p2}, Lu5/d$a$a$a;-><init>(Lu5/d$a$a;Ljava/util/List;Lw3/e$c;)V

    const/4 p1, 0x1

    invoke-static {p1, v0}, Lq7/a;->u1(ZLq7/a$d;)V

    return-void
.end method
