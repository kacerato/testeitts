.class public final synthetic Lcom/android/tools/r8/internal/uC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/DI;

.field public final synthetic c:Lcom/android/tools/r8/internal/FI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/DI;Lcom/android/tools/r8/internal/FI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uC0;->b:Lcom/android/tools/r8/internal/DI;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uC0;->c:Lcom/android/tools/r8/internal/FI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/uC0;->b:Lcom/android/tools/r8/internal/DI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/uC0;->c:Lcom/android/tools/r8/internal/FI;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/DI;->a(Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
