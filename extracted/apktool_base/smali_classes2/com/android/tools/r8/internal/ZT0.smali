.class public final synthetic Lcom/android/tools/r8/internal/ZT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/IdentityHashMap;

.field public final synthetic b:Lcom/android/tools/r8/internal/wH;


# direct methods
.method public synthetic constructor <init>(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/wH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ZT0;->a:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ZT0;->b:Lcom/android/tools/r8/internal/wH;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZT0;->a:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ZT0;->b:Lcom/android/tools/r8/internal/wH;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Qu;->a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/wH;Ljava/lang/Integer;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
