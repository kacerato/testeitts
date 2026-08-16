.class public Lcom/android/tools/r8/internal/tf;
.super Lcom/android/tools/r8/internal/sf;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/function/ToIntFunction;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/ToIntFunction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/sf;-><init>(Lcom/android/tools/r8/naming/r0;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/tf;->c:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/tf;->c:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tf;->c:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
