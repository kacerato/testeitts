.class public LM7/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/b$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/b$a;


# direct methods
.method public constructor <init>(LM7/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LM7/b$a$a;->a:LM7/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LM7/b$a$a;->a:LM7/b$a;

    iget-object v0, v0, LM7/b$a;->c:LM7/b;

    iget v1, v0, LM7/b;->l:I

    invoke-static {v0}, LM7/b;->s(LM7/b;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LM7/b;->L(IZ)LM7/b;

    return-void
.end method
