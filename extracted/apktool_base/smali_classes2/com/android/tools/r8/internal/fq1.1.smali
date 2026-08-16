.class public final synthetic Lcom/android/tools/r8/internal/fq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/pn0;

.field public final synthetic b:Lcom/android/tools/r8/SourceFileEnvironment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/pn0;Lcom/android/tools/r8/SourceFileEnvironment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fq1;->a:Lcom/android/tools/r8/internal/pn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fq1;->b:Lcom/android/tools/r8/SourceFileEnvironment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fq1;->a:Lcom/android/tools/r8/internal/pn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fq1;->b:Lcom/android/tools/r8/SourceFileEnvironment;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/SourceFileProvider;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/pn0;->a(Lcom/android/tools/r8/SourceFileEnvironment;Ljava/lang/String;Lcom/android/tools/r8/SourceFileProvider;)V

    return-void
.end method
