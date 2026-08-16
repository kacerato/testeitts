.class public LQ6/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/a;->K1(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB5/b;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:LQ6/a;


# direct methods
.method public constructor <init>(LQ6/a;LB5/b;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entriesListener",
            "val$entries",
            "val$content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ6/a$e;->d:LQ6/a;

    iput-object p2, p0, LQ6/a$e;->a:LB5/b;

    iput-object p3, p0, LQ6/a$e;->b:Ljava/util/List;

    iput-object p4, p0, LQ6/a$e;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p1, p0, LQ6/a$e;->a:LB5/b;

    if-eqz p1, :cond_0

    iget-object v0, p0, LQ6/a$e;->b:Ljava/util/List;

    invoke-interface {p1, v0}, LB5/b;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LQ6/a$e;->d:LQ6/a;

    iget-object v1, p0, LQ6/a$e;->b:Ljava/util/List;

    iget-object v2, p0, LQ6/a$e;->c:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, LQ6/a;->K1(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V

    :goto_0
    return-void
.end method
