.class public Ly7/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly7/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ly7/a;

.field public final synthetic c:Ly7/b;


# direct methods
.method public constructor <init>(Ly7/b;Ly7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly7/b$h;->c:Ly7/b;

    iput-object p2, p0, Ly7/b$h;->b:Ly7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    iget-object p1, p0, Ly7/b$h;->c:Ly7/b;

    invoke-virtual {p1}, Ly7/b;->l()V

    iget-object p1, p0, Ly7/b$h;->b:Ly7/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ly7/a;->onCancel()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ly7/b$h;->c:Ly7/b;

    invoke-static {p1}, Ly7/b;->b(Ly7/b;)V

    :goto_0
    return-void
.end method
