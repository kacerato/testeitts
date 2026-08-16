.class public Lcom/android/tools/r8/kotlin/l0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/kotlin/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/kl0;

.field public final b:Lcom/android/tools/r8/internal/kl0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/kl0;Lcom/android/tools/r8/internal/kl0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/l0$b;->a:Lcom/android/tools/r8/internal/kl0;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/l0$b;->b:Lcom/android/tools/r8/internal/kl0;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/l0$b;->a:Lcom/android/tools/r8/internal/kl0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kl0;->a()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/android/tools/r8/kotlin/l0$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/l0$b;->a:Lcom/android/tools/r8/internal/kl0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/kl0;->a(Ljava/lang/Integer;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
