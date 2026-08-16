.class public final synthetic Lcom/android/tools/r8/internal/F71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/cm0;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cm0;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/F71;->b:Lcom/android/tools/r8/internal/cm0;

    iput p2, p0, Lcom/android/tools/r8/internal/F71;->c:I

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/F71;->d:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/F71;->b:Lcom/android/tools/r8/internal/cm0;

    iget v1, p0, Lcom/android/tools/r8/internal/F71;->c:I

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/F71;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/cm0;->b(IZ)Lcom/android/tools/r8/internal/av;

    move-result-object v0

    return-object v0
.end method
