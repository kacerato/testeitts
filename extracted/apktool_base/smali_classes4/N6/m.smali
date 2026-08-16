.class public final synthetic LN6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# instance fields
.field public final synthetic a:LN6/p;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(LN6/p;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/m;->a:LN6/p;

    iput-object p2, p0, LN6/m;->b:Ljava/util/List;

    iput-object p3, p0, LN6/m;->c:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final refresh(I)V
    .locals 3

    iget-object v0, p0, LN6/m;->a:LN6/p;

    iget-object v1, p0, LN6/m;->b:Ljava/util/List;

    iget-object v2, p0, LN6/m;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, p1}, LN6/p;->h(LN6/p;Ljava/util/List;Landroid/widget/LinearLayout;I)V

    return-void
.end method
