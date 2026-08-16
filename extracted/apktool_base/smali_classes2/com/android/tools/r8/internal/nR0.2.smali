.class public final synthetic Lcom/android/tools/r8/internal/nR0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Pd;

.field public final synthetic b:Lcom/android/tools/r8/internal/FI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Pd;Lcom/android/tools/r8/internal/FI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nR0;->a:Lcom/android/tools/r8/internal/Pd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nR0;->b:Lcom/android/tools/r8/internal/FI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/nR0;->a:Lcom/android/tools/r8/internal/Pd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nR0;->b:Lcom/android/tools/r8/internal/FI;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V

    return-void
.end method
