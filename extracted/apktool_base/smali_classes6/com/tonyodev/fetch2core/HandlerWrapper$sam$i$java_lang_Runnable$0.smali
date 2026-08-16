.class public final Lcom/tonyodev/fetch2core/HandlerWrapper$sam$i$java_lang_Runnable$0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic function:LMf/a;


# direct methods
.method public constructor <init>(LMf/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tonyodev/fetch2core/HandlerWrapper$sam$i$java_lang_Runnable$0;->function:LMf/a;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/tonyodev/fetch2core/HandlerWrapper$sam$i$java_lang_Runnable$0;->function:LMf/a;

    invoke-interface {v0}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invoke(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
