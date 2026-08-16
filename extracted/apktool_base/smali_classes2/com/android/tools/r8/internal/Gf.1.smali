.class public final Lcom/android/tools/r8/internal/Gf;
.super Lcom/android/tools/r8/internal/Bf;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Ff;

.field public final b:Lcom/android/tools/r8/graph/H2;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ff;Lcom/android/tools/r8/graph/H2;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bf;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gf;->a:Lcom/android/tools/r8/internal/Ff;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gf;->b:Lcom/android/tools/r8/graph/H2;

    iput p3, p0, Lcom/android/tools/r8/internal/Gf;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Gf;->b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Gf;->a:Lcom/android/tools/r8/internal/Ff;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Bf;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x24

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/tools/r8/internal/Gf;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gf;->a:Lcom/android/tools/r8/internal/Ff;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Bf;->b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/tools/r8/internal/Gf;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p1
.end method
