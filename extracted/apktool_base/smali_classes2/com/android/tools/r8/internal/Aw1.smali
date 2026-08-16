.class public final synthetic Lcom/android/tools/r8/internal/Aw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/A2;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Aw1;->b:Lcom/android/tools/r8/graph/A2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Aw1;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Aw1;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Aw1;->c:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/internal/L70;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/vg;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/L70;)V

    return-void
.end method
