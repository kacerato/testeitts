.class public final synthetic Llh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llh/b;->b:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

    iput-object p2, p0, Llh/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llh/b;->b:Lorg/blacksquircle/ui/editorkit/utils/StylingTask;

    iget-object v1, p0, Llh/b;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/blacksquircle/ui/editorkit/utils/StylingTask;->b(Lorg/blacksquircle/ui/editorkit/utils/StylingTask;Ljava/util/List;)V

    return-void
.end method
