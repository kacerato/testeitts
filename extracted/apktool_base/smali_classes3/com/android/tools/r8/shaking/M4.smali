.class public final Lcom/android/tools/r8/shaking/M4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/vX;


# instance fields
.field public a:Lcom/android/tools/r8/shaking/M4;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    sput-object v0, Lcom/android/tools/r8/shaking/M4;->c:Lcom/android/tools/r8/internal/vX;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/M4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/M4;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/M4;->a:Lcom/android/tools/r8/shaking/M4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/j1;)I
    .locals 7

    .line 3
    sget-object v0, Lcom/android/tools/r8/shaking/M4;->c:Lcom/android/tools/r8/internal/vX;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/shaking/M4;->a(Lcom/android/tools/r8/internal/fv;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/M4;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    return p1

    .line 7
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    iget-object v3, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v5

    .line 11
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v6

    if-le v5, v6, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v3

    if-ne v5, v3, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/M4;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fv;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/M4;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/M4;->a:Lcom/android/tools/r8/shaking/M4;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/M4;->a(Lcom/android/tools/r8/internal/fv;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
