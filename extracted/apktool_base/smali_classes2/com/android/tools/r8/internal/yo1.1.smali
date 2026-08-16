.class public final synthetic Lcom/android/tools/r8/internal/yo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Lcom/android/tools/r8/internal/j7;

.field public final synthetic d:Lcom/android/tools/r8/internal/Ad;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/j7;Lcom/android/tools/r8/internal/Ad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yo1;->b:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yo1;->c:Lcom/android/tools/r8/internal/j7;

    iput-object p3, p0, Lcom/android/tools/r8/internal/yo1;->d:Lcom/android/tools/r8/internal/Ad;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/yo1;->b:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yo1;->c:Lcom/android/tools/r8/internal/j7;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yo1;->d:Lcom/android/tools/r8/internal/Ad;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/oE;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/j7;Lcom/android/tools/r8/internal/Ad;)V

    return-void
.end method
