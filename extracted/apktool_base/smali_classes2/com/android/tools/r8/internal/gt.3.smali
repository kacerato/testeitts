.class public Lcom/android/tools/r8/internal/gt;
.super Lcom/android/tools/r8/internal/Gx0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/gt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/gt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/gt;->c:Lcom/android/tools/r8/internal/gt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Gx0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic I()Lcom/android/tools/r8/internal/Gx0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ht;->d:Lcom/android/tools/r8/internal/ht;

    return-object v0
.end method

.method public final bridge synthetic J()Lcom/android/tools/r8/internal/Gx0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/gt;->c:Lcom/android/tools/r8/internal/gt;

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ht;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "double"

    return-object v0
.end method

.method public r()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/ht;

    return v0
.end method
