.class public Lcom/android/tools/r8/shaking/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/w3;


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Ljava/util/List;

.field public final c:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/shaking/z3;->a:Ljava/nio/file/Path;

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/shaking/z3;->b:Ljava/util/List;

    .line 9
    iput-object v1, p0, Lcom/android/tools/r8/shaking/z3;->c:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/tools/r8/shaking/z3;->a:Ljava/nio/file/Path;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/shaking/z3;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/shaking/z3;->c:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/android/tools/r8/shaking/z3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/shaking/z3;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/z3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/z3;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/nio/file/Path;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/z3;->a:Ljava/nio/file/Path;

    return-object v0
.end method

.method public final get()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/z3;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "<no file>"

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/z3;->c:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method
