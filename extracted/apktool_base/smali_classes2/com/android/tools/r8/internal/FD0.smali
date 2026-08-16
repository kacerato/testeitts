.class public final synthetic Lcom/android/tools/r8/internal/FD0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/EM;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/FD0;->b:Lcom/android/tools/r8/internal/EM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/FD0;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/FD0;->d:Lcom/android/tools/r8/graph/j;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/FD0;->b:Lcom/android/tools/r8/internal/EM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FD0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/FD0;->d:Lcom/android/tools/r8/graph/j;

    check-cast p1, Lcom/android/tools/r8/internal/JM;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/EM;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/JM;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
