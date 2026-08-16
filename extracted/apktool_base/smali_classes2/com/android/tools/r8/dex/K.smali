.class public final Lcom/android/tools/r8/dex/K;
.super Lcom/android/tools/r8/graph/C5;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/dex/L;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/L;Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/dex/K;->d:Lcom/android/tools/r8/dex/L;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/C5;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/K;->c:Ljava/util/Set;

    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
