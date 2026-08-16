.class public Lcom/android/tools/r8/internal/vf;
.super Lcom/android/tools/r8/internal/tf;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/function/ToIntFunction;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/ToIntFunction;Ljava/util/function/ToIntFunction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/tf;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/ToIntFunction;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/vf;->d:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vf;->d:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vf;->d:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
