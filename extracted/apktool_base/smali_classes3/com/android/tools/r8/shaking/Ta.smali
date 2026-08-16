.class public final synthetic Lcom/android/tools/r8/shaking/Ta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/graph/F5;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Ta;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Ta;->c:Lcom/android/tools/r8/graph/F5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Ta;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Ta;->c:Lcom/android/tools/r8/graph/F5;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/shaking/T;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method
