.class public abstract Lcom/android/tools/r8/graph/H3$e;
.super Lcom/android/tools/r8/graph/H3$i;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/H3$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/H3$i;",
        "Lcom/android/tools/r8/graph/H3$d<",
        "Lcom/android/tools/r8/graph/g1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H3$k;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H3$k;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/H3$i;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/H3$e;->a:Lcom/android/tools/r8/graph/H3$k;

    return-void
.end method

.method public static p()Lcom/android/tools/r8/graph/H3$e;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/H3;->e:Lcom/android/tools/r8/graph/H3$c;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/H3;->e:Lcom/android/tools/r8/graph/H3$c;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lcom/android/tools/r8/graph/H3$e;
    .locals 0

    return-object p0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Lcom/android/tools/r8/graph/H3$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/graph/H3$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/graph/H3$j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/android/tools/r8/graph/H3$k;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$e;->a:Lcom/android/tools/r8/graph/H3$k;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$e;->a:Lcom/android/tools/r8/graph/H3$k;

    sget-object v1, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$i;)Lcom/android/tools/r8/graph/H3$i;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
