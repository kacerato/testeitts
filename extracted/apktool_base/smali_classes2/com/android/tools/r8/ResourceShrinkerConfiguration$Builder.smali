.class public Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ResourceShrinkerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/android/tools/r8/StringConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->a:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/H3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/ResourceShrinkerConfiguration;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    iget-boolean v1, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->a:Z

    iget-boolean v2, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->b:Z

    iget-object v3, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->c:Lcom/android/tools/r8/StringConsumer;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;-><init>(ZZLcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/I3;)V

    return-object v0
.end method

.method public disablePreciseShrinking()Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->b:Z

    return-object p0
.end method

.method public enableOptimizedShrinkingWithR8()Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->a:Z

    return-object p0
.end method

.method public setDebugConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ResourceShrinkerConfiguration$Builder;->c:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method
