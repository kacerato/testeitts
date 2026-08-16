.class public final synthetic Lcom/android/tools/r8/internal/OU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/R7;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Lcom/android/tools/r8/internal/Q7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Q7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OU0;->b:Lcom/android/tools/r8/internal/R7;

    iput-object p2, p0, Lcom/android/tools/r8/internal/OU0;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/OU0;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/OU0;->e:Lcom/android/tools/r8/internal/Q7;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/OU0;->b:Lcom/android/tools/r8/internal/R7;

    iget-object v1, p0, Lcom/android/tools/r8/internal/OU0;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/OU0;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/OU0;->e:Lcom/android/tools/r8/internal/Q7;

    check-cast p1, Lcom/android/tools/r8/synthesis/W;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Q7;Lcom/android/tools/r8/synthesis/W;)V

    return-void
.end method
