.class public final LG0/V;
.super LG0/X;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, LG0/V;->b:Landroid/content/Intent;

    iput-object p2, p0, LG0/V;->c:Landroidx/fragment/app/Fragment;

    iput p3, p0, LG0/V;->d:I

    invoke-direct {p0}, LG0/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LG0/V;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, LG0/V;->c:Landroidx/fragment/app/Fragment;

    iget v2, p0, LG0/V;->d:I

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
