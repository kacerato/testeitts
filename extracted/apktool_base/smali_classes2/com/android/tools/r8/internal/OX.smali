.class public abstract Lcom/android/tools/r8/internal/OX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/NX;

.field public static b:Lcom/android/tools/r8/internal/NX;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/NX;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/tools/r8/internal/NX;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lcom/android/tools/r8/internal/OX;->a:Lcom/android/tools/r8/internal/NX;

    return-void
.end method
