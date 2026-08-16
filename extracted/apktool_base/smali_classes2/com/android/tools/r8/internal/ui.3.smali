.class public final Lcom/android/tools/r8/internal/ui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/tn0;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    sget-boolean v0, Lcom/android/tools/r8/internal/ui;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/rY;)[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/graph/n1;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ui;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ui;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
