.class public final synthetic Lcom/android/tools/r8/internal/My1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/util/function/Function;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/My1;->b:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/tools/r8/internal/My1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/My1;->b:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/internal/My1;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
