.class public Lcom/android/tools/r8/internal/DA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/vm;


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/SA;

.field public final c:Lcom/android/tools/r8/internal/IA;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/SA;Lcom/android/tools/r8/internal/IA;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/DA;->a:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/DA;->c:Lcom/android/tools/r8/internal/IA;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/xU;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/OA;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/OA;-><init>(Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/OA;->a(Lcom/android/tools/r8/internal/DA;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/SA;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/DA;->a:Z

    return v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DA;->c:Lcom/android/tools/r8/internal/IA;

    iget-object v0, v0, Lcom/android/tools/r8/internal/IA;->c:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/C2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/SA;->c()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/SA;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/SA;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DA;->c:Lcom/android/tools/r8/internal/IA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IA;->k()Z

    move-result v0

    return v0
.end method
