.class public Lb9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:LAc/b;

.field public d:LAc/b;

.field public e:[LAc/b;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LAc/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb9/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lb9/d;->b:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lb9/d;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lb9/d;->a:Ljava/lang/String;

    invoke-static {v0}, LX7/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v2, LAc/b;

    invoke-direct {v2, v0}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lb9/d;->c:LAc/b;

    iget-object v0, p0, Lb9/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lb9/d;->c:LAc/b;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LAc/b;->g0()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lb9/d;->c:LAc/b;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, LAc/b;->B0(Ljava/lang/String;)[LAc/b;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "-- Menu:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb9/d;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {v4}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "public "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lb9/d;->f:Ljava/util/List;

    new-instance v6, LAc/b;

    invoke-direct {v6, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iput-object v0, p0, Lb9/d;->e:[LAc/b;

    new-instance v0, LAc/b;

    iget-object v1, p0, Lb9/d;->c:LAc/b;

    invoke-virtual {v1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lb9/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb9/d;->d:LAc/b;

    goto :goto_4

    :cond_5
    new-instance v0, LAc/b;

    invoke-direct {v0}, LAc/b;-><init>()V

    iput-object v0, p0, Lb9/d;->d:LAc/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lb9/d;->e:[LAc/b;

    :goto_4
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()LAc/b;
    .locals 1

    iget-object v0, p0, Lb9/d;->c:LAc/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LAc/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb9/d;->f:Ljava/util/List;

    return-object v0
.end method

.method public f()LAc/b;
    .locals 1

    iget-object v0, p0, Lb9/d;->d:LAc/b;

    return-object v0
.end method

.method public g()[LAc/b;
    .locals 1

    iget-object v0, p0, Lb9/d;->e:[LAc/b;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const-string v0, "(?i)\\bpublic\\b(?=(?:[^\"\\\\]*\"[^\"\\\\]*\")*[^\"\\\\]*$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    iput-object p1, p0, Lb9/d;->b:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    iput-object p1, p0, Lb9/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lb9/d;->a()V

    return-void
.end method
