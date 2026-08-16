.class public Lcom/android/tools/r8/internal/CR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/vm;


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/MR;

.field public final c:Lcom/android/tools/r8/internal/IR;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/MR;Lcom/android/tools/r8/internal/IR;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/CR;->a:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/CR;->b:Lcom/android/tools/r8/internal/MR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/CR;->c:Lcom/android/tools/r8/internal/IR;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/xU;
    .locals 6

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/JR;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/JR;-><init>(Lcom/android/tools/r8/internal/ns0;)V

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Legacy to Human convert"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CR;->b()Z

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/CR;->b:Lcom/android/tools/r8/internal/MR;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/internal/MR;->a:Lcom/android/tools/r8/internal/C2;

    .line 8
    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/eS;->a(Lcom/android/tools/r8/graph/x0;ZLcom/android/tools/r8/internal/C2;)V

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/CR;->b:Lcom/android/tools/r8/internal/MR;

    .line 10
    invoke-static {v1}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/MR;)Lcom/android/tools/r8/internal/SA;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/android/tools/r8/internal/CR;->c:Lcom/android/tools/r8/internal/IR;

    .line 13
    invoke-virtual {v0, v3, p1, v2}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/IR;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CR;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    iget-object v4, v0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v5, "Legacy hacks"

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 16
    iget-object v4, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 17
    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/IA;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/android/tools/r8/internal/CR;->b:Lcom/android/tools/r8/internal/MR;

    .line 19
    iget-object v3, v3, Lcom/android/tools/r8/internal/MR;->c:Ljava/lang/String;

    .line 20
    iget-object v4, p1, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    .line 21
    iget-object v5, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v5

    .line 22
    invoke-static {v3, v4, v5, v2}, Lcom/android/tools/r8/internal/JR;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/IA$a;)V

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IA$a;->a()Lcom/android/tools/r8/internal/IA;

    move-result-object v3

    .line 24
    iget-object v2, v0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 25
    :cond_0
    iget-object v2, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/JR;->a(Lcom/android/tools/r8/internal/Ef0;)V

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/internal/JR;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/DA;

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CR;->b()Z

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/tools/r8/internal/DA;-><init>(Lcom/android/tools/r8/internal/SA;Lcom/android/tools/r8/internal/IA;Z)V

    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DA;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/CR;->b:Lcom/android/tools/r8/internal/MR;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/MR;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/CR;->a:Z

    return v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/C2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CR;->b:Lcom/android/tools/r8/internal/MR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/MR;->a:Lcom/android/tools/r8/internal/C2;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CR;->b:Lcom/android/tools/r8/internal/MR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/MR;->f:Ljava/util/AbstractCollection;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CR;->b:Lcom/android/tools/r8/internal/MR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/MR;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/graph/M2;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CR;->c:Lcom/android/tools/r8/internal/IR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/IR;->e:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/CR;->c:Lcom/android/tools/r8/internal/IR;

    iget-object v1, v0, Lcom/android/tools/r8/internal/IR;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/IR;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/IR;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
