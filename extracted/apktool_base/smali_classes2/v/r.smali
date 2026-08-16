.class public final synthetic Lv/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/fB;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fB;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/r;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p2, p0, Lv/r;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lv/r;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v1, p0, Lv/r;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/ir/optimize/M;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/Map;Lcom/android/tools/r8/internal/N20;)V

    return-void
.end method
