.class public final Lcom/android/tools/r8/internal/qt0;
.super Lcom/android/tools/r8/internal/Qm0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Fx0;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/qt0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/qt0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qt0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/qt0;->c:Lcom/android/tools/r8/internal/qt0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Fx0;)Lcom/android/tools/r8/internal/Fx0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/r0;)Ljava/lang/Object;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should only be used for verification"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "twoword"

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/internal/Fx0;
    .locals 0

    return-object p0
.end method

.method public final v()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
