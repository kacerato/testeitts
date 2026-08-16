.class public final synthetic Lcom/android/tools/r8/internal/Nn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/np0;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/np0;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nn1;->b:Lcom/android/tools/r8/internal/np0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Nn1;->c:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nn1;->b:Lcom/android/tools/r8/internal/np0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nn1;->c:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/np0;->c(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    return-object v0
.end method
