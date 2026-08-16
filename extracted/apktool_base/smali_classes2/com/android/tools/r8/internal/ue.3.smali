.class public final Lcom/android/tools/r8/internal/ue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/ue;->a:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lcom/android/tools/r8/internal/te;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/ue;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/o50;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/ue;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/te;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/tools/r8/internal/we;->a()Lcom/android/tools/r8/internal/t40;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/te;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IR after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p5, p6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/nJ;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/o50;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2, p5}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
