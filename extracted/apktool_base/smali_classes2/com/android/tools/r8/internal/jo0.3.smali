.class public final Lcom/android/tools/r8/internal/jo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/StackTraceLineParser;


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Ljava/util/regex/Pattern;

.field public final b:Lcom/android/tools/r8/internal/ho0;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/android/tools/r8/internal/io0;

.field public final e:Lcom/android/tools/r8/internal/Wn0;

.field public final f:Lcom/android/tools/r8/internal/go0;

.field public final g:Lcom/android/tools/r8/internal/bo0;

.field public final h:Lcom/android/tools/r8/internal/ao0;

.field public final i:Lcom/android/tools/r8/internal/co0;

.field public final j:Lcom/android/tools/r8/internal/do0;

.field public final k:Lcom/android/tools/r8/internal/Zn0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/ho0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ho0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->b:Lcom/android/tools/r8/internal/ho0;

    new-instance v0, Lcom/android/tools/r8/internal/io0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/io0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->d:Lcom/android/tools/r8/internal/io0;

    new-instance v0, Lcom/android/tools/r8/internal/Wn0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wn0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->e:Lcom/android/tools/r8/internal/Wn0;

    new-instance v0, Lcom/android/tools/r8/internal/go0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/go0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->f:Lcom/android/tools/r8/internal/go0;

    new-instance v0, Lcom/android/tools/r8/internal/bo0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bo0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->g:Lcom/android/tools/r8/internal/bo0;

    new-instance v0, Lcom/android/tools/r8/internal/ao0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ao0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->h:Lcom/android/tools/r8/internal/ao0;

    new-instance v0, Lcom/android/tools/r8/internal/co0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/co0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->i:Lcom/android/tools/r8/internal/co0;

    new-instance v0, Lcom/android/tools/r8/internal/do0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/do0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->j:Lcom/android/tools/r8/internal/do0;

    new-instance v0, Lcom/android/tools/r8/internal/Zn0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Zn0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->k:Lcom/android/tools/r8/internal/Zn0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jo0;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/jo0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/jo0;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a(C)Lcom/android/tools/r8/internal/eo0;
    .locals 3

    const/16 v0, 0x43

    if-eq p1, v0, :cond_8

    const/16 v0, 0x53

    if-eq p1, v0, :cond_7

    const/16 v0, 0x61

    if-eq p1, v0, :cond_6

    const/16 v0, 0x63

    if-eq p1, v0, :cond_5

    const/16 v0, 0x66

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x73

    if-eq p1, v0, :cond_1

    const/16 v0, 0x74

    if-ne p1, v0, :cond_0

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->h:Lcom/android/tools/r8/internal/ao0;

    return-object p1

    .line 18
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->f:Lcom/android/tools/r8/internal/go0;

    return-object p1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->j:Lcom/android/tools/r8/internal/do0;

    return-object p1

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->g:Lcom/android/tools/r8/internal/bo0;

    return-object p1

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->k:Lcom/android/tools/r8/internal/Zn0;

    return-object p1

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->d:Lcom/android/tools/r8/internal/io0;

    return-object p1

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->i:Lcom/android/tools/r8/internal/co0;

    return-object p1

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->b:Lcom/android/tools/r8/internal/ho0;

    return-object p1

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/jo0;->e:Lcom/android/tools/r8/internal/Wn0;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    if-eqz v3, :cond_2

    .line 2
    sget-boolean v3, Lcom/android/tools/r8/internal/jo0;->l:Z

    if-nez v3, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/jo0;->a(C)Lcom/android/tools/r8/internal/eo0;

    move-result-object v3

    add-int/lit8 v6, v1, -0x1

    .line 4
    invoke-virtual {p2, p1, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v5, 0x1

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureGroup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    const-string v6, "(?<"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v6, ">"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eo0;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v6, ")"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/eo0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/fo0;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v1, 0x1

    move v5, v2

    move v2, v3

    move v3, v0

    goto :goto_4

    :cond_2
    const/4 v3, 0x1

    if-nez v4, :cond_3

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    if-nez v4, :cond_4

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x5c

    if-ne v4, v7, :cond_4

    move v4, v3

    :goto_3
    move v3, v6

    goto :goto_4

    :cond_4
    move v4, v0

    goto :goto_3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 16
    invoke-virtual {p2, p1, v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final parse(Ljava/lang/String;)Lcom/android/tools/r8/internal/Vn0;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    sget-boolean v2, Lcom/android/tools/r8/internal/Vn0;->j:Z

    .line 3
    new-instance v2, Lcom/android/tools/r8/internal/Tn0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Tn0;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v3, v0, Lcom/android/tools/r8/internal/jo0;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, v0, Lcom/android/tools/r8/internal/jo0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :cond_0
    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/fo0;

    if-eqz v6, :cond_1

    .line 7
    invoke-interface {v7}, Lcom/android/tools/r8/internal/fo0;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v7, v2, v1}, Lcom/android/tools/r8/internal/fo0;->a(Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9
    invoke-interface {v7}, Lcom/android/tools/r8/internal/fo0;->a()Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/Vn0;

    iget-object v8, v2, Lcom/android/tools/r8/internal/Tn0;->a:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    iget-object v10, v2, Lcom/android/tools/r8/internal/Tn0;->c:Lcom/android/tools/r8/internal/Sn0;

    iget-object v11, v2, Lcom/android/tools/r8/internal/Tn0;->d:Lcom/android/tools/r8/internal/Un0;

    iget-object v12, v2, Lcom/android/tools/r8/internal/Tn0;->e:Lcom/android/tools/r8/internal/Un0;

    iget-object v13, v2, Lcom/android/tools/r8/internal/Tn0;->f:Lcom/android/tools/r8/internal/Un0;

    iget-object v14, v2, Lcom/android/tools/r8/internal/Tn0;->g:Lcom/android/tools/r8/internal/Un0;

    iget-object v15, v2, Lcom/android/tools/r8/internal/Tn0;->h:Lcom/android/tools/r8/internal/Un0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Tn0;->i:Lcom/android/tools/r8/internal/Un0;

    move-object v7, v1

    move-object/from16 v16, v2

    invoke-direct/range {v7 .. v16}, Lcom/android/tools/r8/internal/Vn0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Sn0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;)V

    return-object v1
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Lcom/android/tools/r8/retrace/StackTraceElementProxy;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/jo0;->parse(Ljava/lang/String;)Lcom/android/tools/r8/internal/Vn0;

    move-result-object p1

    return-object p1
.end method
