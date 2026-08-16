.class public LM7/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/e$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/e$a;


# direct methods
.method public constructor <init>(LM7/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LM7/e$a$a;->a:LM7/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LM7/e$a$a;->a:LM7/e$a;

    iget-object v0, v0, LM7/e$a;->c:LM7/e;

    iget v1, v0, LM7/e;->o:I

    invoke-static {v0}, LM7/e;->u(LM7/e;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LM7/e;->R(IZ)LM7/e;

    iget-object v0, p0, LM7/e$a$a;->a:LM7/e$a;

    iget-object v0, v0, LM7/e$a;->c:LM7/e;

    invoke-static {v0}, LM7/e;->v(LM7/e;)V

    return-void
.end method
