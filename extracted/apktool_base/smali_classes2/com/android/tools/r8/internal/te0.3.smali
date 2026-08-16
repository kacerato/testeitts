.class public abstract Lcom/android/tools/r8/internal/te0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/ue0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ue0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ue0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ue0;-><init>()V

    :goto_1
    sput-object v0, Lcom/android/tools/r8/internal/te0;->a:Lcom/android/tools/r8/internal/ue0;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/Wd;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/te0;->a:Lcom/android/tools/r8/internal/ue0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/Wd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Wd;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
