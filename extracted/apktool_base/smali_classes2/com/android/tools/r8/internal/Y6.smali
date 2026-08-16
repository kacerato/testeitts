.class public final Lcom/android/tools/r8/internal/Y6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/XY;

.field public final b:Lcom/android/tools/r8/internal/ux;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/XY;Lcom/android/tools/r8/internal/ux;)V
    .locals 1

    const-string v0, "flags"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Y6;->a:Lcom/android/tools/r8/internal/XY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Y6;->b:Lcom/android/tools/r8/internal/ux;

    iget p1, p2, Lcom/android/tools/r8/internal/ux;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p2, Lcom/android/tools/r8/internal/ux;->c:I

    if-ne p1, v0, :cond_0

    iget p1, p2, Lcom/android/tools/r8/internal/ux;->a:I

    shl-int p1, v0, p1

    iput p1, p0, Lcom/android/tools/r8/internal/Y6;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BooleanFlagDelegate can work only with boolean flags (bitWidth = 1 and value = 1), but "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " was passed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V
    .locals 1

    const-string v0, "property"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/Y6;->a:Lcom/android/tools/r8/internal/XY;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/XY;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget p3, p0, Lcom/android/tools/r8/internal/Y6;->c:I

    or-int/2addr p2, p3

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Y6;->a:Lcom/android/tools/r8/internal/XY;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/XY;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget p3, p0, Lcom/android/tools/r8/internal/Y6;->c:I

    not-int p3, p3

    and-int/2addr p2, p3

    .line 5
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/Y6;->a:Lcom/android/tools/r8/internal/XY;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/XY;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z
    .locals 2

    const-string v0, "property"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Y6;->b:Lcom/android/tools/r8/internal/ux;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y6;->a:Lcom/android/tools/r8/internal/XY;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/XY;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget v0, p2, Lcom/android/tools/r8/internal/ux;->a:I

    ushr-int/2addr p1, v0

    .line 3
    iget v0, p2, Lcom/android/tools/r8/internal/ux;->b:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    and-int/2addr p1, v0

    iget p2, p2, Lcom/android/tools/r8/internal/ux;->c:I

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
