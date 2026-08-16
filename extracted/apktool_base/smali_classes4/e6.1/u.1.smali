.class public final synthetic Le6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# instance fields
.field public final synthetic a:Le6/E;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Le6/E;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/u;->a:Le6/E;

    iput-object p2, p0, Le6/u;->b:Ljava/util/List;

    iput-object p3, p0, Le6/u;->c:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final refresh(I)V
    .locals 3

    iget-object v0, p0, Le6/u;->a:Le6/E;

    iget-object v1, p0, Le6/u;->b:Ljava/util/List;

    iget-object v2, p0, Le6/u;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, p1}, Le6/E;->d(Le6/E;Ljava/util/List;Landroid/widget/LinearLayout;I)V

    return-void
.end method
