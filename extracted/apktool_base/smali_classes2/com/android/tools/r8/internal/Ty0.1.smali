.class public final synthetic Lcom/android/tools/r8/internal/Ty0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ad;

.field public final synthetic c:Lcom/android/tools/r8/internal/fe;

.field public final synthetic d:Lcom/android/tools/r8/internal/j50;

.field public final synthetic e:Lcom/android/tools/r8/internal/B50;

.field public final synthetic f:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ad;Lcom/android/tools/r8/internal/fe;Lcom/android/tools/r8/internal/j50;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ty0;->b:Lcom/android/tools/r8/internal/Ad;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ty0;->c:Lcom/android/tools/r8/internal/fe;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ty0;->d:Lcom/android/tools/r8/internal/j50;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ty0;->e:Lcom/android/tools/r8/internal/B50;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Ty0;->f:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ty0;->b:Lcom/android/tools/r8/internal/Ad;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ty0;->c:Lcom/android/tools/r8/internal/fe;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ty0;->d:Lcom/android/tools/r8/internal/j50;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ty0;->e:Lcom/android/tools/r8/internal/B50;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ty0;->f:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/Ad;->a(Lcom/android/tools/r8/internal/Ad;Lcom/android/tools/r8/internal/fe;Lcom/android/tools/r8/internal/j50;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)V

    return-void
.end method
