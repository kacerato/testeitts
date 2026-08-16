.class public Lcom/android/tools/r8/internal/nJ$p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/tools/r8/graph/A2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/nJ$p$a;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/H0;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$p$a;->a:Ljava/util/Comparator;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$p$a;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Pm1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Pm1;-><init>(Lcom/android/tools/r8/internal/nJ$p$a;)V

    :cond_0
    return-object p1
.end method
