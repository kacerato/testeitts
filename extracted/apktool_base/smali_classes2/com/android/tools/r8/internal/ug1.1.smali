.class public final synthetic Lcom/android/tools/r8/internal/ug1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/kE;

.field public final synthetic c:Lcom/android/tools/r8/internal/B60;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/kE;Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ug1;->b:Lcom/android/tools/r8/internal/kE;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ug1;->c:Lcom/android/tools/r8/internal/B60;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ug1;->b:Lcom/android/tools/r8/internal/kE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ug1;->c:Lcom/android/tools/r8/internal/B60;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/kE;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    return p1
.end method
