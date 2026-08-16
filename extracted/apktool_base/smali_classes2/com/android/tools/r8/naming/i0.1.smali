.class public final Lcom/android/tools/r8/naming/i0;
.super Lcom/android/tools/r8/naming/j0;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/j0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/WR;->b:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/i0;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a([CLcom/android/tools/r8/naming/L;)Ljava/lang/String;
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/naming/h0;->a([CLcom/android/tools/r8/naming/L;)Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    iget-object v1, p0, Lcom/android/tools/r8/naming/i0;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/naming/i0;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/i0;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/naming/i0;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method
