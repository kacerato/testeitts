.class public final synthetic Lcom/android/tools/r8/internal/kz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Vr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Aj;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Aj;Ljava/util/Set;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kz0;->a:Lcom/android/tools/r8/internal/Aj;

    iput-object p2, p0, Lcom/android/tools/r8/internal/kz0;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/kz0;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/kz0;->a:Lcom/android/tools/r8/internal/Aj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kz0;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kz0;->c:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/f80;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Aj;->a(Ljava/util/Set;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/f80;)Z

    move-result p1

    return p1
.end method
