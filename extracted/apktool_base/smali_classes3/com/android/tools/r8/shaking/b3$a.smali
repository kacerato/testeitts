.class public Lcom/android/tools/r8/shaking/b3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/b3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/b3$a;->a:Lcom/android/tools/r8/internal/eC;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/b3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/b3$a;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-object p0
.end method

.method public final a(Ljava/util/Collection;)Lcom/android/tools/r8/shaking/b3$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/Ub;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Ub;-><init>(Lcom/android/tools/r8/shaking/b3$a;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/shaking/b3;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/shaking/b3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/b3$a;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/b3;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method
