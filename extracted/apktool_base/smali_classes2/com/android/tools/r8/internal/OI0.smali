.class public final synthetic Lcom/android/tools/r8/internal/OI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ia;

.field public final synthetic c:Lcom/android/tools/r8/internal/pu0;

.field public final synthetic d:Lcom/android/tools/r8/internal/pu0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ia;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OI0;->b:Lcom/android/tools/r8/internal/Ia;

    iput-object p2, p0, Lcom/android/tools/r8/internal/OI0;->c:Lcom/android/tools/r8/internal/pu0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/OI0;->d:Lcom/android/tools/r8/internal/pu0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/OI0;->b:Lcom/android/tools/r8/internal/Ia;

    iget-object v1, p0, Lcom/android/tools/r8/internal/OI0;->c:Lcom/android/tools/r8/internal/pu0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/OI0;->d:Lcom/android/tools/r8/internal/pu0;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
