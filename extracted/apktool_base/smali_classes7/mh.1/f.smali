.class public final synthetic Lmh/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;


# direct methods
.method public synthetic constructor <init>(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh/f;->b:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmh/f;->b:Lorg/blacksquircle/ui/editorkit/widget/TextScroller;

    invoke-static {v0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->c(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V

    return-void
.end method
