.class public Lcom/android/tools/r8/internal/Xd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/g21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/g21;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Xd;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/references/ClassReference;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/tools/r8/references/ClassReference;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Xd;->a:Ljava/util/Comparator;

    return-object v0
.end method
