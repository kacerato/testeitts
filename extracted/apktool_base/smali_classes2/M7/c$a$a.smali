.class public LM7/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/c$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/c$a;


# direct methods
.method public constructor <init>(LM7/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LM7/c$a$a;->a:LM7/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LM7/c$a$a;->a:LM7/c$a;

    iget-object v0, v0, LM7/c$a;->c:LM7/c;

    iget v1, v0, LM7/c;->p:I

    invoke-static {v0}, LM7/c;->u(LM7/c;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LM7/c;->R(IZ)LM7/c;

    iget-object v0, p0, LM7/c$a$a;->a:LM7/c$a;

    iget-object v0, v0, LM7/c$a;->c:LM7/c;

    invoke-static {v0}, LM7/c;->v(LM7/c;)V

    return-void
.end method
