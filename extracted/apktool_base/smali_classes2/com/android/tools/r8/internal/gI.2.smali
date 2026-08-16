.class public final Lcom/android/tools/r8/internal/gI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/lI;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/lI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/gI;->b:Lcom/android/tools/r8/internal/lI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gI;->b:Lcom/android/tools/r8/internal/lI;

    iget-object v0, v0, Lcom/android/tools/r8/internal/lI;->f:Ljava/util/Comparator;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/tools/r8/internal/gI;->b:Lcom/android/tools/r8/internal/lI;

    iget-object v0, v0, Lcom/android/tools/r8/internal/lI;->f:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
