.class public final synthetic Lcom/android/tools/r8/internal/DU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/R00;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/DU0;->b:Lcom/android/tools/r8/internal/R00;

    iput-object p2, p0, Lcom/android/tools/r8/internal/DU0;->c:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/DU0;->b:Lcom/android/tools/r8/internal/R00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/DU0;->c:Lcom/android/tools/r8/internal/Hz;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/R00;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method
