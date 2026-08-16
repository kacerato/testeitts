.class public Lcom/android/tools/r8/internal/q4;
.super Lcom/android/tools/r8/internal/z4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/q4$a;
    }
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/A2;

.field public final c:Lcom/android/tools/r8/internal/r4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/r4;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/z4;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/q4;->d:Z

    if-nez v0, :cond_1

    iget v0, p2, Lcom/android/tools/r8/internal/r4;->a:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/q4;->b:Lcom/android/tools/r8/graph/A2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/q4;->c:Lcom/android/tools/r8/internal/r4;

    return-void
.end method

.method public static d()Lcom/android/tools/r8/internal/q4$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/q4$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/q4$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/internal/Xr0;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-interface {p2, p0}, Lcom/android/tools/r8/internal/Xr0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/io/OutputStreamWriter;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/q4;->c:Lcom/android/tools/r8/internal/r4;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/r4;->isHot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x48

    .line 5
    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/r4;->isStartup()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x53

    .line 7
    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/r4;->isPostStartup()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    .line 9
    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/q4;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lcom/android/tools/r8/graph/J2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/q4;->b:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/q4;

    iget-object v2, p0, Lcom/android/tools/r8/internal/q4;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/q4;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/q4;->c:Lcom/android/tools/r8/internal/r4;

    iget-object p1, p1, Lcom/android/tools/r8/internal/q4;->c:Lcom/android/tools/r8/internal/r4;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/r4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public f()Lcom/android/tools/r8/internal/r4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/q4;->c:Lcom/android/tools/r8/internal/r4;

    return-object v0
.end method

.method public final getReference()Lcom/android/tools/r8/graph/A2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/q4;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/q4;->c:Lcom/android/tools/r8/internal/r4;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/r4;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/q4;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->i0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
