.class public Lcom/android/tools/r8/internal/hb0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/hb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/kb0;

.field public final b:Lcom/android/tools/r8/internal/kb0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/kb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kb0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hb0$a;->a:Lcom/android/tools/r8/internal/kb0;

    new-instance v0, Lcom/android/tools/r8/internal/kb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kb0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hb0$a;->b:Lcom/android/tools/r8/internal/kb0;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/android/tools/r8/internal/jb0;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/hb0$a;->c:Z

    if-nez v0, :cond_1

    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    const-string v0, "L**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lcom/android/tools/r8/internal/f2;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/f2;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "L*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lcom/android/tools/r8/internal/Hv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Hv0;-><init>()V

    return-object p0

    :cond_5
    const-string v0, "/**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/tools/r8/internal/h50;

    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/h50;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string v0, "/*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/tools/r8/internal/l50;

    invoke-static {p0, v2, v1}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/l50;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_7
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/tools/r8/internal/Ed;

    invoke-static {p0, v2, v1}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ed;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/xd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/xd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/tools/r8/internal/hb0$a;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb0$a;->b:Lcom/android/tools/r8/internal/kb0;

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/hb0$a;->c(Ljava/lang/String;)Lcom/android/tools/r8/internal/jb0;

    move-result-object p1

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hb0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/android/tools/r8/internal/hb0$a;"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb0$a;->b:Lcom/android/tools/r8/internal/kb0;

    new-instance v2, Lcom/android/tools/r8/internal/xd;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/xd;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v0, v1, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs a([Ljava/lang/Class;)Lcom/android/tools/r8/internal/hb0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/tools/r8/internal/hb0$a;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hb0$a;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hb0$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/internal/hb0;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/hb0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hb0$a;->a:Lcom/android/tools/r8/internal/kb0;

    .line 2
    iget-object v1, v1, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/hb0$a;->a:Lcom/android/tools/r8/internal/kb0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/hb0$a;->b:Lcom/android/tools/r8/internal/kb0;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/hb0;-><init>(ZLcom/android/tools/r8/internal/kb0;Lcom/android/tools/r8/internal/kb0;)V

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/internal/hb0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb0$a;->a:Lcom/android/tools/r8/internal/kb0;

    new-instance v1, Lcom/android/tools/r8/internal/f2;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/f2;-><init>()V

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/android/tools/r8/internal/hb0$a;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/hb0$a;->a:Lcom/android/tools/r8/internal/kb0;

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/hb0$a;->c(Ljava/lang/String;)Lcom/android/tools/r8/internal/jb0;

    move-result-object p1

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hb0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/android/tools/r8/internal/hb0$a;"
        }
    .end annotation

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/hb0$a;->a:Lcom/android/tools/r8/internal/kb0;

    new-instance v2, Lcom/android/tools/r8/internal/xd;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/xd;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v0, v1, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs b([Ljava/lang/Class;)Lcom/android/tools/r8/internal/hb0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/tools/r8/internal/hb0$a;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hb0$a;->b(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hb0$a;

    move-result-object p1

    return-object p1
.end method
