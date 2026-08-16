.class public LM7/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/m$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/m$a;


# direct methods
.method public constructor <init>(LM7/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LM7/m$a$a;->a:LM7/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LM7/m$a$a;->a:LM7/m$a;

    iget-object v0, v0, LM7/m$a;->c:LM7/m;

    iget v1, v0, LM7/m;->o:I

    invoke-static {v0}, LM7/m;->u(LM7/m;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LM7/m;->R(IZ)LM7/m;

    iget-object v0, p0, LM7/m$a$a;->a:LM7/m$a;

    iget-object v0, v0, LM7/m$a;->c:LM7/m;

    invoke-static {v0}, LM7/m;->v(LM7/m;)V

    return-void
.end method
