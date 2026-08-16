.class public abstract Lcom/android/tools/r8/graph/D3$a;
.super Lcom/android/tools/r8/graph/D3;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/Z5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/D3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/E0;",
        ">",
        "Lcom/android/tools/r8/graph/D3;",
        "Lcom/android/tools/r8/graph/Z5;"
    }
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/E0;

.field public final c:Lcom/android/tools/r8/graph/E0;

.field public final d:Lcom/android/tools/r8/graph/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/graph/D3;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/D3$a;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 4
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/graph/h1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/graph/G0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/graph/E0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/graph/Z5;
    .locals 0

    return-object p0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()Lcom/android/tools/r8/graph/D3$a;
    .locals 0

    return-object p0
.end method

.method public final n()Lcom/android/tools/r8/graph/D3$a;
    .locals 0

    return-object p0
.end method

.method public final p()Lcom/android/tools/r8/graph/F0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/android/tools/r8/graph/g1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
