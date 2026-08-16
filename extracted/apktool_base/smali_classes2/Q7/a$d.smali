.class public LQ7/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ7/a;->p(LT7/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LR7/b;

.field public final synthetic c:LQ7/a;


# direct methods
.method public constructor <init>(LQ7/a;LR7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ7/a$d;->c:LQ7/a;

    iput-object p2, p0, LQ7/a$d;->b:LR7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LQ7/a$d;->c:LQ7/a;

    invoke-static {v0}, LQ7/a;->g(LQ7/a;)LQ7/b;

    move-result-object v0

    iget-object v1, p0, LQ7/a$d;->b:LR7/b;

    invoke-interface {v0, v1, p1}, LQ7/b;->a(LR7/b;Landroid/view/View;)V

    return-void
.end method
