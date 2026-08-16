.class public final synthetic Lmh/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh/c;->b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iput p2, p0, Lmh/c;->c:I

    iput p3, p0, Lmh/c;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmh/c;->b:Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    iget v1, p0, Lmh/c;->c:I

    iget v2, p0, Lmh/c;->d:I

    invoke-static {v0, v1, v2}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->c(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;II)V

    return-void
.end method
