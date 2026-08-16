.class public final synthetic Lcom/android/tools/r8/internal/I71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/cm0;

.field public final synthetic c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/p10;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cm0;ILcom/android/tools/r8/internal/p10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/I71;->b:Lcom/android/tools/r8/internal/cm0;

    iput p2, p0, Lcom/android/tools/r8/internal/I71;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/I71;->d:Lcom/android/tools/r8/internal/p10;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/I71;->b:Lcom/android/tools/r8/internal/cm0;

    iget v1, p0, Lcom/android/tools/r8/internal/I71;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/I71;->d:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/cm0;->b(ILcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/o10;

    move-result-object v0

    return-object v0
.end method
