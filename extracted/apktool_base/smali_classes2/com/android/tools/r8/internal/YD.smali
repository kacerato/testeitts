.class public final Lcom/android/tools/r8/internal/YD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/SD;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/de;

.field public final b:Lcom/android/tools/r8/internal/pu0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/pu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/YD;->a:Lcom/android/tools/r8/internal/de;

    iput-object p2, p0, Lcom/android/tools/r8/internal/YD;->b:Lcom/android/tools/r8/internal/pu0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/YD;->a:Lcom/android/tools/r8/internal/de;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/YD;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YD;->b:Lcom/android/tools/r8/internal/pu0;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    sget-object p1, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    return-object p1

    .line 9
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/YD;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/YD;->a:Lcom/android/tools/r8/internal/de;

    if-eqz v0, :cond_2

    .line 11
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, p1, p3, p4, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/YD;->b:Lcom/android/tools/r8/internal/pu0;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v1, p1, p3, p4, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 16
    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/internal/YD;-><init>(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/pu0;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/YD;

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/YD;

    iget-object v1, p0, Lcom/android/tools/r8/internal/YD;->a:Lcom/android/tools/r8/internal/de;

    iget-object v2, p1, Lcom/android/tools/r8/internal/YD;->a:Lcom/android/tools/r8/internal/de;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/YD;->b:Lcom/android/tools/r8/internal/pu0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/YD;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v3
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/YD;->a:Lcom/android/tools/r8/internal/de;

    iget-object v1, p0, Lcom/android/tools/r8/internal/YD;->b:Lcom/android/tools/r8/internal/pu0;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "InstanceFieldTypeInitializationInfo"

    return-object v0
.end method
