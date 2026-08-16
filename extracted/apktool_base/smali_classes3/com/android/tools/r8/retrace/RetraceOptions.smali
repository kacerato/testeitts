.class public Lcom/android/tools/r8/retrace/RetraceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
    }
.end annotation


# static fields
.field static final synthetic f:Z = true


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lcom/android/tools/r8/DiagnosticsHandler;

.field private final e:Lcom/android/tools/r8/retrace/MappingSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingSupplier;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->c:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->e:Lcom/android/tools/r8/retrace/MappingSupplier;

    .line 6
    iput-boolean p4, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->a:Z

    .line 7
    iput-boolean p5, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->b:Z

    .line 8
    sget-boolean p1, Lcom/android/tools/r8/retrace/RetraceOptions;->f:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingSupplier;ZZLcom/android/tools/r8/retrace/J;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/retrace/RetraceOptions;-><init>(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingSupplier;ZZ)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/retrace/j;

    invoke-direct {v0}, Lcom/android/tools/r8/retrace/j;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/retrace/RetraceOptions;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/RetraceOptions$Builder;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/retrace/RetraceOptions$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object v0
.end method

.method public static defaultRegularExpression()Ljava/lang/String;
    .locals 1

    const-string v0, "(?:.*?\\bat\\s+%c\\.%m\\s*\\(%S\\)\\p{Z}*(?:~\\[.*\\])?)|(?:(?:(?:%c|.*)?[:\"]\\s+)?%c(?:(:|]).*)?)"

    return-object v0
.end method


# virtual methods
.method public getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->d:Lcom/android/tools/r8/DiagnosticsHandler;

    return-object v0
.end method

.method public getMappingSupplier()Lcom/android/tools/r8/retrace/MappingSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/retrace/MappingSupplier<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->e:Lcom/android/tools/r8/retrace/MappingSupplier;

    return-object v0
.end method

.method public getRegularExpression()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isVerbose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->a:Z

    return v0
.end method

.method public isVerifyMappingFileHash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/retrace/RetraceOptions;->b:Z

    return v0
.end method
