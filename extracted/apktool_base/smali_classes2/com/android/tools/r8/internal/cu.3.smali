.class public final Lcom/android/tools/r8/internal/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/tn0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Yj;

.field public final b:Lcom/android/tools/r8/internal/Yj;

.field public final c:Lcom/android/tools/r8/internal/Yj;

.field public final d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    iput-object p3, p0, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    iput-object p4, p0, Lcom/android/tools/r8/internal/cu;->d:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/rY;)[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/internal/Yj;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/internal/Yj;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/internal/Yj;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/cu;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    filled-new-array {v0, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/cu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/cu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    iget-object v3, p1, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    iget-object v3, p1, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    iget-object v3, p1, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/cu;->d:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/internal/cu;->d:Ljava/util/LinkedHashMap;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/cu;->a:Lcom/android/tools/r8/internal/Yj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    iget-object v2, p0, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    iget-object v3, p0, Lcom/android/tools/r8/internal/cu;->d:Ljava/util/LinkedHashMap;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
