.class public Lcom/github/javaparser/utils/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/utils/Log$Adapter;,
        Lcom/github/javaparser/utils/Log$SilentAdapter;,
        Lcom/github/javaparser/utils/Log$StandardOutStandardErrorAdapter;
    }
.end annotation


# static fields
.field private static CURRENT_ADAPTER:Lcom/github/javaparser/utils/Log$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/utils/Log$SilentAdapter;

    invoke-direct {v0}, Lcom/github/javaparser/utils/Log$SilentAdapter;-><init>()V

    sput-object v0, Lcom/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lcom/github/javaparser/utils/Log$Adapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/github/javaparser/utils/Log;->lambda$error$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b([Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/utils/Log;->lambda$makeFormattingSupplier$0([Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/Throwable;
    .locals 1

    invoke-static {}, Lcom/github/javaparser/utils/Log;->lambda$error$4()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/Log;->lambda$error$3(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/Log;->lambda$error$1(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3
    sget-object v0, Lcom/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lcom/github/javaparser/utils/Log$Adapter;

    new-instance v1, Lcom/github/javaparser/utils/o;

    invoke-direct {v1}, Lcom/github/javaparser/utils/o;-><init>()V

    invoke-static {p0, p1}, Lcom/github/javaparser/utils/Log;->makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/github/javaparser/utils/Log$Adapter;->error(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lcom/github/javaparser/utils/Log$Adapter;

    new-instance v1, Lcom/github/javaparser/utils/k;

    invoke-direct {v1, p0}, Lcom/github/javaparser/utils/k;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/github/javaparser/utils/l;

    invoke-direct {p0}, Lcom/github/javaparser/utils/l;-><init>()V

    invoke-interface {v0, v1, p0}, Lcom/github/javaparser/utils/Log$Adapter;->error(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "throwable",
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    sget-object v0, Lcom/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lcom/github/javaparser/utils/Log$Adapter;

    new-instance v1, Lcom/github/javaparser/utils/n;

    invoke-direct {v1, p0}, Lcom/github/javaparser/utils/n;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p2}, Lcom/github/javaparser/utils/Log;->makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/github/javaparser/utils/Log$Adapter;->error(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    sget-object v0, Lcom/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lcom/github/javaparser/utils/Log$Adapter;

    invoke-static {p0, p1}, Lcom/github/javaparser/utils/Log;->makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/github/javaparser/utils/Log$Adapter;->info(Ljava/util/function/Supplier;)V

    return-void
.end method

.method private static synthetic lambda$error$1(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "throwable"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$error$2()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$error$3(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "throwable"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$error$4()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$makeFormattingSupplier$0([Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "args",
            "format"
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/utils/m;

    invoke-direct {v0, p1, p0}, Lcom/github/javaparser/utils/m;-><init>([Ljava/util/function/Supplier;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setAdapter(Lcom/github/javaparser/utils/Log$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    sput-object p0, Lcom/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lcom/github/javaparser/utils/Log$Adapter;

    return-void
.end method

.method public static varargs trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    sget-object v0, Lcom/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lcom/github/javaparser/utils/Log$Adapter;

    invoke-static {p0, p1}, Lcom/github/javaparser/utils/Log;->makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/github/javaparser/utils/Log$Adapter;->trace(Ljava/util/function/Supplier;)V

    return-void
.end method
