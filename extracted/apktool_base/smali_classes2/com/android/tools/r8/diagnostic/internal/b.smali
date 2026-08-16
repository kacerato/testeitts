.class abstract Lcom/android/tools/r8/diagnostic/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/android/tools/r8/diagnostic/internal/b<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/diagnostic/DefinitionContext;
.end method

.method public a(Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/diagnostic/internal/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/b;->a:Lcom/android/tools/r8/origin/Origin;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/diagnostic/internal/b;->b()Lcom/android/tools/r8/diagnostic/internal/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()Lcom/android/tools/r8/diagnostic/internal/b;
.end method
