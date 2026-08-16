.class public final Lcom/android/tools/r8/internal/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;


# instance fields
.field public a:Lcom/android/tools/r8/references/MethodReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/r4;->b()Lcom/android/tools/r8/internal/r4;

    return-void
.end method


# virtual methods
.method public final setMethodReference(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/g4;->a:Lcom/android/tools/r8/references/MethodReference;

    return-object p0
.end method

.method public final setMethodRuleInfo(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/r4;->a()Lcom/android/tools/r8/internal/r4$a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/r4$a;->a()Lcom/android/tools/r8/internal/r4;

    return-object p0
.end method
