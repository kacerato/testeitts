.class public final Lcom/android/tools/r8/shaking/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/O0;->a:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/shaking/N0;)V
    .locals 3

    .line 4
    new-instance v0, Lcom/android/tools/r8/graph/o3;

    .line 5
    sget-object v1, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v1}, Lcom/android/tools/r8/graph/o3;-><init>(Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/graph/d;Lcom/android/tools/r8/graph/d;)V

    .line 6
    iget-object v1, p2, Lcom/android/tools/r8/shaking/N0;->a:Lcom/android/tools/r8/graph/d;

    .line 7
    iput-object v1, v0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    .line 8
    iget-object p2, p2, Lcom/android/tools/r8/shaking/N0;->b:Lcom/android/tools/r8/graph/d;

    .line 9
    iput-object p2, v0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/n3;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/O0;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/ia;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/ia;-><init>(Lcom/android/tools/r8/graph/n3;)V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
