.class public final synthetic Lmh/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/a;


# instance fields
.field public final synthetic b:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;


# direct methods
.method public synthetic constructor <init>(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh/e;->b:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmh/e;->b:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    invoke-static {v0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->a(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
