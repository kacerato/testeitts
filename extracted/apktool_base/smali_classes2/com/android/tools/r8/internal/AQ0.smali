.class public final synthetic Lcom/android/tools/r8/internal/AQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Oy;

.field public final synthetic c:Lcom/android/tools/r8/shaking/N$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Oy;Lcom/android/tools/r8/shaking/N$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AQ0;->b:Lcom/android/tools/r8/internal/Oy;

    iput-object p2, p0, Lcom/android/tools/r8/internal/AQ0;->c:Lcom/android/tools/r8/shaking/N$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/AQ0;->b:Lcom/android/tools/r8/internal/Oy;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AQ0;->c:Lcom/android/tools/r8/shaking/N$a;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/shaking/N$a;Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method
