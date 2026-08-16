.class public final Lcom/android/tools/r8/internal/fP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/fP;

.field public static final d:Lcom/android/tools/r8/internal/fP;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/fP;

    sget-object v1, Lcom/android/tools/r8/internal/dP;->b:Lcom/android/tools/r8/internal/dP;

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/fP;-><init>(Lcom/android/tools/r8/internal/hC;Z)V

    sput-object v0, Lcom/android/tools/r8/internal/fP;->c:Lcom/android/tools/r8/internal/fP;

    new-instance v0, Lcom/android/tools/r8/internal/fP;

    const-string v1, ""

    invoke-static {v1}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/dP;->a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/dP;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/fP;-><init>(Lcom/android/tools/r8/internal/hC;Z)V

    sput-object v0, Lcom/android/tools/r8/internal/fP;->d:Lcom/android/tools/r8/internal/fP;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/fP;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Ea1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ea1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-boolean p2, p0, Lcom/android/tools/r8/internal/fP;->a:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/fP;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/internal/fP;->d:Lcom/android/tools/r8/internal/fP;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/eP;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eP;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "\'"

    if-ge v2, v0, :cond_3

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    if-eq v3, v2, :cond_1

    .line 6
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/dP;->a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/dP;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/eP;->a(Lcom/android/tools/r8/internal/dP;)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eq v3, v0, :cond_4

    .line 10
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/dP;->a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/dP;

    move-result-object p0

    .line 12
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/eP;->a(Lcom/android/tools/r8/internal/dP;)V

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eP;->a()Lcom/android/tools/r8/internal/fP;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package string: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 15
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fP;->a:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string v0, ""

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/dP;

    if-lez v1, :cond_1

    const/16 v3, 0x2e

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dP;->a()Lcom/android/tools/r8/internal/vP;

    move-result-object v2

    .line 23
    iget-object v2, v2, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 26
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Invalid attempt to get exact from inexact package pattern"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dP;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dP;->c()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dP;->a()Lcom/android/tools/r8/internal/vP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/fP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/fP;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/fP;->a:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/fP;->a:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/hC;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fP;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/fP;->b:Lcom/android/tools/r8/internal/hC;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
