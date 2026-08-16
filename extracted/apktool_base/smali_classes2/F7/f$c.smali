.class public LF7/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF7/f;->q(LF7/m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LF7/i;

.field public final synthetic c:LF7/m;

.field public final synthetic d:LF7/f;


# direct methods
.method public constructor <init>(LF7/f;LF7/i;LF7/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$eElement",
            "val$holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LF7/f$c;->d:LF7/f;

    iput-object p2, p0, LF7/f$c;->b:LF7/i;

    iput-object p3, p0, LF7/f$c;->c:LF7/m;

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

    invoke-static {}, LN7/c;->Y()V

    iget-object p1, p0, LF7/f$c;->d:LF7/f;

    invoke-static {p1}, LF7/f;->i(LF7/f;)LF7/g;

    move-result-object p1

    iget-object v0, p0, LF7/f$c;->b:LF7/i;

    invoke-interface {p1, v0}, LF7/g;->c(LF7/i;)V

    iget-object p1, p0, LF7/f$c;->d:LF7/f;

    iget-object v0, p0, LF7/f$c;->c:LF7/m;

    iget-object v1, p0, LF7/f$c;->b:LF7/i;

    invoke-static {p1, v0, v1}, LF7/f;->j(LF7/f;LF7/m;LF7/i;)V

    return-void
.end method
