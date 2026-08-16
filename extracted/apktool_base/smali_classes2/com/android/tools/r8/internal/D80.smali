.class public final Lcom/android/tools/r8/internal/D80;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Tf0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Tf0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/D80;->b:Lcom/android/tools/r8/internal/Tf0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/hf;
    .locals 3

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/Zh0;->c:I

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/D80;->b:Lcom/android/tools/r8/internal/Tf0;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "singletonList(...)"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/D80;->b:Lcom/android/tools/r8/internal/Tf0;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zh0;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const-string v1, "possibleUrlReference"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/android/tools/r8/internal/mg0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mg0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    iget-object v1, p1, Lcom/android/tools/r8/internal/mg0;->d:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/mg0;->b:Lcom/android/tools/r8/internal/lg0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/mg0;->c:Ljava/lang/String;

    const-string v2, "url.name"

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    .line 16
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/Zh0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D80;->a(Lcom/android/tools/r8/internal/Zh0;)Lcom/android/tools/r8/internal/hf;

    move-result-object p1

    return-object p1
.end method
