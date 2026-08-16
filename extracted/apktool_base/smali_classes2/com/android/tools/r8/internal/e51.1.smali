.class public final synthetic Lcom/android/tools/r8/internal/e51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/IH;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/IH;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/e51;->b:Lcom/android/tools/r8/internal/IH;

    iput p2, p0, Lcom/android/tools/r8/internal/e51;->c:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/e51;->b:Lcom/android/tools/r8/internal/IH;

    iget v1, p0, Lcom/android/tools/r8/internal/e51;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/at0;->a(Lcom/android/tools/r8/internal/IH;I)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    return-object v0
.end method
