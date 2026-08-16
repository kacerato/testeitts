.class public final synthetic Lcom/android/tools/r8/internal/kQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ou;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ou;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kQ0;->b:Lcom/android/tools/r8/internal/Ou;

    iput-object p2, p0, Lcom/android/tools/r8/internal/kQ0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/kQ0;->b:Lcom/android/tools/r8/internal/Ou;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kQ0;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Ou;->b(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    return p1
.end method
