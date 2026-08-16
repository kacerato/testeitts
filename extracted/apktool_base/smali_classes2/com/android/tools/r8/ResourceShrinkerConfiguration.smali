.class public Lcom/android/tools/r8/ResourceShrinkerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;
    }
.end annotation


# static fields
.field public static DEFAULT_CONFIGURATION:Lcom/android/tools/r8/ResourceShrinkerConfiguration;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/android/tools/r8/StringConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;-><init>(ZZLcom/android/tools/r8/StringConsumer;)V

    sput-object v0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->DEFAULT_CONFIGURATION:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    return-void
.end method

.method private constructor <init>(ZZLcom/android/tools/r8/StringConsumer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->a:Z

    .line 4
    iput-boolean p2, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->b:Z

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->c:Lcom/android/tools/r8/StringConsumer;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/I3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;-><init>(ZZLcom/android/tools/r8/StringConsumer;)V

    return-void
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;
    .locals 1

    new-instance p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;-><init>(Lcom/android/tools/r8/H3;)V

    return-object p0
.end method


# virtual methods
.method public getDebugConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->c:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public isOptimizedShrinking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->a:Z

    return v0
.end method

.method public isPreciseShrinking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->b:Z

    return v0
.end method
