.class public final synthetic Lcom/android/tools/r8/internal/dB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/C3;

.field public final synthetic b:Lcom/android/tools/r8/internal/F3;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ef;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/C3;Lcom/android/tools/r8/internal/F3;Lcom/android/tools/r8/internal/Ef;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dB0;->a:Lcom/android/tools/r8/internal/C3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/dB0;->b:Lcom/android/tools/r8/internal/F3;

    iput-object p3, p0, Lcom/android/tools/r8/internal/dB0;->c:Lcom/android/tools/r8/internal/Ef;

    iput-object p4, p0, Lcom/android/tools/r8/internal/dB0;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/dB0;->a:Lcom/android/tools/r8/internal/C3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dB0;->b:Lcom/android/tools/r8/internal/F3;

    iget-object v2, p0, Lcom/android/tools/r8/internal/dB0;->c:Lcom/android/tools/r8/internal/Ef;

    iget-object v3, p0, Lcom/android/tools/r8/internal/dB0;->d:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/C3;->a(Lcom/android/tools/r8/internal/F3;Lcom/android/tools/r8/internal/Ef;Ljava/util/function/Consumer;Ljava/util/Set;)Lcom/android/tools/r8/internal/t3;

    move-result-object p1

    return-object p1
.end method
