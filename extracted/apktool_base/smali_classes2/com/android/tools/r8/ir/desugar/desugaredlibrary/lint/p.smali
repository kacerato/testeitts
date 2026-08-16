.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lv$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/p;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/p;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    invoke-static {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->e(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V

    return-void
.end method
