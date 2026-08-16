.class public final Lcom/android/tools/r8/internal/Jn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/N8;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/N8;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jn;->b:Lcom/android/tools/r8/internal/N8;

    iput p2, p0, Lcom/android/tools/r8/internal/Jn;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/Jn;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Jn;)I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Jn;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/Jn;->c:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/Jn;

    iget v0, p0, Lcom/android/tools/r8/internal/Jn;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/Jn;->c:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
