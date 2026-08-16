.class public Lgb/e$a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgb/e$a;


# direct methods
.method public constructor <init>(Lgb/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$h;->a:Lgb/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object v0, Lr4/a$e;->Right:Lr4/a$e;

    new-instance v1, Lgb/e$a$h$a;

    invoke-direct {v1, p0}, Lgb/e$a$h$a;-><init>(Lgb/e$a$h;)V

    const-string v2, "Select new parent"

    invoke-static {p1, v0, v2, v1}, LX6/b;->D1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;LX6/b$f;)LX6/b;

    return-void
.end method
