.class public final enum Lcom/android/tools/r8/graph/p0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/graph/p0;

.field public static final enum c:Lcom/android/tools/r8/graph/p0;

.field public static final enum d:Lcom/android/tools/r8/graph/p0;

.field public static final enum e:Lcom/android/tools/r8/graph/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/p0;

    const/4 v1, 0x0

    const-string v2, "FIELD"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/p0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/p0;->b:Lcom/android/tools/r8/graph/p0;

    new-instance v0, Lcom/android/tools/r8/graph/p0;

    const/4 v1, 0x1

    const-string v2, "METHOD"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/p0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/p0;->c:Lcom/android/tools/r8/graph/p0;

    new-instance v0, Lcom/android/tools/r8/graph/p0;

    const/4 v1, 0x2

    const-string v2, "TYPE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/p0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/p0;->d:Lcom/android/tools/r8/graph/p0;

    new-instance v0, Lcom/android/tools/r8/graph/p0;

    const/4 v1, 0x3

    const-string v2, "PARAMETER"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/p0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/p0;->e:Lcom/android/tools/r8/graph/p0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/p0;
    .locals 0

    .line 5
    sget-object p0, Lcom/android/tools/r8/graph/p0;->c:Lcom/android/tools/r8/graph/p0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/p0;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/p0;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/graph/p0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/graph/p0;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/hf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/hf;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/if;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/if;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/jf;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/jf;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/p0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/p0;
    .locals 0

    .line 3
    sget-object p0, Lcom/android/tools/r8/graph/p0;->d:Lcom/android/tools/r8/graph/p0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/p0;
    .locals 0

    .line 4
    sget-object p0, Lcom/android/tools/r8/graph/p0;->b:Lcom/android/tools/r8/graph/p0;

    return-object p0
.end method
