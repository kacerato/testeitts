.class public final Lcom/android/tools/r8/internal/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileBuilder;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/startup/StartupProfileBuilder;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/startup/StartupProfileBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/e4;->a:Lcom/android/tools/r8/startup/StartupProfileBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/f4;Lcom/android/tools/r8/startup/StartupClassBuilder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/f4;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 2
    invoke-interface {p1, p0}, Lcom/android/tools/r8/startup/StartupClassBuilder;->setClassReference(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/startup/StartupClassBuilder;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/g4;Lcom/android/tools/r8/startup/StartupMethodBuilder;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/internal/g4;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 4
    invoke-interface {p1, p0}, Lcom/android/tools/r8/startup/StartupMethodBuilder;->setMethodReference(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/startup/StartupMethodBuilder;

    return-void
.end method


# virtual methods
.method public final addClassRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/f4;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f4;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/e4;->a:Lcom/android/tools/r8/startup/StartupProfileBuilder;

    new-instance v1, Lcom/android/tools/r8/internal/k91;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/k91;-><init>(Lcom/android/tools/r8/internal/f4;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/startup/StartupProfileBuilder;->addStartupClass(Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;

    return-object p0
.end method

.method public final addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 0

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final addMethodRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/g4;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/g4;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/e4;->a:Lcom/android/tools/r8/startup/StartupProfileBuilder;

    new-instance v1, Lcom/android/tools/r8/internal/l91;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/l91;-><init>(Lcom/android/tools/r8/internal/g4;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/startup/StartupProfileBuilder;->addStartupMethod(Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;

    return-object p0
.end method
