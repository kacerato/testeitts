.class public final Lcom/android/tools/r8/shaking/T4;
.super Lcom/android/tools/r8/shaking/I1;
.source "SourceFile"


# static fields
.field public static final F:Lcom/android/tools/r8/shaking/T4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/R4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/R4;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/R4;->q()Lcom/android/tools/r8/shaking/R4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/R4;->p()Lcom/android/tools/r8/shaking/T4;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/shaking/T4;->F:Lcom/android/tools/r8/shaking/T4;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/R4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/I1;-><init>(Lcom/android/tools/r8/shaking/G1;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final c()Lcom/android/tools/r8/shaking/G1;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/R4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/R4;-><init>(Lcom/android/tools/r8/shaking/T4;)V

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Lcom/android/tools/r8/shaking/H1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/S4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/S4;-><init>(Lcom/android/tools/r8/shaking/T4;)V

    return-object v0
.end method

.method public final e(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
