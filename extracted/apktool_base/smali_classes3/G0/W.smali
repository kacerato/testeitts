.class public final LG0/W;
.super LG0/X;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:LD0/i;


# direct methods
.method public constructor <init>(Landroid/content/Intent;LD0/i;I)V
    .locals 0

    iput-object p1, p0, LG0/W;->b:Landroid/content/Intent;

    iput-object p2, p0, LG0/W;->c:LD0/i;

    invoke-direct {p0}, LG0/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LG0/W;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, LG0/W;->c:LD0/i;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, LD0/i;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
