.class public Lcom/android/tools/r8/internal/SA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/C2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/AbstractCollection;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SA;->a:Lcom/android/tools/r8/internal/C2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/SA;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/SA;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/SA;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/SA;->e:Z

    check-cast p6, Ljava/util/AbstractCollection;

    iput-object p6, p0, Lcom/android/tools/r8/internal/SA;->f:Ljava/util/AbstractCollection;

    return-void
.end method

.method public static e()Lcom/android/tools/r8/internal/SA;
    .locals 8

    new-instance v7, Lcom/android/tools/r8/internal/SA;

    sget-object v1, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v6, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const-string v2, "unused"

    const-string v3, "testing"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/SA;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object v7
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/SA;->f:Ljava/util/AbstractCollection;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/SA;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/C2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/SA;->a:Lcom/android/tools/r8/internal/C2;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/SA;->b:Ljava/lang/String;

    return-object v0
.end method
