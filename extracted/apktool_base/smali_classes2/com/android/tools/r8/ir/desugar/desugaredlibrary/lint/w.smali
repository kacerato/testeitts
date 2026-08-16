.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;

.field public final synthetic c:Ljava/io/PrintStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/w;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/w;->c:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/w;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/w;->c:Ljava/io/PrintStream;

    check-cast p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;->b(Ljava/io/PrintStream;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;)V

    return-void
.end method
