.class public final Lcom/google/ai/edge/litertlm/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ai/edge/litertlm/c$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/B<",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "$$this$callbackFlow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/B<",
            "-",
            "Lcom/google/ai/edge/litertlm/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ai/edge/litertlm/c$c$a;->a:Lgg/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$c$a;->a:Lgg/B;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lgg/E$a;->a(Lgg/E;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/ai/edge/litertlm/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$c$a;->a:Lgg/B;

    invoke-interface {v0, p1}, Lgg/E;->p(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ai/edge/litertlm/c$c$a;->a:Lgg/B;

    invoke-interface {v0, p1}, Lgg/E;->J(Ljava/lang/Throwable;)Z

    return-void
.end method
