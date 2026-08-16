.class public final synthetic Lcom/android/tools/r8/graph/Ic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/U6;

.field public final synthetic d:Lcom/android/tools/r8/graph/E0;

.field public final synthetic e:Lcom/android/tools/r8/graph/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Ic;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Ic;->c:Lcom/android/tools/r8/internal/U6;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Ic;->d:Lcom/android/tools/r8/graph/E0;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Ic;->e:Lcom/android/tools/r8/graph/j;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/Ic;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Ic;->c:Lcom/android/tools/r8/internal/U6;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Ic;->d:Lcom/android/tools/r8/graph/E0;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Ic;->e:Lcom/android/tools/r8/graph/j;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/b5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
