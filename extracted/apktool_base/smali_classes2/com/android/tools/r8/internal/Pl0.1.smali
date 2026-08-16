.class public final Lcom/android/tools/r8/internal/Pl0;
.super Lcom/android/tools/r8/internal/Jm0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Pl0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Pl0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pl0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Pl0;->c:Lcom/android/tools/r8/internal/Pl0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final I()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected value type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "short"

    return-object v0
.end method
