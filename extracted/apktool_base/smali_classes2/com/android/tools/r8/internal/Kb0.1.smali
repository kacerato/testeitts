.class public final Lcom/android/tools/r8/internal/Kb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/VL;

.field public final b:Lcom/android/tools/r8/internal/Bu0;

.field public final c:Lcom/android/tools/r8/internal/Zw0;

.field public final d:Z

.field public final e:Lcom/android/tools/r8/internal/Kb0;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/VL;Lcom/android/tools/r8/internal/Bu0;Lcom/android/tools/r8/internal/Zw0;ZLcom/android/tools/r8/internal/Kb0;Ljava/util/List;)V
    .locals 1

    const-string v0, "strings"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirements"

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextExtensions"

    invoke-static {p6, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/internal/Kb0;->c:Lcom/android/tools/r8/internal/Zw0;

    .line 5
    iput-boolean p4, p0, Lcom/android/tools/r8/internal/Kb0;->d:Z

    .line 6
    iput-object p5, p0, Lcom/android/tools/r8/internal/Kb0;->e:Lcom/android/tools/r8/internal/Kb0;

    .line 7
    iput-object p6, p0, Lcom/android/tools/r8/internal/Kb0;->f:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kb0;->g:Ljava/util/LinkedHashMap;

    .line 9
    sget-object p1, Lcom/android/tools/r8/internal/yW;->a:Lcom/android/tools/r8/internal/xW;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object p1, Lcom/android/tools/r8/internal/xW;->b:Lcom/android/tools/r8/internal/kr0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/VL;Lcom/android/tools/r8/internal/Bu0;Lcom/android/tools/r8/internal/Zw0;ZLjava/util/List;I)V
    .locals 7

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_0

    .line 12
    sget-object p5, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    :cond_0
    move-object v6, p5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Kb0;-><init>(Lcom/android/tools/r8/internal/VL;Lcom/android/tools/r8/internal/Bu0;Lcom/android/tools/r8/internal/Zw0;ZLcom/android/tools/r8/internal/Kb0;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/android/tools/r8/internal/Kb0;
    .locals 8

    const-string v0, "typeParameters"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Kb0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Kb0;->c:Lcom/android/tools/r8/internal/Zw0;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/Kb0;->d:Z

    iget-object v7, p0, Lcom/android/tools/r8/internal/Kb0;->f:Ljava/util/List;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/Kb0;-><init>(Lcom/android/tools/r8/internal/VL;Lcom/android/tools/r8/internal/Bu0;Lcom/android/tools/r8/internal/Zw0;ZLcom/android/tools/r8/internal/Kb0;Ljava/util/List;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/T90;

    .line 4
    iget-object v2, v0, Lcom/android/tools/r8/internal/Kb0;->g:Ljava/util/LinkedHashMap;

    .line 5
    iget v3, v1, Lcom/android/tools/r8/internal/T90;->f:I

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    iget v1, v1, Lcom/android/tools/r8/internal/T90;->e:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(I)Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kb0;->g:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kb0;->e:Lcom/android/tools/r8/internal/Kb0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Kb0;->a(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method
