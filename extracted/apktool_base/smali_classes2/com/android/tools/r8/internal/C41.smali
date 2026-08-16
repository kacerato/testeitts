.class public final synthetic Lcom/android/tools/r8/internal/C41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/a60;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/a60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/C41;->b:Lcom/android/tools/r8/internal/a60;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/C41;->b:Lcom/android/tools/r8/internal/a60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/a60;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
