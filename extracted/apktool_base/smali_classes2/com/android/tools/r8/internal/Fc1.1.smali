.class public final synthetic Lcom/android/tools/r8/internal/Fc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hJ;

.field public final synthetic c:Lcom/android/tools/r8/internal/dJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hJ;Lcom/android/tools/r8/internal/dJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fc1;->b:Lcom/android/tools/r8/internal/hJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fc1;->c:Lcom/android/tools/r8/internal/dJ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fc1;->b:Lcom/android/tools/r8/internal/hJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fc1;->c:Lcom/android/tools/r8/internal/dJ;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/hJ;->a(Lcom/android/tools/r8/internal/dJ;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
