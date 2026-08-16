.class public abstract Lcom/android/tools/r8/naming/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/C;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/naming/Y0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/naming/Y0;-><init>(Lcom/android/tools/r8/naming/C;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
