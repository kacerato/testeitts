.class public Lcom/android/tools/r8/graph/O0$c;
.super Lcom/android/tools/r8/graph/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final d:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/O0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/O0$c;->d:Lcom/android/tools/r8/graph/L2;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/O0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/V0;)V
    .locals 0

    .line 4
    invoke-interface {p1, p0}, Lcom/android/tools/r8/graph/V0;->a(Lcom/android/tools/r8/graph/O0$c;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/graph/O0$c;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-interface {p3, p1}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$c;->d:Lcom/android/tools/r8/graph/L2;

    check-cast p1, Lcom/android/tools/r8/graph/O0$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O0$c;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$c;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$c;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public final n0()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/O0$c;->d:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_FILE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
