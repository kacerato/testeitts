.class public abstract Lcom/android/tools/r8/naming/V$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/naming/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/naming/V$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
.end method

.method public abstract a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
.end method

.method public abstract a(Ljava/io/StringWriter;)V
.end method

.method public b()Lcom/android/tools/r8/naming/V$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/naming/V$c;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/naming/V$c;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract hashCode()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/V$c;->a(Ljava/io/StringWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
