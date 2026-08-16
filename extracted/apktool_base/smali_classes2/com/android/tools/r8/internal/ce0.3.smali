.class public final Lcom/android/tools/r8/internal/ce0;
.super Lcom/android/tools/r8/internal/Fj0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/By;


# instance fields
.field public c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/internal/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ce0;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Fj0;-><init>(Lcom/android/tools/r8/internal/fi;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ol0;Lcom/android/tools/r8/internal/ol0;)Lcom/android/tools/r8/internal/fi;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ce0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ce0;->f:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/ce0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/fi;)V

    iput-object p1, v0, Lcom/android/tools/r8/internal/ce0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/ol0;

    check-cast p2, Lcom/android/tools/r8/internal/fi;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ce0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ce0;->f:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/ce0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/fi;)V

    iput-object p1, v0, Lcom/android/tools/r8/internal/ce0;->e:Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ce0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/android/tools/r8/internal/ji;->b:Lcom/android/tools/r8/internal/ji;

    iget v1, p0, Lcom/android/tools/r8/internal/ce0;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/tools/r8/internal/ce0;->c:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/ce0;->e:Ljava/lang/Object;

    check-cast v3, Lcom/android/tools/r8/internal/ol0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Hj0;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Hj0;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/ce0;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/android/tools/r8/internal/ol0;

    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/ce0;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v1, p1, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/internal/ce0;->f:Ljava/lang/String;

    const-string v4, "android_res/"

    const/4 v5, 0x4

    invoke-static {p1, v4, v1, v5}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0xc

    move v1, p1

    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/ce0;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/tools/r8/internal/ce0;->f:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/ce0;->f:Ljava/lang/String;

    invoke-virtual {v4, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "substring(...)"

    invoke-static {p1, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/tools/r8/internal/ce0;->e:Ljava/lang/Object;

    iput v1, p0, Lcom/android/tools/r8/internal/ce0;->c:I

    iput v2, p0, Lcom/android/tools/r8/internal/ce0;->d:I

    iput-object p1, v3, Lcom/android/tools/r8/internal/ol0;->c:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v3, Lcom/android/tools/r8/internal/ol0;->b:I

    iput-object p0, v3, Lcom/android/tools/r8/internal/ol0;->d:Lcom/android/tools/r8/internal/fi;

    return-object v0

    :cond_4
    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    return-object p1
.end method
