.class public final synthetic Lcom/android/tools/r8/kotlin/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/LinkedHashMap;

.field public final synthetic b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/d4;->a:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/d4;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/d4;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/d4;->b:Lcom/android/tools/r8/graph/u1;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/internal/JP;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/kotlin/m;->a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Lcom/android/tools/r8/internal/JP;)V

    return-void
.end method
