.class public final synthetic Lcom/android/tools/r8/internal/s41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Zl0;

.field public final synthetic c:Lcom/android/tools/r8/internal/EB;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Zl0;Lcom/android/tools/r8/internal/EB;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/s41;->b:Lcom/android/tools/r8/internal/Zl0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/s41;->c:Lcom/android/tools/r8/internal/EB;

    iput p3, p0, Lcom/android/tools/r8/internal/s41;->d:I

    iput p4, p0, Lcom/android/tools/r8/internal/s41;->e:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/s41;->b:Lcom/android/tools/r8/internal/Zl0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/s41;->c:Lcom/android/tools/r8/internal/EB;

    iget v2, p0, Lcom/android/tools/r8/internal/s41;->d:I

    iget v3, p0, Lcom/android/tools/r8/internal/s41;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Zl0;->a(Lcom/android/tools/r8/internal/EB;II)Lcom/android/tools/r8/internal/dm0;

    move-result-object v0

    return-object v0
.end method
