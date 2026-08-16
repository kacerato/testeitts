.class public final synthetic Lcom/android/tools/r8/internal/SP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/OV;

.field public final synthetic c:Lcom/android/tools/r8/graph/j1;

.field public final synthetic d:Lcom/android/tools/r8/graph/H0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/OV;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SP0;->b:Lcom/android/tools/r8/internal/OV;

    iput-object p2, p0, Lcom/android/tools/r8/internal/SP0;->c:Lcom/android/tools/r8/graph/j1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/SP0;->d:Lcom/android/tools/r8/graph/H0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/SP0;->b:Lcom/android/tools/r8/internal/OV;

    iget-object v1, p0, Lcom/android/tools/r8/internal/SP0;->c:Lcom/android/tools/r8/graph/j1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/SP0;->d:Lcom/android/tools/r8/graph/H0;

    check-cast p1, Lcom/android/tools/r8/graph/j1$a;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/j1$a;)V

    return-void
.end method
