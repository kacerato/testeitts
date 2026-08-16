.class public final Lcom/android/tools/r8/internal/ig0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/EnumMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ig0;->a:Ljava/util/LinkedHashMap;

    const-string v0, "initialArraySize"

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/android/tools/r8/internal/lg0;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ig0;->c:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ig0;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ig0;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ig0;->g:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/ig0;->h:Z

    return-void
.end method

.method public static final a(Lcom/android/tools/r8/internal/ig0;Ljava/lang/String;)Lcom/android/tools/r8/internal/nl0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/mg0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mg0;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/mg0;->d:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/ig0;->c:Ljava/util/EnumMap;

    iget-object v0, p1, Lcom/android/tools/r8/internal/mg0;->b:Lcom/android/tools/r8/internal/lg0;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/wS;

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/tools/r8/internal/Xt;->a:Lcom/android/tools/r8/internal/Xt;

    return-object p0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    const-string v1, "url.name"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "*"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "?"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/oS;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/oS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V

    .line 8
    new-instance p0, Lcom/android/tools/r8/internal/hf;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    return-object p0

    .line 9
    :cond_2
    :try_start_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/Cj0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/jl0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "globToRegexp(resourceNameToFieldName(url.name))"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/tools/r8/internal/Ie0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ie0;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/S0;->b:Ljava/util/Collection;

    if-nez p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wS;->g()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/S0;->b:Ljava/util/Collection;

    .line 12
    :cond_3
    check-cast p1, Ljava/util/List;

    .line 13
    new-instance p0, Lcom/android/tools/r8/internal/hf;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/cg0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/cg0;-><init>(Lcom/android/tools/r8/internal/Ie0;)V

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/cx;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    .line 16
    sget-object p0, Lcom/android/tools/r8/internal/dg0;->b:Lcom/android/tools/r8/internal/dg0;

    .line 17
    new-instance p1, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {p1, v0, p0}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 18
    :catch_0
    sget-object p0, Lcom/android/tools/r8/internal/Xt;->a:Lcom/android/tools/r8/internal/Xt;

    return-object p0

    .line 19
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/Xt;->a:Lcom/android/tools/r8/internal/Xt;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ng0;)Lcom/android/tools/r8/internal/ng0;
    .locals 4

    .line 40
    new-instance v0, Lcom/android/tools/r8/internal/Rf0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/ng0;->c:Lcom/android/tools/r8/internal/lg0;

    iget-object v2, p1, Lcom/android/tools/r8/internal/ng0;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ng0;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Rf0;-><init>(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/internal/ig0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ng0;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/android/tools/r8/internal/ig0;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/ig0;->c:Ljava/util/EnumMap;

    iget-object v1, p1, Lcom/android/tools/r8/internal/ng0;->c:Lcom/android/tools/r8/internal/lg0;

    sget-object v3, Lcom/android/tools/r8/internal/Xf0;->b:Lcom/android/tools/r8/internal/Xf0;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/wS;

    .line 45
    iget-object v1, p1, Lcom/android/tools/r8/internal/ng0;->d:Ljava/lang/String;

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v1, p1, v3}, Lcom/android/tools/r8/internal/wS;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/tS;)Lcom/android/tools/r8/internal/tS;

    .line 47
    iget v0, p1, Lcom/android/tools/r8/internal/ng0;->f:I

    if-eq v0, v2, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1

    .line 49
    :cond_1
    iget p1, p1, Lcom/android/tools/r8/internal/ng0;->f:I

    const/4 v0, 0x0

    if-eq p1, v2, :cond_3

    iget v3, v1, Lcom/android/tools/r8/internal/ng0;->f:I

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 50
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    if-eqz v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 51
    iget v0, v1, Lcom/android/tools/r8/internal/ng0;->f:I

    if-ne v0, v2, :cond_4

    .line 52
    iput p1, v1, Lcom/android/tools/r8/internal/ng0;->f:I

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1

    .line 54
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Resource value must be the same between addResource calls."

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [Lcom/android/tools/r8/internal/ny;

    sget-object v2, Lcom/android/tools/r8/internal/Yf0;->b:Lcom/android/tools/r8/internal/Yf0;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/tools/r8/internal/Zf0;->b:Lcom/android/tools/r8/internal/Zf0;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/android/tools/r8/internal/zf;->a([Lcom/android/tools/r8/internal/ny;)Ljava/util/Comparator;

    move-result-object v0

    const-string v2, "comparator"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v2, Lcom/android/tools/r8/internal/vl0;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/vl0;-><init>(Lcom/android/tools/r8/internal/hf;Ljava/util/Comparator;)V

    .line 59
    sget-object v0, Lcom/android/tools/r8/internal/bg0;->b:Lcom/android/tools/r8/internal/bg0;

    .line 60
    new-instance v1, Lcom/android/tools/r8/internal/Ax;

    sget-object v5, Lcom/android/tools/r8/internal/ul0;->h:Lcom/android/tools/r8/internal/ul0;

    invoke-direct {v1, v2, v0, v5}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 63
    new-instance v2, Lcom/android/tools/r8/internal/zx;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/zx;-><init>(Lcom/android/tools/r8/internal/Ax;)V

    .line 64
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zx;->hasNext()Z

    move-result v1

    const-string v5, "\n"

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zx;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/2addr v3, v4

    if-le v3, v4, :cond_0

    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    if-nez v1, :cond_1

    move v5, v4

    goto :goto_1

    .line 66
    :cond_1
    instance-of v5, v1, Ljava/lang/CharSequence;

    :goto_1
    if-eqz v5, :cond_2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 67
    :cond_2
    instance-of v5, v1, Ljava/lang/Character;

    if-eqz v5, :cond_3

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/ig0;->c:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/wS;

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    return-object p1

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/Cj0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/oS;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/oS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V

    .line 23
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ze;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const-string v0, "webUrl"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 24
    const-string v1, "android_res/"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0xc

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :goto_0
    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/internal/Iq0;->b(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 28
    sget-object p1, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    return-object p1

    .line 29
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 30
    invoke-static {v0}, Lcom/android/tools/r8/internal/Qf0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Qf0;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    return-object p1

    :cond_2
    const/16 v1, 0x2e

    .line 31
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Iq0;->c(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 32
    sget-object v1, Lcom/android/tools/r8/internal/Wx;->b:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 33
    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 34
    :goto_1
    const-string v1, "getRelatedResourceTypes(folderType)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/tools/r8/internal/lg0;

    .line 38
    const-string v3, "it"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/ig0;->f:Ljava/util/ArrayList;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    new-instance v0, Lcom/android/tools/r8/internal/eg0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/eg0;-><init>(Lcom/android/tools/r8/internal/ig0;)V

    new-instance v3, Lcom/android/tools/r8/internal/Ax;

    sget-object v4, Lcom/android/tools/r8/internal/ul0;->h:Lcom/android/tools/r8/internal/ul0;

    invoke-direct {v3, v2, v0, v4}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    new-instance v0, Lcom/android/tools/r8/internal/fg0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/fg0;-><init>(Lcom/android/tools/r8/internal/ig0;)V

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/pl0;->a(Lcom/android/tools/r8/internal/Ax;Lcom/android/tools/r8/internal/ny;)Lcom/android/tools/r8/internal/Rs0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/pl0;->d(Lcom/android/tools/r8/internal/nl0;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/ig0;->g:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    new-instance v2, Lcom/android/tools/r8/internal/gg0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/gg0;-><init>(Lcom/android/tools/r8/internal/ig0;)V

    new-instance v3, Lcom/android/tools/r8/internal/Ax;

    invoke-direct {v3, v1, v2, v4}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    sget-object v1, Lcom/android/tools/r8/internal/hg0;->b:Lcom/android/tools/r8/internal/hg0;

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/pl0;->a(Lcom/android/tools/r8/internal/Ax;Lcom/android/tools/r8/internal/ny;)Lcom/android/tools/r8/internal/Rs0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/pl0;->d(Lcom/android/tools/r8/internal/nl0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ze;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method
