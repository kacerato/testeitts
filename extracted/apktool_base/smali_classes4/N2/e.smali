.class public final LN2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN2/a;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:LM2/a$b;

.field public final c:Ln1/a;

.field public final d:LN2/d;


# direct methods
.method public constructor <init>(Ln1/a;LM2/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LN2/e;->b:LM2/a$b;

    iput-object p1, p0, LN2/e;->c:Ln1/a;

    new-instance p2, LN2/d;

    invoke-direct {p2, p0}, LN2/d;-><init>(LN2/e;)V

    iput-object p2, p0, LN2/e;->d:LN2/d;

    invoke-virtual {p1, p2}, Ln1/a;->s(Ln1/a$c;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LN2/e;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final N1()LM2/a$b;
    .locals 1

    iget-object v0, p0, LN2/e;->b:LM2/a$b;

    return-object v0
.end method

.method public final P1()V
    .locals 1

    iget-object v0, p0, LN2/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 9

    iget-object v0, p0, LN2/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_1

    goto/16 :goto_4

    :cond_1
    sget v3, LN2/c;->g:I

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    const/16 v6, 0x5f

    if-nez v5, :cond_5

    if-eq v4, v6, :cond_4

    goto :goto_0

    :cond_4
    move v4, v6

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    :goto_1
    if-ge v4, v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-eq v7, v6, :cond_6

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    :goto_2
    if-ge v3, v4, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    if-eq v5, v6, :cond_8

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_8
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    :cond_9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/a4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    move-object v2, v3

    :goto_3
    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    :goto_4
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final synthetic b()LM2/a$b;
    .locals 1

    iget-object v0, p0, LN2/e;->b:LM2/a$b;

    return-object v0
.end method
