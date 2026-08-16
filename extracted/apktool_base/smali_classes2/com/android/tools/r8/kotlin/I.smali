.class public Lcom/android/tools/r8/kotlin/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/BQ;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/BQ;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 29
    const-string v2, "<this>"

    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v2, Lcom/android/tools/r8/internal/i5;->Y:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x31

    aget-object v1, v1, v3

    invoke-virtual {v2, p0, v1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "reified"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/yQ;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/yQ;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 3
    const-string v2, "<this>"

    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/android/tools/r8/internal/i5;->V:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x2e

    aget-object v3, v1, v3

    invoke-virtual {v2, p0, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "nullable"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Lcom/android/tools/r8/internal/i5;->W:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x2f

    aget-object v3, v1, v3

    invoke-virtual {v2, p0, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "suspend"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/android/tools/r8/internal/i5;->X:Lcom/android/tools/r8/internal/Y6;

    const/16 v3, 0x30

    aget-object v1, v1, v3

    invoke-virtual {v2, p0, v1}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "definitelyNonNull"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/wQ;Lcom/android/tools/r8/internal/wQ;)V
    .locals 5

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 11
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/i5;->f:Lcom/android/tools/r8/internal/Y6;

    const/4 v3, 0x4

    aget-object v4, v0, v3

    invoke-virtual {v2, p0, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v4

    .line 13
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    aget-object v1, v0, v3

    invoke-virtual {v2, p1, v1, v4}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/i5;->Q:Lcom/android/tools/r8/internal/pu;

    const/16 v2, 0x29

    aget-object v3, v0, v2

    invoke-virtual {v1, p0, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ax0;

    .line 16
    const-string v4, "<set-?>"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    aget-object v2, v0, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 18
    sget-object v1, Lcom/android/tools/r8/internal/i5;->R:Lcom/android/tools/r8/internal/pu;

    const/16 v2, 0x2a

    aget-object v3, v0, v2

    invoke-virtual {v1, p0, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/HX;

    .line 19
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    aget-object v2, v0, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 21
    sget-object v1, Lcom/android/tools/r8/internal/i5;->S:Lcom/android/tools/r8/internal/Y6;

    const/16 v2, 0x2b

    aget-object v3, v0, v2

    invoke-virtual {v1, p0, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v3

    .line 22
    aget-object v2, v0, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 23
    sget-object v1, Lcom/android/tools/r8/internal/i5;->T:Lcom/android/tools/r8/internal/Y6;

    const/16 v2, 0x2c

    aget-object v3, v0, v2

    invoke-virtual {v1, p0, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v3

    .line 24
    aget-object v2, v0, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 25
    sget-object v1, Lcom/android/tools/r8/internal/i5;->U:Lcom/android/tools/r8/internal/Y6;

    const/16 v2, 0x2d

    aget-object v3, v0, v2

    invoke-virtual {v1, p0, v3}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result p0

    .line 26
    aget-object v0, v0, v2

    invoke-virtual {v1, p1, v0, p0}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    return-void
.end method
