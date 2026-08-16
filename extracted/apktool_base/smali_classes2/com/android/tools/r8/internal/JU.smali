.class public final Lcom/android/tools/r8/internal/JU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/HU;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/IU;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/HU;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/HU;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/JU;->b:Lcom/android/tools/r8/internal/HU;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/IU;

    :try_start_0
    const-string v1, "com.google.protobuf.G"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/iW;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/android/tools/r8/internal/JU;->b:Lcom/android/tools/r8/internal/HU;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/tools/r8/internal/iW;

    sget-object v3, Lcom/android/tools/r8/internal/Py;->a:Lcom/android/tools/r8/internal/Py;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/IU;-><init>([Lcom/android/tools/r8/internal/iW;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/android/tools/r8/internal/JU;->a:Lcom/android/tools/r8/internal/IU;

    return-void
.end method
