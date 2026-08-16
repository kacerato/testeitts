.class public final synthetic Lcom/android/tools/r8/internal/xt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Lcom/android/tools/r8/internal/su0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/su0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xt1;->b:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xt1;->c:Lcom/android/tools/r8/internal/su0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/xt1;->b:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xt1;->c:Lcom/android/tools/r8/internal/su0;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/su0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/su0;)V

    return-void
.end method
