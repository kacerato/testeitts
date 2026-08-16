.class public final Lcom/android/tools/r8/internal/rv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/SD;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/rv0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/rv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rv0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final isUnknown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UnknownInstanceFieldInitializationInfo"

    return-object v0
.end method
