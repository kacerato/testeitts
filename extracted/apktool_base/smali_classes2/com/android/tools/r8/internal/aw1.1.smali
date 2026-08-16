.class public final synthetic Lcom/android/tools/r8/internal/aw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/vA;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/internal/xA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/vA;Ljava/util/List;Lcom/android/tools/r8/internal/xA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aw1;->b:Lcom/android/tools/r8/internal/vA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/aw1;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/aw1;->d:Lcom/android/tools/r8/internal/xA;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/aw1;->b:Lcom/android/tools/r8/internal/vA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aw1;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/aw1;->d:Lcom/android/tools/r8/internal/xA;

    check-cast p1, Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/vA;->a(Ljava/util/List;Lcom/android/tools/r8/internal/xA;Lcom/android/tools/r8/shaking/x1;)V

    return-void
.end method
