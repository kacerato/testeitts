.class public abstract Lcom/android/tools/r8/internal/ja0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/tools/r8/internal/Wy;->a:Lcom/android/tools/r8/internal/Ty;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/lW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Um0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
