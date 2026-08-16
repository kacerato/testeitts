.class public LXg/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LXg/v$f;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Ljava/util/logging/Level;


# instance fields
.field public final a:LXg/v$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXg/v$f<",
            "-",
            "LXg/A;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LXg/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LXg/v;->b:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, LXg/v;->c:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxNumVertices"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LXg/v$a;

    invoke-direct {v0, p0, p1}, LXg/v$a;-><init>(LXg/v;I)V

    iput-object v0, p0, LXg/v;->a:LXg/v$f;

    return-void
.end method

.method public static synthetic a(LXg/A;LXg/q;I)F
    .locals 0

    invoke-static {p0, p1, p2}, LXg/v;->d(LXg/A;LXg/q;I)F

    move-result p0

    return p0
.end method

.method public static b([F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method public static c(Ljava/util/List;)LXg/t;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "faces"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LXg/q;",
            ">;)",
            "LXg/t;"
        }
    .end annotation

    new-instance v0, LXg/v$b;

    invoke-direct {v0, p0}, LXg/v$b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static d(LXg/A;LXg/q;I)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "face",
            "component"
        }
    .end annotation

    invoke-interface {p1}, LXg/q;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, LXg/q;->f(I)I

    move-result v3

    invoke-interface {p0, v3}, LXg/A;->n(I)LXg/i;

    move-result-object v3

    invoke-interface {v3, p2}, LXg/i;->get(I)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method public static e(LXg/A;I)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "component"
        }
    .end annotation

    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, LXg/A;->b(I)LXg/q;

    move-result-object v3

    invoke-static {p0, v3, p1}, LXg/v;->d(LXg/A;LXg/q;I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static f(LXg/A;)LXg/v$f;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXg/A;",
            ")",
            "LXg/v$f<",
            "LXg/q;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LXg/v;->e(LXg/A;I)[F

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, LXg/v;->e(LXg/A;I)[F

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v2}, LXg/v;->e(LXg/A;I)[F

    move-result-object v2

    invoke-static {v0}, LXg/v;->b([F)F

    move-result v3

    invoke-static {v1}, LXg/v;->b([F)F

    move-result v4

    invoke-static {v2}, LXg/v;->b([F)F

    move-result v5

    invoke-static {v0, v3}, LXg/v;->j([FF)F

    move-result v0

    invoke-static {v1, v4}, LXg/v;->j([FF)F

    move-result v1

    invoke-static {v2, v5}, LXg/v;->j([FF)F

    move-result v2

    cmpl-float v6, v0, v1

    if-ltz v6, :cond_0

    cmpl-float v6, v0, v2

    if-ltz v6, :cond_0

    new-instance v0, LXg/v$c;

    invoke-direct {v0, p0, v3}, LXg/v$c;-><init>(LXg/A;F)V

    return-object v0

    :cond_0
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    new-instance v0, LXg/v$d;

    invoke-direct {v0, p0, v4}, LXg/v$d;-><init>(LXg/A;F)V

    return-object v0

    :cond_1
    new-instance v0, LXg/v$e;

    invoke-direct {v0, p0, v5}, LXg/v$e;-><init>(LXg/A;F)V

    return-object v0
.end method

.method public static h(LXg/A;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "allFaces"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXg/A;",
            "Ljava/util/List<",
            "LXg/q;",
            ">;)",
            "Ljava/util/List<",
            "LXg/o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_0

    invoke-static {p1}, LXg/v;->c(Ljava/util/List;)LXg/t;

    move-result-object p1

    invoke-static {p0, p1, v3}, LXg/x;->g(LXg/A;LXg/t;Ljava/util/List;)LXg/o;

    move-result-object p0

    new-array p1, v4, [LXg/o;

    aput-object p0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    div-int/2addr v2, v0

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {v5}, LXg/v;->c(Ljava/util/List;)LXg/t;

    move-result-object v2

    invoke-static {p0, v2, v3}, LXg/x;->g(LXg/A;LXg/t;Ljava/util/List;)LXg/o;

    move-result-object v2

    invoke-static {p1}, LXg/v;->c(Ljava/util/List;)LXg/t;

    move-result-object p1

    invoke-static {p0, p1, v3}, LXg/x;->g(LXg/A;LXg/t;Ljava/util/List;)LXg/o;

    move-result-object p0

    new-array p1, v0, [LXg/o;

    aput-object v2, p1, v1

    aput-object p0, p1, v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static i(LXg/A;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXg/A;",
            ")",
            "Ljava/util/List<",
            "LXg/o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    sget-object v1, LXg/v;->b:Ljava/util/logging/Logger;

    sget-object v2, LXg/v;->c:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Splitting OBJ with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vertices"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-static {p0}, LXg/v;->f(LXg/A;)LXg/v$f;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {p0, v5}, LXg/A;->b(I)LXg/q;

    move-result-object v6

    invoke-interface {v1, v6}, LXg/v$f;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v3}, LXg/v;->h(LXg/A;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, v2}, LXg/v;->h(LXg/A;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v1, LXg/v;->b:Ljava/util/logging/Logger;

    sget-object v5, LXg/v;->c:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split OBJ with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, LXg/A;->getNumFaces()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " faces into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " faces"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-static {v2}, LXg/v;->c(Ljava/util/List;)LXg/t;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, LXg/x;->g(LXg/A;LXg/t;Ljava/util/List;)LXg/o;

    move-result-object v1

    invoke-static {v3}, LXg/v;->c(Ljava/util/List;)LXg/t;

    move-result-object v3

    invoke-static {p0, v3, v2}, LXg/x;->g(LXg/A;LXg/t;Ljava/util/List;)LXg/o;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [LXg/o;

    aput-object v1, v2, v4

    aput-object p0, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static j([FF)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "mean"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    sub-float/2addr v2, p1

    float-to-double v2, v2

    float-to-double v4, v0

    mul-double/2addr v2, v2

    add-double/2addr v4, v2

    double-to-float v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public g(LXg/A;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXg/A;",
            ")",
            "Ljava/util/List<",
            "LXg/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LXg/v;->a:LXg/v$f;

    invoke-interface {v0, p1}, LXg/v$f;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LXg/z;->a()LXg/o;

    move-result-object v0

    invoke-static {p1, v0}, LXg/x;->b(LXg/A;LXg/o;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, LXg/v;->i(LXg/A;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LXg/o;

    iget-object v5, p0, LXg/v;->a:LXg/v$f;

    invoke-interface {v5, v4}, LXg/v$f;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, LXg/v;->i(LXg/A;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p1, v0

    move v0, v3

    goto :goto_0

    :cond_5
    return-object p1
.end method
