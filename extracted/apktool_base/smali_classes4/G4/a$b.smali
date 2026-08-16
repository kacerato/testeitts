.class public LG4/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG4/a;->u1(Ljava/util/List;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG4/a;


# direct methods
.method public constructor <init>(LG4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG4/a$b;->a:LG4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, LG4/a$b;->a:LG4/a;

    invoke-static {p1}, LG4/a;->q1(LG4/a;)V

    iget-object p1, p0, LG4/a$b;->a:LG4/a;

    invoke-static {p1}, LG4/a;->p1(LG4/a;)LG4/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LG4/a$b;->a:LG4/a;

    invoke-static {p1}, LG4/a;->p1(LG4/a;)LG4/b;

    move-result-object p1

    iget-object v0, p0, LG4/a$b;->a:LG4/a;

    invoke-interface {p1, v0}, LG4/b;->b(LG4/a;)V

    :cond_0
    return-void
.end method
