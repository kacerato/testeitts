.class public final Lcom/android/tools/r8/internal/Bx0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/qe0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/qe0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bx0;->a:Lcom/android/tools/r8/internal/qe0;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "script"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    const-string p3, "</script>"

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p3

    if-eq p3, v1, :cond_1

    .line 3
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Bx0;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    const-string v0, "style"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    const-string p3, "</style>"

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p3

    if-eq p3, v1, :cond_1

    .line 7
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Bx0;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v5, v1

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_f

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    move v4, v2

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v6, 0x2

    if-eq v5, v1, :cond_5

    if-eq v5, v6, :cond_2

    .line 15
    sget-boolean v2, Lcom/android/tools/r8/internal/Bx0;->b:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v5}, Ljava/lang/AssertionError;-><init>(I)V

    throw p1

    :cond_2
    const/16 v6, 0x2a

    if-ne v2, v6, :cond_4

    add-int/lit8 v2, v4, 0x1

    .line 16
    const-string v6, "*/"

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v5, v1

    goto :goto_0

    :cond_5
    const/16 v7, 0x2f

    if-ne v2, v7, :cond_6

    move v5, v6

    goto/16 :goto_3

    :cond_6
    const/16 v6, 0x75

    if-ne v2, v6, :cond_e

    .line 17
    const-string v2, "url("

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    if-lez v4, :cond_e

    add-int/lit8 v2, v4, -0x1

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_7

    const/16 v6, 0x3a

    if-ne v2, v6, :cond_e

    :cond_7
    const/16 v2, 0x29

    .line 20
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v6, v4, 0x4

    :goto_1
    if-ge v6, v0, :cond_8

    .line 21
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-eq v2, v3, :cond_d

    add-int/lit8 v7, v6, 0x1

    if-le v2, v7, :cond_d

    :goto_2
    if-le v2, v6, :cond_9

    add-int/lit8 v8, v2, -0x1

    .line 22
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 23
    :cond_9
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_a

    add-int/lit8 v8, v2, -0x1

    .line 24
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_b

    .line 25
    :cond_a
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_c

    add-int/lit8 v8, v2, -0x1

    .line 26
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_c

    :cond_b
    add-int/lit8 v2, v2, -0x1

    move v6, v7

    .line 27
    :cond_c
    iget-object v7, p0, Lcom/android/tools/r8/internal/Bx0;->a:Lcom/android/tools/r8/internal/qe0;

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 28
    const-string v8, "url"

    invoke-static {v6, v8}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/qe0;->b(Ljava/lang/String;)V

    :cond_d
    add-int/2addr v2, v1

    goto/16 :goto_0

    :cond_e
    :goto_3
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_0

    :cond_f
    :goto_4
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bx0;->a:Lcom/android/tools/r8/internal/qe0;

    .line 10
    const-string v1, "value"

    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v1, "href"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "src"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/qe0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v6, v1

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v2, v0, :cond_b

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    move v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x2f

    const/16 v8, 0x22

    const/4 v9, 0x3

    const/16 v10, 0x5c

    const-string v11, "jsString"

    const/16 v12, 0x27

    const/4 v13, 0x5

    packed-switch v6, :pswitch_data_0

    sget-boolean v2, Lcom/android/tools/r8/internal/Bx0;->b:Z

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v6}, Ljava/lang/AssertionError;-><init>(I)V

    throw p1

    :pswitch_0
    add-int/lit8 v2, v5, 0x1

    move v6, v13

    goto :goto_0

    :pswitch_1
    if-ne v2, v12, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Bx0;->a:Lcom/android/tools/r8/internal/qe0;

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/qe0;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne v2, v10, :cond_a

    const/4 v2, 0x6

    :goto_1
    move v6, v2

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 v2, v5, 0x1

    move v6, v9

    goto :goto_0

    :pswitch_3
    if-ne v2, v8, :cond_3

    iget-object v2, p0, Lcom/android/tools/r8/internal/Bx0;->a:Lcom/android/tools/r8/internal/qe0;

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/qe0;->a(Ljava/lang/String;)V

    :goto_2
    move v6, v1

    goto :goto_5

    :cond_3
    if-ne v2, v10, :cond_a

    const/4 v2, 0x4

    goto :goto_1

    :pswitch_4
    const/16 v6, 0x2a

    if-ne v2, v6, :cond_5

    add-int/lit8 v2, v5, 0x1

    const-string v6, "*/"

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x2

    :goto_3
    move v6, v1

    goto :goto_0

    :cond_5
    if-ne v2, v7, :cond_7

    add-int/lit8 v2, v5, 0x1

    const/16 v6, 0xa

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v3, :cond_6

    :goto_4
    move v2, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v5, 0x1

    goto :goto_3

    :pswitch_5
    if-ne v2, v7, :cond_8

    const/4 v2, 0x2

    goto :goto_1

    :cond_8
    if-ne v2, v8, :cond_9

    add-int/lit8 v2, v5, 0x1

    move v4, v2

    move v6, v9

    goto :goto_5

    :cond_9
    if-ne v2, v12, :cond_a

    add-int/lit8 v2, v5, 0x1

    move v4, v2

    move v6, v13

    :cond_a
    :goto_5
    add-int/lit8 v2, v5, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
