.class public final synthetic Lmh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh/b;->b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iput p2, p0, Lmh/b;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmh/b;->b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iget v1, p0, Lmh/b;->c:F

    invoke-static {v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->e(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;F)V

    return-void
.end method
