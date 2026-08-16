.class public abstract synthetic Lcom/android/tools/r8/internal/Ig;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Lcom/android/tools/r8/internal/Cl;I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
