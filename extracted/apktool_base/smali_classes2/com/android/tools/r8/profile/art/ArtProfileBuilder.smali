.class public interface abstract Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addClassRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;",
            ">;)",
            "Lcom/android/tools/r8/profile/art/ArtProfileBuilder;"
        }
    .end annotation
.end method

.method public abstract addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/TextInputStream;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/profile/art/HumanReadableArtProfileParserBuilder;",
            ">;)",
            "Lcom/android/tools/r8/profile/art/ArtProfileBuilder;"
        }
    .end annotation
.end method

.method public abstract addMethodRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;",
            ">;)",
            "Lcom/android/tools/r8/profile/art/ArtProfileBuilder;"
        }
    .end annotation
.end method
