.class public final Lcom/android/tools/r8/internal/Lt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Lt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Lt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Lt;->b:Lcom/android/tools/r8/internal/Lt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
