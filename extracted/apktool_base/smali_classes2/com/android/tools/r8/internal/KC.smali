.class public final Lcom/android/tools/r8/internal/KC;
.super Lcom/android/tools/r8/internal/PC;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/KC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/KC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/KC;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/KC;->c:Lcom/android/tools/r8/internal/KC;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/PC;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/OC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/OC;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/OC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 1

    .line 2
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/PC;
    .locals 0

    return-object p0
.end method
