.class public final Lcom/android/tools/r8/internal/K10;
.super Lcom/android/tools/r8/internal/mZ;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public final p:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/N10;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/android/tools/r8/internal/mZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;Lcom/android/tools/r8/internal/N10;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/K10;->p:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/K10;->p:Ljava/util/IdentityHashMap;

    sget-object v0, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method
