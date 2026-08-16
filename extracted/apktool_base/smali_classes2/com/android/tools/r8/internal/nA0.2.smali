.class public final synthetic Lcom/android/tools/r8/internal/nA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/B3;

.field public final synthetic c:Lcom/android/tools/r8/internal/IH;

.field public final synthetic d:Lcom/android/tools/r8/graph/F2;

.field public final synthetic e:Lcom/android/tools/r8/internal/A3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/A3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nA0;->b:Lcom/android/tools/r8/internal/B3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nA0;->c:Lcom/android/tools/r8/internal/IH;

    iput-object p3, p0, Lcom/android/tools/r8/internal/nA0;->d:Lcom/android/tools/r8/graph/F2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/nA0;->e:Lcom/android/tools/r8/internal/A3;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/nA0;->b:Lcom/android/tools/r8/internal/B3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nA0;->c:Lcom/android/tools/r8/internal/IH;

    iget-object v2, p0, Lcom/android/tools/r8/internal/nA0;->d:Lcom/android/tools/r8/graph/F2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/nA0;->e:Lcom/android/tools/r8/internal/A3;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/A3;Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method
