.class public final Lcom/android/tools/r8/internal/rP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/OM;

.field public final b:Lcom/android/tools/r8/internal/QM;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/OM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rP;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rP;->b:Lcom/android/tools/r8/internal/QM;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;)Lcom/android/tools/r8/internal/MM;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/rP;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/OM;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/MM;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Invalid binding reference"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1
.end method
