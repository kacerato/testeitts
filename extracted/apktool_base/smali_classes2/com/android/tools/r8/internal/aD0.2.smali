.class public final synthetic Lcom/android/tools/r8/internal/aD0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Dt;

.field public final synthetic c:Lcom/android/tools/r8/internal/k3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Dt;Lcom/android/tools/r8/internal/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aD0;->b:Lcom/android/tools/r8/internal/Dt;

    iput-object p2, p0, Lcom/android/tools/r8/internal/aD0;->c:Lcom/android/tools/r8/internal/k3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aD0;->b:Lcom/android/tools/r8/internal/Dt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aD0;->c:Lcom/android/tools/r8/internal/k3;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Dt;->a(Lcom/android/tools/r8/internal/k3;Ljava/util/Set;)V

    return-void
.end method
