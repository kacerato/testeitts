.class public final Lcom/android/tools/r8/internal/yQ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006J\u0013\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010*\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0014\u00a8\u0006+"
    }
    d2 = {
        "Lkotlin/metadata/KmType;",
        "",
        "flags",
        "",
        "<init>",
        "(I)V",
        "()V",
        "getFlags$kotlin_metadata",
        "()I",
        "setFlags$kotlin_metadata",
        "classifier",
        "Lkotlin/metadata/KmClassifier;",
        "getClassifier",
        "()Lkotlin/metadata/KmClassifier;",
        "setClassifier",
        "(Lkotlin/metadata/KmClassifier;)V",
        "arguments",
        "",
        "Lkotlin/metadata/KmTypeProjection;",
        "getArguments",
        "()Ljava/util/List;",
        "abbreviatedType",
        "getAbbreviatedType",
        "()Lkotlin/metadata/KmType;",
        "setAbbreviatedType",
        "(Lkotlin/metadata/KmType;)V",
        "outerType",
        "getOuterType",
        "setOuterType",
        "flexibleTypeUpperBound",
        "Lkotlin/metadata/KmFlexibleTypeUpperBound;",
        "getFlexibleTypeUpperBound",
        "()Lkotlin/metadata/KmFlexibleTypeUpperBound;",
        "setFlexibleTypeUpperBound",
        "(Lkotlin/metadata/KmFlexibleTypeUpperBound;)V",
        "extensions",
        "",
        "Lkotlin/metadata/internal/extensions/KmTypeExtension;",
        "getExtensions$kotlin_metadata",
        "equals",
        "",
        "other",
        "hashCode",
        "kotlin-metadata"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/android/tools/r8/internal/cQ;

.field public final c:Ljava/util/ArrayList;

.field public d:Lcom/android/tools/r8/internal/yQ;

.field public e:Lcom/android/tools/r8/internal/yQ;

.field public f:Lcom/android/tools/r8/internal/oQ;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/yQ;->a:I

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yQ;->c:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/tools/r8/internal/yW;->a:Lcom/android/tools/r8/internal/xW;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/tools/r8/internal/xW;->b:Lcom/android/tools/r8/internal/kr0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/yW;

    check-cast v1, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/sM;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/sM;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/yQ;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/yQ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/yQ;->d:Lcom/android/tools/r8/internal/yQ;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/oQ;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/yQ;->f:Lcom/android/tools/r8/internal/oQ;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/yQ;->d:Lcom/android/tools/r8/internal/yQ;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/DQ;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/yQ;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/yQ;->e:Lcom/android/tools/r8/internal/yQ;

    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/cQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yQ;->b:Lcom/android/tools/r8/internal/cQ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "classifier"

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Lcom/android/tools/r8/internal/oQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yQ;->f:Lcom/android/tools/r8/internal/oQ;

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/yQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yQ;->e:Lcom/android/tools/r8/internal/yQ;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/android/tools/r8/internal/yQ;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlin.metadata.KmType"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/tools/r8/internal/yQ;

    iget v1, p0, Lcom/android/tools/r8/internal/yQ;->a:I

    iget v3, p1, Lcom/android/tools/r8/internal/yQ;->a:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yQ;->c()Lcom/android/tools/r8/internal/cQ;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yQ;->c()Lcom/android/tools/r8/internal/cQ;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/yQ;->c:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/tools/r8/internal/yQ;->c:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/yQ;->e:Lcom/android/tools/r8/internal/yQ;

    iget-object v3, p1, Lcom/android/tools/r8/internal/yQ;->e:Lcom/android/tools/r8/internal/yQ;

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/yQ;->d:Lcom/android/tools/r8/internal/yQ;

    iget-object v3, p1, Lcom/android/tools/r8/internal/yQ;->d:Lcom/android/tools/r8/internal/yQ;

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/yQ;->f:Lcom/android/tools/r8/internal/oQ;

    iget-object v3, p1, Lcom/android/tools/r8/internal/yQ;->f:Lcom/android/tools/r8/internal/oQ;

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/yQ;->g:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/tools/r8/internal/yQ;->g:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/yQ;->a:I

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yQ;->c()Lcom/android/tools/r8/internal/cQ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/internal/yQ;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
