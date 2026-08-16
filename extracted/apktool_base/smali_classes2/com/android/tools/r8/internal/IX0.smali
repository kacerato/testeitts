.class public final synthetic Lcom/android/tools/r8/internal/IX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/k$b;

.field public final synthetic c:Ljava/util/OptionalInt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/k$b;Ljava/util/OptionalInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IX0;->b:Lcom/android/tools/r8/naming/k$b;

    iput-object p2, p0, Lcom/android/tools/r8/internal/IX0;->c:Ljava/util/OptionalInt;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/IX0;->b:Lcom/android/tools/r8/naming/k$b;

    iget-object v1, p0, Lcom/android/tools/r8/internal/IX0;->c:Ljava/util/OptionalInt;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Tj0;->a(Lcom/android/tools/r8/naming/k$b;Ljava/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method
