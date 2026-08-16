.class public final Lcom/android/tools/r8/naming/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/h;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/android/tools/r8/naming/E0;

.field public final d:Lcom/android/tools/r8/internal/nC;

.field public final e:Lcom/android/tools/r8/internal/nC;

.field public final f:Lcom/android/tools/r8/internal/nC;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/E0;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/j;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/naming/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/naming/j;->c:Lcom/android/tools/r8/naming/E0;

    invoke-static {p4}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/j;->d:Lcom/android/tools/r8/internal/nC;

    invoke-static {p5}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/j;->e:Lcom/android/tools/r8/internal/nC;

    invoke-static {p6}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/j;->f:Lcom/android/tools/r8/internal/nC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/V$c;)Lcom/android/tools/r8/naming/V;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/naming/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/naming/j;

    iget-object v1, p0, Lcom/android/tools/r8/naming/j;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/naming/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/j;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/naming/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/j;->d:Lcom/android/tools/r8/internal/nC;

    iget-object v3, p1, Lcom/android/tools/r8/naming/j;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/nC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/j;->e:Lcom/android/tools/r8/internal/nC;

    iget-object v3, p1, Lcom/android/tools/r8/naming/j;->e:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/nC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/j;->f:Lcom/android/tools/r8/internal/nC;

    iget-object p1, p1, Lcom/android/tools/r8/naming/j;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/naming/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/naming/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/naming/j;->d:Lcom/android/tools/r8/internal/nC;

    iget-object v3, p0, Lcom/android/tools/r8/naming/j;->e:Lcom/android/tools/r8/internal/nC;

    iget-object v4, p0, Lcom/android/tools/r8/naming/j;->f:Lcom/android/tools/r8/internal/nC;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
