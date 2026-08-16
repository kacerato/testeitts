.class public final synthetic Lcom/android/tools/r8/naming/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/s;

.field public final synthetic b:Lcom/android/tools/r8/naming/s;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/s;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/e4;->a:Lcom/android/tools/r8/naming/s;

    iput-object p2, p0, Lcom/android/tools/r8/naming/e4;->b:Lcom/android/tools/r8/naming/s;

    iput-object p3, p0, Lcom/android/tools/r8/naming/e4;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/naming/e4;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/naming/e4;->a:Lcom/android/tools/r8/naming/s;

    iget-object v1, p0, Lcom/android/tools/r8/naming/e4;->b:Lcom/android/tools/r8/naming/s;

    iget-object v2, p0, Lcom/android/tools/r8/naming/e4;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/naming/e4;->d:Ljava/util/Map;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/naming/l;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/M40;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/naming/s;->a(Lcom/android/tools/r8/naming/s;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/naming/l;Lcom/android/tools/r8/internal/M40;)V

    return-void
.end method
