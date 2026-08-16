.class public final Lcom/android/tools/r8/internal/QQ;
.super Lcom/android/tools/r8/internal/NQ;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/kotlin/S;

.field public c:Lcom/android/tools/r8/internal/ML;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/S;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/NQ;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QQ;->b:Lcom/android/tools/r8/kotlin/S;

    new-instance v0, Lcom/android/tools/r8/internal/ML;

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/S;->b:[I

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/QQ;->c:Lcom/android/tools/r8/internal/ML;

    iget p1, p1, Lcom/android/tools/r8/kotlin/S;->e:I

    iput p1, p0, Lcom/android/tools/r8/internal/QQ;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ML;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/QQ;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ML;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/QQ;->c:Lcom/android/tools/r8/internal/ML;

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/KL;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/QQ;->c:Lcom/android/tools/r8/internal/ML;

    invoke-static {v0}, Lcom/android/tools/r8/internal/OQ;->a(Lcom/android/tools/r8/internal/ML;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/QQ;->b:Lcom/android/tools/r8/kotlin/S;

    iget v0, v0, Lcom/android/tools/r8/kotlin/S;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lcom/android/tools/r8/internal/QQ;->c:Lcom/android/tools/r8/internal/ML;

    iget v2, v0, Lcom/android/tools/r8/internal/ML;->b:I

    iget v3, v0, Lcom/android/tools/r8/internal/ML;->c:I

    iget v0, v0, Lcom/android/tools/r8/internal/ML;->d:I

    filled-new-array {v2, v3, v0}, [I

    move-result-object v2

    iget-object v0, p0, Lcom/android/tools/r8/internal/QQ;->b:Lcom/android/tools/r8/kotlin/S;

    iget-object v3, v0, Lcom/android/tools/r8/kotlin/S;->c:[Ljava/lang/String;

    iget-object v4, v0, Lcom/android/tools/r8/kotlin/S;->d:[Ljava/lang/String;

    iget-object v5, v0, Lcom/android/tools/r8/kotlin/S;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/tools/r8/kotlin/S;->g:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/internal/QQ;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/internal/LL;->a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/KL;

    move-result-object v0

    return-object v0
.end method
