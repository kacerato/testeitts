.class public final synthetic Lcom/android/tools/r8/internal/Jz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yI;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/graph/L2;

.field public final synthetic e:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yI;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jz1;->b:Lcom/android/tools/r8/internal/yI;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Jz1;->c:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Jz1;->d:Lcom/android/tools/r8/graph/L2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Jz1;->e:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jz1;->b:Lcom/android/tools/r8/internal/yI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jz1;->c:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Jz1;->d:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Jz1;->e:Lcom/android/tools/r8/internal/nJ;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method
