.class public final LId/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LId/a;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;LDd/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:LId/a;


# direct methods
.method public constructor <init>(LId/a;)V
    .locals 0

    iput-object p1, p0, LId/a$b;->b:LId/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LId/a$b;->b:LId/a;

    invoke-static {p1}, LId/a;->L(LId/a;)LJd/b;

    move-result-object p1

    iget-object v0, p0, LId/a$b;->b:LId/a;

    invoke-static {v0}, LId/a;->H(LId/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, LJd/b;->c(Landroid/view/View;)V

    return-void
.end method
