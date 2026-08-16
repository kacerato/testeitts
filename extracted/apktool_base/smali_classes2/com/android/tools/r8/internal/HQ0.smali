.class public final synthetic Lcom/android/tools/r8/internal/HQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HQ0;->a:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HQ0;->a:Lcom/android/tools/r8/internal/Hz;

    check-cast p1, Lcom/android/tools/r8/internal/vo0;

    check-cast p2, Lcom/android/tools/r8/internal/qo0$a;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/P00;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/vo0;Lcom/android/tools/r8/internal/qo0$a;)V

    return-void
.end method
