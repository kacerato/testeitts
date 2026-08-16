.class public final synthetic Llh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;


# direct methods
.method public synthetic constructor <init>(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llh/a;->b:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Llh/a;->b:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

    invoke-static {v0}, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->a(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;)V

    return-void
.end method
