.class public final Lcom/android/tools/r8/shaking/k4;
.super Lcom/android/tools/r8/shaking/i4;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/shaking/k4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/k4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/k4;-><init>()V

    sput-object v0, Lcom/android/tools/r8/shaking/k4;->b:Lcom/android/tools/r8/shaking/k4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i4;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/android/tools/r8/shaking/k4;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lcom/android/tools/r8/shaking/k4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "..."

    return-object v0
.end method
