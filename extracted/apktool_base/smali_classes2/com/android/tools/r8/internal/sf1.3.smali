.class public final synthetic Lcom/android/tools/r8/internal/sf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/AA;

.field public final synthetic b:Lcom/android/tools/r8/internal/m80;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/m80;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sf1;->a:Lcom/android/tools/r8/internal/AA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sf1;->b:Lcom/android/tools/r8/internal/m80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/sf1;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/sf1;->a:Lcom/android/tools/r8/internal/AA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sf1;->b:Lcom/android/tools/r8/internal/m80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sf1;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/internal/eE;

    check-cast p2, Lcom/android/tools/r8/internal/hE;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/jE;->a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/m80;Ljava/util/Map;Lcom/android/tools/r8/internal/eE;Lcom/android/tools/r8/internal/hE;)V

    return-void
.end method
