.class public final Lcom/android/tools/r8/internal/b60;
.super Lcom/android/tools/r8/internal/e60;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/MN;Ljava/util/HashSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/e60;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/b60;->e:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/b60;->d:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "-keepattributes"

    return-object v0
.end method

.method public final b(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/e60;->a:Lcom/android/tools/r8/internal/MN;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/IN;->a:Lcom/android/tools/r8/internal/IN;

    .line 3
    iget-object v2, v0, Lcom/android/tools/r8/internal/MN;->b:Lcom/android/tools/r8/internal/IN;

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-string v1, "# context: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/internal/MN;->b:Lcom/android/tools/r8/internal/IN;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IN;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/JN;->b:Lcom/android/tools/r8/internal/JN;

    .line 8
    iget-object v2, v0, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/JN;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/MN;->c:Lcom/android/tools/r8/internal/JN;

    iget-object v0, v0, Lcom/android/tools/r8/internal/JN;->a:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/android/tools/r8/internal/Nk0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    const-string v1, "# description: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    const-string v0, "-keepattributes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/b60;->d:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/x51;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/x51;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/KM;

    .line 16
    iget-object v1, v1, Lcom/android/tools/r8/internal/KM;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 18
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2c

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/KM;

    .line 20
    iget-object v2, v2, Lcom/android/tools/r8/internal/KM;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V
    .locals 0

    .line 23
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final c(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
