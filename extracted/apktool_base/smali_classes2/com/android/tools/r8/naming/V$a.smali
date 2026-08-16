.class public Lcom/android/tools/r8/naming/V$a;
.super Lcom/android/tools/r8/naming/V$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/naming/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/V$c;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/naming/V$a;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/naming/V$a;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/l1;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/naming/V$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
    .locals 2

    .line 9
    new-instance v0, Lcom/android/tools/r8/naming/V$a;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
    .locals 2

    .line 10
    new-instance v0, Lcom/android/tools/r8/naming/V$a;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/io/StringWriter;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v0, 0x20

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/naming/V$a;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/naming/V$a;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/naming/V$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/naming/V$a;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
