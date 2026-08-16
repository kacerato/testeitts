.class public Lcom/android/tools/r8/internal/MR;
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

    iput-object p1, p0, Lcom/android/tools/r8/internal/MR;->a:Lcom/android/tools/r8/internal/C2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/MR;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/MR;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/MR;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/MR;->e:Z

    check-cast p6, Ljava/util/AbstractCollection;

    iput-object p6, p0, Lcom/android/tools/r8/internal/MR;->f:Ljava/util/AbstractCollection;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/MR;
    .locals 8

    new-instance v7, Lcom/android/tools/r8/internal/MR;

    sget-object v1, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v6, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const-string v2, "j$/"

    const-string v3, "testing"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/MR;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object v7
.end method
