.class public Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/tools/r8/keepanno/annotations/KeepForApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stack"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final stackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>([Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;->stackTraceElements:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public static createStack()Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;
    .locals 4

    invoke-static {}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle;->a()Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;->requiresStackInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;

    array-length v2, v0

    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;-><init>([Ljava/lang/StackTraceElement;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;-><init>([Ljava/lang/StackTraceElement;)V

    return-object v0
.end method


# virtual methods
.method public getStackTraceElements()[Ljava/lang/StackTraceElement;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;->stackTraceElements:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public toStringStackTrace()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;->stackTraceElements:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_0

    const-string v0, "Stack extraction not enabled."

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;->stackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, " at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
