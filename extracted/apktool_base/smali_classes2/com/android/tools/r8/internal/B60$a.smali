.class public abstract Lcom/android/tools/r8/internal/B60$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/B60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/android/tools/r8/internal/B60;",
        "B:",
        "Lcom/android/tools/r8/internal/B60$a<",
        "TP;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/android/tools/r8/graph/A2;

.field public c:Lcom/android/tools/r8/internal/B60;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/B60$a;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/tools/r8/internal/B60$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/tools/r8/internal/B60$a;->a:I

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/A2;",
            ")TB;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/B60$a;->b:Lcom/android/tools/r8/graph/A2;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Lcom/android/tools/r8/internal/B60;
.end method

.method public b()Lcom/android/tools/r8/internal/B60$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/B60$a;->g:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/android/tools/r8/internal/B60$a;
.end method
