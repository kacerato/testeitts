.class public LF7/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LF7/f;


# direct methods
.method public constructor <init>(LF7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LF7/f$a;->a:LF7/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LF7/i;
    .locals 1

    iget-object v0, p0, LF7/f$a;->a:LF7/f;

    invoke-static {v0}, LF7/f;->h(LF7/f;)LF7/i;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, LF7/f$a;->a:LF7/f;

    invoke-static {v0}, LF7/f;->g(LF7/f;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public refresh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LF7/f$a;->a:LF7/f;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
