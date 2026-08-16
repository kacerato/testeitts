.class public final Lcom/android/tools/r8/internal/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/C7;

.field public final synthetic b:Lcom/android/tools/r8/internal/w4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/w4;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/v4;->b:Lcom/android/tools/r8/internal/w4;

    iput-object p2, p0, Lcom/android/tools/r8/internal/v4;->a:Lcom/android/tools/r8/internal/C7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setMethodReference(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/v4;->a:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setMethodRuleInfo(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/internal/r4;->a()Lcom/android/tools/r8/internal/r4$a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/r4$a;->a()Lcom/android/tools/r8/internal/r4;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/v4;->b:Lcom/android/tools/r8/internal/w4;

    iget-object v0, v0, Lcom/android/tools/r8/internal/w4;->a:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/r4;->isHot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/r4;->isStartup()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/r4;->isPostStartup()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x50

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :goto_1
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
