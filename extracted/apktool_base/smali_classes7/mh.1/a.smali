.class public final synthetic Lmh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

.field public final synthetic c:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh/a;->b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iput-object p2, p0, Lmh/a;->c:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmh/a;->b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iget-object v1, p0, Lmh/a;->c:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->d(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V

    return-void
.end method
