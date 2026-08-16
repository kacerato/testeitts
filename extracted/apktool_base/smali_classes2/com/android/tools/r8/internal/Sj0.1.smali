.class public final Lcom/android/tools/r8/internal/Sj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/naming/k$b;

.field public final b:Ljava/util/OptionalInt;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/k$b;Ljava/util/OptionalInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sj0;->a:Lcom/android/tools/r8/naming/k$b;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Sj0;->b:Ljava/util/OptionalInt;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/internal/Sj0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/M0;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iget v0, v0, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/Sj0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Sj0;-><init>(Lcom/android/tools/r8/naming/k$b;Ljava/util/OptionalInt;)V

    return-object v1
.end method
