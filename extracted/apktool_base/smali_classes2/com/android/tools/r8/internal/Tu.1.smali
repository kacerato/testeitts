.class public final Lcom/android/tools/r8/internal/Tu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/internal/Nl0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Nl0;Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tu;->a:Lcom/android/tools/r8/internal/nC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/PT;

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/Tu;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
