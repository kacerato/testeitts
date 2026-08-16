.class public Lgb/e$a$d$g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$d$g$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lec/a;

.field public final synthetic b:Lgb/e$a$d$g$b;


# direct methods
.method public constructor <init>(Lgb/e$a$d$g$b;Lec/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$d$g$b$a;->b:Lgb/e$a$d$g$b;

    iput-object p2, p0, Lgb/e$a$d$g$b$a;->a:Lec/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lgb/e$a$d$g$b$a$a;

    invoke-direct {p1, p0}, Lgb/e$a$d$g$b$a$a;-><init>(Lgb/e$a$d$g$b$a;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
